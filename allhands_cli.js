//TODO add a wait bar to indicate that the heroku server is still waking up, 
//TODO otherwise people will think its failing

const yargs = require('yargs/yargs')


let host = 'allhandsjs.herokuapp.com'

// we will now add a name to the address pattern of all local OSC messages that are to be sent over IP
let name;
if(process.argv[2]){
    name = process.argv[2]
}else{
    console.log('error: need to specify your name when running the app (one string, no spaces. i.e. sakamoto)\n\nrun:\n\nallhands yourname')
    process.exit()
}
if(process.argv[3]){
    console.log('error: client name cannot include spaces.')
    process.exit()
}

// ***** Local UDP Send & Receive Config ******* //

const localReceivePort = 7403
const localSendPort = 7404

// open sound control lib
const { Client, Server} = require('node-osc');
const WebSocket = require('ws');
let ws; // keep this here

localSend = new Client('127.0.0.1', localSendPort);
console.log('Configure your local pd patch(es) to listen on UDP Port ' + localSendPort)
// run the app in client mode
// ***** Websocket ******* //
// WebSocket that will automatically attempt to reconnect if the connection is closed, or if the remote server goes down
const ReconnectingWebSocket = require('reconnecting-websocket');
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

// create a websocket
// console.log(`attempting to connect to server at ${serverWSAddress}`)
ws = new ReconnectingWebSocket(serverWSAddress, [], rwsOptions);

// if the server responds with an error
ws.addEventListener('error', () => {
    console.log(`connection error: ${serverIP}`);
});
// on successful connection to server:
ws.addEventListener('open', () => {
    console.log (`connected to server at ${serverWSAddress}`)
});
// on close:
ws.addEventListener('close', () => {
    console.log("server connection closed");
    // localSend.close();
    // localReceive.close();
});
// handle messages
ws.addEventListener('message', (data) => {
    let msg = JSON.parse(data.data);
    // console.log(msg)
    switch (msg.cmd){
        // in case you want to receive other data and route it elsewhere
        case 'OSC':
            // pass formatted OSC message to a local udp port (i.e. in a pd patch)
            let APRoot = msg.addressPattern.split('/')[1]

            // prevent data loopback from server broadcast (i.e. we don't ewant to receive our own)
            if(APRoot != name){
                localSend.send(msg.addressPattern, msg.typeTagString, (err) => {
                    if (err) console.error(err);
                }); 
            }
 
        break;
        // respond to ping from server with a pong
        case 'ping':
            let pong = JSON.stringify({
                cmd: 'pong',
                data: msg.data,
                name: name
            })
            ws.send(pong)
            // console.log(pong)
        break
        case 'pingReport':
            // this is important, but we might not need it in the npm module. or at least, only make it
            // able to be activated using a cli yarg

            // let remotes = Object.keys(msg.data)
            // for(i=0;i<remotes.length;i++){
            //     console.log(remotes[i], msg.data[remotes[i]])
            //     let ap = '/latency/' + remotes[i]
            //     let tts = msg.data[remotes[i]]
            //     localSend.send(ap, tts, (err) => {
            //         if (err) console.error(err);
            //     }); 
            // }

        break

        case 'locationReport':
            // ignore this.
        break
        default:
            // inform user that unknown message commang used
            console.log('client sent message with unknown cmd: ' + msg.cmd)
        break;
    }
});


const localReceive = new Server(localReceivePort, '0.0.0.0');
// once running, inform user
localReceive.on('listening', () => {    
    console.log('Configure your local pd patch(es) to send on UDP Port ' + localReceivePort)
})

console.log('')
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

