// peer.js
// Usage: node peer.js <your-name> [signal-server-url]
// Example: node peer.js alice ws://localhost:8080
//          node peer.js bob   ws://localhost:8080

import nodeDataChannel from 'node-datachannel';
import WebSocket from 'ws';
import readline from 'readline';

const myId = process.argv[2];
const signalingUrl = process.argv[3] || 'ws://localhost:8080';

if (!myId) {
  console.error('Usage: node peer.js <your-name> [signal-server-url]');
  process.exit(1);
}

// nodeDataChannel.initLogger('Warning'); // uncomment for debug logs

const peers = new Map(); // id -> { pc, dc }

// ── Signaling ──────────────────────────────────────────────────────────────
const ws = new WebSocket(signalingUrl);

ws.on('open', () => {
  console.log(`Connected to signaling server as "${myId}"`);
  send({ type: 'register', id: myId });
});

ws.on('message', (data) => {
  let msg;
  try { msg = JSON.parse(data); } catch { return; }

  switch (msg.type) {
    case 'registered':
      console.log(`Registered. Waiting for peers...\n`);
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

    case 'offer':
      handleOffer(msg.from, msg.sdp);
      break;

    case 'answer':
      handleAnswer(msg.from, msg.sdp);
      break;

    case 'candidate':
      handleCandidate(msg.from, msg.candidate, msg.mid);
      break;
  }
});

ws.on('close', () => console.log('[signal] Disconnected from signaling server'));
ws.on('error', (e) => console.error('[signal] Error:', e.message));

function send(msg) {
  ws.send(JSON.stringify(msg));
}

// ── WebRTC ─────────────────────────────────────────────────────────────────
function createPeerConnection(remoteId) {
  const pc = new nodeDataChannel.PeerConnection(`${myId}->${remoteId}`, {
    iceServers: ['stun:stun.l.google.com:19302'],
  });

  pc.onLocalDescription((sdp, type) => {
    send({ type, to: remoteId, sdp });
  });

  pc.onLocalCandidate((candidate, mid) => {
    send({ type: 'candidate', to: remoteId, candidate, mid });
  });

  pc.onStateChange((state) => {
    console.log(`[webrtc] ${remoteId} state: ${state}`);
  });

  return pc;
}

function setupDataChannel(remoteId, dc) {
  const entry = peers.get(remoteId) ?? {};
  entry.dc = dc;
  peers.set(remoteId, entry);

  dc.onOpen(() => {
    console.log(`\n✓ Data channel open with ${remoteId}! Type a message and press Enter.\n`);
  });

  dc.onMessage((msg) => {
    console.log(`\n[${remoteId}]: ${msg}`);
    rl.prompt(true);
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
  console.log(`[webrtc] Received answer from ${remoteId}`);
  peers.get(remoteId)?.pc?.setRemoteDescription(sdp, 'answer');
}

function handleCandidate(remoteId, candidate, mid) {
  peers.get(remoteId)?.pc?.addRemoteCandidate(candidate, mid);
}

// ── CLI ────────────────────────────────────────────────────────────────────
const rl = readline.createInterface({ input: process.stdin, output: process.stdout });
rl.setPrompt(`[${myId}] `);
rl.prompt();

rl.on('line', (line) => {
  const text = line.trim();
  if (!text) { rl.prompt(); return; }

  let sent = 0;
  for (const [id, { dc }] of peers) {
    if (dc) {
      try { dc.sendMessage(text); sent++; }
      catch (e) { console.error(`Failed to send to ${id}:`, e.message); }
    }
  }

  if (sent === 0) console.log('(no connected peers yet)');
  rl.prompt();
});

rl.on('close', () => {
  console.log('\nBye!');
  process.exit(0);
});