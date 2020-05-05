const WebSocket = require('ws');
const { Client, Server } = require('node-osc');
let ip = process.argv[2]
const ws = new WebSocket('ws://' + ip + ':8081');
 
ws.on('open', function open() {
  // ws.send('something');
});
 
ws.on('message', function incoming(data) {
  console.log(data);
});

ws.on('error', (err) => {
    console.log(err.message)
 });



/// UDP
// const client = new Client('127.0.0.1', 3333);
var udpReceive = new Server(7400, '0.0.0.0');
 
udpReceive.on('listening', () => {
  console.log('OSC Server is listening.')
})
 
udpReceive.on('message', (msg) => {
  msg.shift()
  console.log('data from 7400', msg)
  let array = [ msg[0], msg[1], msg[2], msg[3], msg[4], msg[5], msg[6] ]
  
  ws.send(array)
});
