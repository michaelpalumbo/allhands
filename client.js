const WebSocket = require('ws');
let name = 'michael'
const ws = new WebSocket('ws://localhost:8080');

ws.on('open', function open() {
});

ws.on('message', function incoming(data) {
  let msg = JSON.parse(data)
  console.log(msg)
  switch(msg.cmd){
      case 'ping':
        let pong = JSON.stringify({
            cmd: 'pong',
            data: msg.data,
            name: name
        })
        ws.send(pong)
      break
  }
});