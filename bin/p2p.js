

import nodeDataChannel from 'node-datachannel';
import WebSocket from 'ws';
import readline from 'readline';
import { Client, Server } from 'node-osc';
import cliProgress from 'cli-progress';

const myId = process.env.AH_NAME;

const LOCAL_RECEIVE_PORT = Number(process.env.AH_SEND_PORT);
const LOCAL_SEND_PORT    = Number(process.env.AH_RECEIVE_PORT);

// const signalingUrl = process.argv[3] || 'ws://allhands-stable.herokuapp.com';
const signalingUrl = 'ws://allhands-stable.herokuapp.com'

let printEnabled = true

if(process.argv[2] == 'Yes'){
  printEnabled = true
}



if (!myId) {
  console.error('Usage: node peer.js <your-name> [signal-server-url]');
  process.exit(1);
}

// const LOCAL_RECEIVE_PORT = 7403;  // inbound OSC from local apps
// const LOCAL_SEND_PORT    = 7404;  // outbound OSC to local apps

// nodeDataChannel.initLogger('Warning'); // uncomment for debug logs

const peers = new Map(); // id -> { pc, dc }

// ── OSC ────────────────────────────────────────────────────────────────────
const localSend = new Client('127.0.0.1', LOCAL_SEND_PORT);

const localReceive = new Server(LOCAL_RECEIVE_PORT, '0.0.0.0');

localReceive.on('listening', () => {
  console.log(`[osc] Receiving on port ${LOCAL_RECEIVE_PORT}, sending to port ${LOCAL_SEND_PORT}`);
});

localReceive.on('message', (msg) => {
  const addressPattern = msg[0];

  // OSC messages must start with /
  if (addressPattern?.charAt(0) !== '/') {
    console.log('[osc] Ignoring message with no address pattern');
    return;
  }

  // Prepend our name to the address pattern so receivers know who sent it
  const ap = '/' + myId + addressPattern;
  const typeTagString = msg.slice(1);
  if(printEnabled){
    console.log('[outgoing]', ap, typeTagString)
  }
  const message = {
    cmd: 'OSC',
    date: new Date().toUTCString(),
    addressPattern: ap,
    typeTagString,
  };

  // Broadcast to all connected peers over WebRTC
  broadcastToPeers(JSON.stringify(message));
});

// FIRST, WAKE UP THE SERVER
await connectWithRetry(signalingUrl);

// ── Signaling ──────────────────────────────────────────────────────────────
const ws = new WebSocket(signalingUrl);

ws.on('open', () => {
  console.log(`[signal] Connected as "${myId}"`);
  send({ cmd: 'register', id: myId });
});

ws.on('message', (data) => {
  let msg;
  try { msg = JSON.parse(data); } catch { return; }

  switch (msg.cmd) {
    case 'registered':
      console.log(`[signal] Registered. Waiting for peers...\n`);
      break;

    case 'peer-joined':
      console.log(`[signal] Peer joined: ${msg.id}`);
      if (myId > msg.id) {
        console.log(`[signal] I'm the caller, initiating to ${msg.id}...`);
        initiateTo(msg.id);
      }
      break;

    case 'peer-left':
      console.log(`[signal] Peer left: ${msg.id}`);
      peers.delete(msg.id);
      break;

    case 'offer':     handleOffer(msg.from, msg.sdp);                        break;
    case 'answer':    handleAnswer(msg.from, msg.sdp);                       break;
    case 'candidate': handleCandidate(msg.from, msg.candidate, msg.mid);     break;
  }
});

ws.on('close', () => console.log('[signal] Disconnected'));
ws.on('error', (e) => console.error('[signal] Error:', e.message));

function send(msg) {

  ws.send(JSON.stringify(msg));
}

// ── WebRTC ─────────────────────────────────────────────────────────────────
function createPeerConnection(remoteId) {
  const pc = new nodeDataChannel.PeerConnection(`${myId}->${remoteId}`, {
    iceServers: ['stun:stun.l.google.com:19302'],
  });

  pc.onLocalDescription((sdp, type) => send({ cmd: type, to: remoteId, sdp }));
  pc.onLocalCandidate((candidate, mid) => send({ cmd: 'candidate', to: remoteId, candidate, mid }));
  pc.onStateChange((state) => console.log(`[webrtc] ${remoteId} state: ${state}`));

  return pc;
}

function setupDataChannel(remoteId, dc) {
  const entry = peers.get(remoteId) ?? {};
  entry.dc = dc;
  peers.set(remoteId, entry);

  dc.onOpen(() => {
    console.log(`\n✓ Data channel open with ${remoteId}!\n`);
  });

  dc.onMessage((raw) => {
    let msg;
    try { msg = JSON.parse(raw); } catch {
      // plain text message
      console.log(`\n[${remoteId}]: ${raw}`);
      rl.prompt(true);
      return;
    }

    if (msg.cmd === 'OSC') {
      // Ignore our own messages if they somehow loop back
      const senderName = msg.addressPattern.split('/')[1];
      if (senderName === myId) return;

      console.log(`[incoming] ${msg.addressPattern}`, msg.typeTagString);

      // if(printEnabled){
      //   console.log('incoming:', msg.addressPattern, ...msg.typeTagString)
      // }
      // Forward to local apps via OSC
      localSend.send(msg.addressPattern, ...msg.typeTagString, (err) => {
        if (err) console.error('[osc] Send error:', err);
      });
    } else {
      // Plain chat message
      console.log(`\n[${remoteId}]: ${raw}`);
      rl.prompt(true);
    }
  });

  dc.onClosed(() => console.log(`[webrtc] Data channel closed with ${remoteId}`));
  dc.onError((e) => console.error(`[webrtc] Data channel error with ${remoteId}:`, e));
}

function initiateTo(remoteId) {
  const pc = createPeerConnection(remoteId);
  peers.set(remoteId, { pc });
  pc.onDataChannel((dc) => setupDataChannel(remoteId, dc));
  const dc = pc.createDataChannel('chat');
  setupDataChannel(remoteId, dc);
}

function handleOffer(remoteId, sdp) {
  console.log(`[webrtc] Received offer from ${remoteId}`);
  const pc = createPeerConnection(remoteId);
  peers.set(remoteId, { pc });
  pc.onDataChannel((dc) => setupDataChannel(remoteId, dc));
  pc.setRemoteDescription(sdp, 'offer');
}

function handleAnswer(remoteId, sdp) {
  peers.get(remoteId)?.pc?.setRemoteDescription(sdp, 'answer');
}

function handleCandidate(remoteId, candidate, mid) {
  peers.get(remoteId)?.pc?.addRemoteCandidate(candidate, mid);
}

function broadcastToPeers(data) {
  let sent = 0;
  for (const [id, { dc }] of peers) {
    if (dc) {
      try { dc.sendMessage(data); sent++; }
      catch (e) { console.error(`[webrtc] Failed to send to ${id}:`, e.message); }
    }
  }
  return sent;
}

// ── CLI ────────────────────────────────────────────────────────────────────
const rl = readline.createInterface({ input: process.stdin, output: process.stdout });
rl.setPrompt(`[${myId}] `);
rl.prompt();

rl.on('line', (line) => {
  const text = line.trim();
  if (!text) { rl.prompt(); return; }

  const sent = broadcastToPeers(text);
  if (sent === 0) console.log('(no connected peers yet)');
  rl.prompt();
});

rl.on('close', () => {
  localSend.close();
  localReceive.close();
  console.log('\nBye!');
  process.exit(0);
});


// -----

// wake the server first, then connect
async function connectWithRetry(url) {
  const bar = new cliProgress.SingleBar({}, cliProgress.Presets.shades_classic);
  bar.start(100, 0);
  let progress = 0;

  while (true) {
    try {
        await new Promise((resolve, reject) => {
            const testWs = new WebSocket(url);
            const timeout = setTimeout(() => { testWs.terminate(); reject(new Error('timeout')); }, 2000);
            testWs.on('open', () => { clearTimeout(timeout); testWs.close(); resolve(); });
            testWs.on('error', (e) => { clearTimeout(timeout); reject(e); });
        });
        bar.update(100);
        bar.stop();
        console.log('\nServer awake, connecting... (typically takes up to 20seconds)');
        return;
        } catch (e) {
        progress = Math.min(progress + 3, 90);
        bar.update(progress);
        await new Promise(r => setTimeout(r, 1000));
        }
    }
}