const WebSocket = require('ws');
const { Client, Server } = require('node-osc');
let ip = process.argv[2]

if(!ip){
  console.log('error! Server IP not provided as first argument\n\ni.e. node client.js localhost')
  process.exit()
}
const ws = new WebSocket('ws://' + ip + ':8081');
 
ws.on('open', function open() {
  // ws.send(['something']);
});
 
ws.on('message', function incoming(data) {
  console.log(data);
});

ws.on('error', (err) => {
    console.log(err.message)
 });



/// UDP
// TODO add a udpSend (from the client.js) on port 7400
// NOTE that it shouldn't run if 'local' cli arg given
// const udpSend = new Client('127.0.0.1', 3333);
const udpReceive = new Server(7400, '0.0.0.0');
 
udpReceive.on('listening', () => {
  console.log('OSC Server is listening.')
})

let data = {
  index: null,
  heartSignal: null,
  bpm: null,
  bpmChange: null,
  bvpa: null,
  gsr: null,
  gsrLoPass: null,
}
udpReceive.on('message', (msg) => {
  msg.shift()
  data.index = msg[0]
  data.heartSignal = msg[1]
  let output = JSON.stringify(data)
  console.log('sending to remote: ', data)
  ws.send(output)
  console.log('data from 7400', msg[0], msg[5])
  let array = [ msg[0], msg[1], msg[2], msg[3], msg[4], msg[5], msg[6] ]
  console.log(array)
  // ws.send(array)
});
