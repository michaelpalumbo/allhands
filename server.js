// note: this version is for running allhands' server locally

const yargs = require('yargs/yargs')
const { hideBin } = require('yargs/helpers')
const argv = yargs(hideBin(process.argv)).argv
// alternative to setInterval:
var heartbeats = require('heartbeats');
// a heart that beats every 1 second.
var heart = heartbeats.createHeart(1000);

if(argv.host){
    host = argv.host
}
// we will now add a name to the address pattern of all local OSC messages that are to be sent over IP
let name;
if(argv.name){
    name = argv.name
}

let pings = {

}

let locations = {

}

let names = {

}
const WebSocket = require('ws');

const wss = new WebSocket.Server({ port: 8081 });

// wss.on('connection', function connection(ws) {
//   ws.on('message', function incoming(message) {
//     console.log('received: %s', message);
//   });

//   ws.send('something');
// });

wss.on('connection', function connection(ws, req, client) {
    let thisName
    
    console.log('new connection established ')

    // start the ping/pong for calculating round-trip timing
    // Alternative to setInterval
    heart.createEvent(1, function(count, last){
        let pingMsg = JSON.stringify({
            cmd: 'ping',
            data: Date.now()
        })
        ws.send(pingMsg)
        
        // let namesMsg = JSON.stringify({
        //     cmd: 'whosConnected',
        //     data: Date.now(),
        //     data: names
        // })
        // ws.send(namesMsg)
    });

    ws.on('message', function incoming(message) {
        msg = JSON.parse(message)
        // console.log(msg)

        switch (msg.cmd){
            // gather returning 'pong' time
            case 'thisMachine':
                thisName = name

            break
            case 'pong':
                let pongTime = Date.now() - msg.data
                pings[msg.name] = pongTime

                // names[name] = {ping: pongTime}

            break
            // in case you want to receive other data and route it elsewhere
            case 'OSC':
                /* in the cloud version, we don't want to  send OSC data locally because there's nothing on heroku for it
                localSend.send(msg.addressPattern, msg.typeTagString, (err) => {
                    if (err) console.error(err);
                });
                */

                // names[name][msg.addressPattern] = []

                    // now using a broadcast server
                console.log(msg)
                broadcast(JSON.stringify(msg))
                
            break;

        
            default:
                console.log('client sent message with unknown cmd: ' + msg)
                // ws.send('server received message but did not understand: ' +  msg)
            break;

        

        }
    });

    ws.on('close', function(code, reason) {
        /* commented out foor cloud-based version
        localSend.close();
        localReceive.close();
        */
    })
});
// we can use this if we want to send to multiple clients!
function broadcast(msg){
    wss.clients.forEach(function each(client) {
    if (client.readyState === WebSocket.OPEN) {
        client.send(msg);
    }
    });
}


