const WebSocket = require('ws');

// alternative to setInterval:
var heartbeats = require('heartbeats');
// a heart that beats every 1 second.
var heart = heartbeats.createHeart(1000);

const wss = new WebSocket.Server({ port: 8080 });
let pings = {

}
wss.on('connection', function connection(ws, req, client) {

    heart.createEvent(1, function(count, last){
        console.log(Date.now());
        let pingMsg = JSON.stringify({
            cmd: 'ping',
            data: Date.now()
        })
        ws.send(pingMsg)
    });

  ws.on('message', function incoming(message) {
    let msg = JSON.parse(message)
    console.log(msg)
    
    switch(msg.cmd){
        case 'pong':
            let pongTime = Date.now() - msg.data
            pings[msg.name] = {latency: pongTime, unit: 'ms'}

            console.log(pings)
        break
    }
  });

//   ws.send('something');
});