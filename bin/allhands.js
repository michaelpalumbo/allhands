const cliProgress = require('cli-progress');
const { Client, Server } = require('node-osc');
const WebSocket = require('ws');
const ReconnectingWebSocket = require('reconnecting-websocket');

let host = 'allhandsjs.herokuapp.com'

// we will now add a name to the address pattern of all local OSC messages that are to be sent over IP
let name;

if(!process.argv[2]){
    console.log('error: need to specify your name when running the app (one string, no spaces. i.e. sakamoto)\n\nrun:\n\nallhands sakamoto')
    process.exit()
} else {
    name = process.argv[2]
}
// ***** Local UDP Send & Receive Config ******* //
let localReceivePort = 7403
let localSendPort = 7404


let ws; // keep this here

localSend = new Client('127.0.0.1', localSendPort);
console.log('Configure your local pd patch(es) to listen on UDP Port ' + localSendPort)
// run the app in client mode
// ***** Websocket ******* //
// WebSocket that will automatically attempt to reconnect if the connection is closed, or if the remote server goes down

const serverIP = host
const serverPort = '8081';
const serverWSAddress = `ws://${serverIP}/${serverPort}`;
// options for the reconnecting websocket
const rwsOptions = {
    // make rws use the webSocket module implementation
    WebSocket: WebSocket, 
    // ms to try reconnecting:
    connectionTimeout: 1000,
    //debug:true, 
}

// create a new progress bar instance and use shades_classic theme
const herokuWakeProgress = new cliProgress.SingleBar({}, cliProgress.Presets.shades_classic);

// create a websocket
// console.log(`attempting to connect to server at ${serverWSAddress}`)
ws = new ReconnectingWebSocket(serverWSAddress, [], rwsOptions);

// start the progress bar with a total value of 200 and start value of 0
herokuWakeProgress.start(100, 0);

// if the server responds with an error
ws.addEventListener('error', () => {
    console.log(`connection error: ${serverIP}`);
    herokuWakeProgress.update(10);
});
// on successful connection to server:
ws.addEventListener('open', () => {
    // stop the progress bar
    herokuWakeProgress.stop();
    console.log (`connected to server at ${serverWSAddress}`)
});
// on close:
ws.addEventListener('close', () => {
    console.log("server connection closed");
    // start the progress bar with a total value of 200 and start value of 0
    herokuWakeProgress.start(100, 0);
    // localSend.close();
    // localReceive.close();
});
// handle messages
ws.addEventListener('message', (data) => {
    let msg = JSON.parse(data.data);
    switch (msg.cmd){
        // in case you want to receive other data and route it elsewhere
        case 'OSC':

            // prevent data loopback from server broadcast (i.e. we don't ewant to receive our own)
            if(msg.addressPattern.split('/')[1] != name){
                localSend.send(msg.addressPattern, msg.typeTagString, (err) => {
                    if (err) console.error(err);
                }); 

            }

            
            
        break;

        case "ping":
            ws.send(JSON.stringify({
                cmd: 'pong',
                date: Date.now(),
                data: name
            }))
        break

        default:
            // inform user that unknown message commang used
            //console.log('client sent message with unknown cmd: ' + JSON.stringify(msg))
        break;
    }
});

    // ***** Local UDP-Receiver ******* //
// this is used by either mode!
// let localReceivePort;
// if(mode === 'server'){
//     localReceivePort = 7402
// } else if (mode === 'client'){
//     localReceivePort = 7404
// }
const localReceive = new Server(localReceivePort, '0.0.0.0');
// once running, inform user
localReceive.on('listening', () => {    
    console.log('Configure your local pd patch(es) to send on UDP Port ' + localReceivePort)
})
// handle message:  
localReceive.on('message', (msg) => {
    // validate correct OSC address pattern syntax
    // console.log(msg)
    if(msg[0].charAt(0) === '/'){
        // get the address pattern
        ap = '/' + name + msg[0]
        // trim the address pattern
        msg.shift()
        // construct object to send over websocket
        message = {
            // cmd allows us to send other types of messages, ask Michael for more info if curious!
            cmd: 'OSC',
            date: new Date().toUTCString(),
            addressPattern: ap,
            // this is the data!
            typeTagString: msg,
        }
        // inform user
        // console.log('sending to remote:\n', message)
        // package data for the web, send it!
        // if(ws){
            ws.send(JSON.stringify(message))
        // }

    } else {
        // if incoming OSC message does not have an address pattern, refuse to handle it
        console.log('error, OSC Message must lead with an addressPattern\n\ni.e. /bioData')
    }
});

