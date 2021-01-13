// note: this version is for running wspd's server as a cloud instance on heroku, so to push updates, use:
// git push heroku placeholder:master

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

const WebSocket = require('ws');
let ws; // keep this here

// run the serverconst WebSocket = require('ws');
const app = require('express')()
const http = require('http').createServer(app);;

let listenPort = (process.env.PORT || 8081)
const wss = new WebSocket.Server({ 'server': http, clientTracking: true });
http.listen(listenPort, function(){
})
wss.on('connection', function connection(ws, req, client) {

    console.log('new connection established ')

    // start the ping/pong for calculating round-trip timing
    // Alternative to setInterval
    heart.createEvent(1, function(count, last){
        let pingMsg = JSON.stringify({
            cmd: 'ping',
            data: Date.now()
        })
        ws.send(pingMsg)
    });

    ws.on('message', function incoming(message) {
        msg = JSON.parse(message)
        // console.log(msg)

        switch (msg.cmd){
            // gather returning 'pong' time

            case 'pong':
                let pongTime = Date.now() - msg.data
                pings[msg.name] = {latency: pongTime, unit: 'ms'}
                // let pongUpdate = JSON.stringify({
                //     cmd: 'pongTimes',
                //     data: pings
                // })
                // broadcast(pongUpdate)
                let ap = '/ping/' + msg.name + '/'
                let pingTime = {
                    // cmd allows us to send other types of messages, ask Michael for more info if curious!
                    cmd: 'OSC',
                    date: new Date().toUTCString(),
                    addressPattern: ap,
                    // this is the data!
                    typeTagString: pongTime,
                }
                broadcast(pingTime)
                // console.log('pings @ pong msg:', pings)
            break
            // in case you want to receive other data and route it elsewhere
            case 'OSC':
                /* in the cloud version, we don't want to  send OSC data locally because there's nothing on heroku for it
                localSend.send(msg.addressPattern, msg.typeTagString, (err) => {
                    if (err) console.error(err);
                });
                */


                // inform user
                // console.log('sending to remote:\n', message)
                // package data for the web, send it!
                // if(ws){
                    // now using a broadcast server
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


// periodically send out the global ping/pong times
function reportPings(){
    heart.createEvent(1, function(count, last){
        let pingReport = JSON.stringify({
            cmd: 'pingReport',
            data: pings
        })
        broadcast(pingReport)
        console.log(pingReport)
    });
}
// reportPings()

