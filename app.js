// this script runs at either side

// const argv = require('yargs/yargs')

// console.log(argv.listener)
// it's function as either a server or client is determined by a cli arg
console.log(process.argv[2] + ' mode')

const mode = process.argv[2]
if (mode === 'client' && !process.argv[3]){
    console.log('error: client mode requires a 2nd argument to specify server IP address\nexample:\n\nnpm start client localhost')
    process.exit()
}
// ***** Local UDP Send & Receive Config ******* //
let localReceivePort;
let localSendPort;
if(mode === 'server'){
    localReceivePort = 7402
    localSendPort = 7401
} else if (mode === 'client'){
    localReceivePort = 7404
    localSendPort = 7403
}

// ***** Local UDP-Sender ******* //
// this is used by either mode!
function init(){
    
}



// both modes require these libs
const { Client, Server } = require('node-osc');
const WebSocket = require('ws');
let ws; // keep this here

if (mode === "server"){
    
    // run the serverconst WebSocket = require('ws');
    const app = require('express')()
    const http = require('http').createServer(app);;

    let listenPort = (process.env.PORT || 8081)
    const wss = new WebSocket.Server({ 'server': http, clientTracking: true });
    http.listen(listenPort, function(){
    })
    wss.on('connection', function connection(ws, req, client) {

    console.log('new connection established ')
    const localSend = new Client('127.0.0.1', localSendPort);
    console.log('Configure your local pd patch(es) to listen on UDP Port ' + localSendPort)
 
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
            ap = msg[0]
            // trim the address pattern
            msg.shift()
            // construct object to send over websocket
            let broadcastMsg = JSON.stringify({
                // cmd allows us to send other types of messages, ask Michael for more info if curious!
                // now we're using the broadcast server, so instead of only sending to just jen, send to all connected clients:
                cmd: 'OSC',
                sender: 'erin',
                date: new Date().toUTCString(),
                addressPattern: ap,
                // this is the data!
                typeTagString: msg
            })
            // inform user
            // console.log('sending to remote:\n', message)
            // package data for the web, send it!
            // if(ws){
                //ws.send(JSON.stringify(message))
            broadcast(broadcastMsg)
            // }

        } else {
            // if incoming OSC message does not have an address pattern, refuse to handle it
            console.log('error, OSC Message must lead with an addressPattern\n\ni.e. /bioData')
        }
    });

    
    ws.on('message', function incoming(message) {
        msg = JSON.parse(message)
        // console.log(msg)

        // broadcast client's (jen's, for now) data to other clients:
        msg['sender'] = 'jen'

        
        broadcast(JSON.stringify(msg))

        switch (msg.cmd){
            // in case you want to receive other data and route it elsewhere
            case 'OSC':
                localSend.send(msg.addressPattern, msg.typeTagString, (err) => {
                    if (err) console.error(err);
                });
                
            break;

        
            default:
                console.log('client sent message with unknown cmd: ' + msg)
                // ws.send('server received message but did not understand: ' +  msg)
            break;

        

        }
    });

    ws.on('close', function(code, reason) {
        localSend.close();
        localReceive.close();
    })
    });
    // we can use this if we want to send to multiple clients!
    function broadcast(msg){
        // note: for now, Jen will be the only client who is sending data.
        wss.clients.forEach(function each(client) {
        if (client.readyState === WebSocket.OPEN) {
            client.send(msg);
        }
        });
    }

   



} else if (mode === 'client'){
    const localSend = new Client('127.0.0.1', localSendPort);
    console.log('Configure your local pd patch(es) to listen on UDP Port ' + localSendPort)
    // run the app in client mode
    // ***** Websocket ******* //
    // WebSocket that will automatically attempt to reconnect if the connection is closed, or if the remote server goes down
    const ReconnectingWebSocket = require('reconnecting-websocket');
    const serverIP = process.argv[3]
    const serverPort = '8081';
    const serverWSAddress = `ws://${serverIP}:${serverPort}`;
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
        localSend.close();
        localReceive.close();
    });
    // handle messages
    ws.addEventListener('message', (data) => {
        let msg = JSON.parse(data.data);
        // console.log(msg)
        switch (msg.cmd){
            // in case you want to receive other data and route it elsewhere
            case 'OSC':
                // send formatted OSC message locally (i.e. a pd patch)
                localSend.send(msg.addressPattern, msg.typeTagString, (err) => {
                    if (err) console.error(err);
                });               
            break;

            default:
                // inform user that unknown message commang used
                console.log('client sent message with unknown cmd: ' + msg)
            break;
        }
    });

     // ***** Local UDP-Receiver ******* //
    // this is used by either mode!
    let localReceivePort;
    if(mode === 'server'){
        localReceivePort = 7402
    } else if (mode === 'client'){
        localReceivePort = 7404
    }
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
            ap = msg[0]
            // trim the address pattern
            msg.shift()
            // construct object to send over websocket
            message = {
                // cmd allows us to send other types of messages, ask Michael for more info if curious!
                cmd: 'OSC',
                date: new Date().toUTCString(),
                addressPattern: ap,
                // this is the data!
                typeTagString: msg
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

} else if (mode === 'listener'){
    const localSend = new Client('127.0.0.1', localSendPort);
    console.log('Configure your local pd patch(es) to listen on UDP Port ' + localSendPort)
    // run the app in listener mode, which only receives data, does not send, AND needs to route based on messages from either jen or erin
    // ***** Websocket ******* //
    // WebSocket that will automatically attempt to reconnect if the connection is closed, or if the remote server goes down
    const ReconnectingWebSocket = require('reconnecting-websocket');
    const serverIP = process.argv[3]
    const serverPort = '8081';
    const serverWSAddress = `ws://${serverIP}:${serverPort}`;
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
        localSend.close();
        localReceive.close();
    });
    // handle messages
    ws.addEventListener('message', (data) => {
        let msg = JSON.parse(data.data);
        // console.log(msg)
        switch (msg.cmd){
            // in case you want to receive other data and route it elsewhere
            case 'OSC':
                // send formatted OSC message locally (i.e. a pd patch)
                localSend.send(msg.addressPattern, msg.typeTagString, (err) => {
                    if (err) console.error(err);
                });               
            break;

            default:
                // inform user that unknown message commang used
                console.log('client sent message with unknown cmd: ' + msg)
            break;
        }
    });

     // ***** Local UDP-Receiver ******* //
    // this is used by either mode!
    let localReceivePort;
    if(mode === 'server'){
        localReceivePort = 7402
    } else if (mode === 'client'){
        localReceivePort = 7404
    }
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
            ap = msg[0]
            // trim the address pattern
            msg.shift()
            // construct object to send over websocket
            message = {
                // cmd allows us to send other types of messages, ask Michael for more info if curious!
                cmd: 'OSC',
                date: new Date().toUTCString(),
                addressPattern: ap,
                // this is the data!
                typeTagString: msg
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

} else {
    // app needs to know what mode to run in
    console.log('error! first argument must be either \'client\' or \'server\'')
    // stop node process
    process.exit()
}



