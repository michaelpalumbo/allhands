// signal-server.js
// Run this once, accessible by both peers (or just on one machine for local testing)
// Usage: node signal-server.js [port]

const { WebSocketServer } = require('ws');

const PORT = process.argv[2] || 8080;
const wss = new WebSocketServer({ port: PORT });

const peers = new Map(); // id -> ws

console.log(`Signaling server running on ws://localhost:${PORT}`);

wss.on('connection', (ws) => {
  let myId = null;

  ws.on('message', (data) => {
    let msg;
    try { msg = JSON.parse(data); } catch { return; }

    // Register with an id
    if (msg.type === 'register') {
      myId = msg.id;
      peers.set(myId, ws);
      console.log(`[+] Peer registered: ${myId} (${peers.size} connected)`);
      ws.send(JSON.stringify({ type: 'registered', id: myId }));
      // Tell this peer about everyone else
      for (const [id] of peers) {
        if (id !== myId) {
          ws.send(JSON.stringify({ type: 'peer-joined', id }));
        }
      }
      // Tell everyone else about this peer
      broadcast({ type: 'peer-joined', id: myId }, myId);
      return;
    }

    // Relay a message to a specific peer
    if (msg.to && peers.has(msg.to)) {
      const target = peers.get(msg.to);
      target.send(JSON.stringify({ ...msg, from: myId }));
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