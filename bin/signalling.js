// signal-server.js
// Usage: node signal-server.js [port]

// import pkg from 'ws';
// const { WebSocketServer } = pkg.Server;

import pkg from 'ws';
const WebSocketServer = pkg.Server;
const PORT = process.argv[2] || 8080;
const wss = new WebSocketServer({ port: PORT });

const peers = new Map();

console.log(`Signaling server running on ws://localhost:${PORT}`);

wss.on('connection', (ws) => {
  let myId = null;

  ws.on('message', (data) => {
    let msg;
    try { msg = JSON.parse(data); } catch { return; }

    if (msg.type === 'register') {
      myId = msg.id;
      peers.set(myId, ws);
      console.log(`[+] Peer registered: ${myId} (${peers.size} connected)`);
      ws.send(JSON.stringify({ type: 'registered', id: myId }));
      for (const [id] of peers) {
        if (id !== myId) ws.send(JSON.stringify({ type: 'peer-joined', id }));
      }
      broadcast({ type: 'peer-joined', id: myId }, myId);
      return;
    }

    if (msg.to && peers.has(msg.to)) {
      peers.get(msg.to).send(JSON.stringify({ ...msg, from: myId }));
    }
  });

  ws.on('close', () => {
    if (myId) {
      peers.delete(myId);
      console.log(`[-] Peer disconnected: ${myId}`);
      broadcast({ type: 'peer-left', id: myId }, myId);
    }
  });
});

function broadcast(msg, excludeId) {
  for (const [id, ws] of peers) {
    if (id !== excludeId) ws.send(JSON.stringify(msg));
  }
}