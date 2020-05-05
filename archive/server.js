const WebSocket = require('ws');
const { Client, Server } = require('node-osc');

const udpSend = new Client('127.0.0.1', 3333);
// TODO add a udpReceive (from the client.js) on port 7400
// NOTE that it shouldn't run if 'local' cli arg given
// const udpReceive = new Server(7400, '0.0.0.0');

const wss = new WebSocket.Server({ port: 8081 });
 
wss.on('connection', function connection(ws) {
  ws.on('message', function incoming(message) {
    // TODO : why isn't the data from the osc message parsing correctly?

    console.log(message)
    //  msg = JSON.parse(message.data)
    // let data = message[0]
    // console.log(message[1])
    // let data = message.toString()
    // let data = new Array()
    // data.push(message[0])
    // data.push(message[1])
    // data.push(message[2])
    // data.push(message[3])
    // data.push(message[4])
    // data.push(message[5])
    // data.push(message[6])
    // console.log('data from client', data)
    // // data.push(message.index, message.heartSignal, message.bpm, message.bpmDev, message.bvpa, message.gsrChange, message.gsrLoPass)
    // udpSend.send('/list', data, (err) => {
    //   if (err) console.error(err);
    //   // udpSend.close();
    // });

  });
 
  ws.send('Hello from the humble server.js');
});

process.on('uncaughtException', function (err) {
  console.log(err);
}); 





