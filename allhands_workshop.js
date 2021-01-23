const Max = require('max-api')
const { Client, Server } = require('node-osc');
const WebSocket = require('ws');
const ReconnectingWebSocket = require('reconnecting-websocket');
const publicIp = require('public-ip');

const host = 'allhandsjs.herokuapp.com'
const serverIP = host
const serverPort = '8081';
const serverWSAddress = `ws://${serverIP}/${serverPort}`;
const localReceivePort = 7404
const localSendPort = 7403
let localSend = new Client('127.0.0.1', localSendPort);

let publicIPv4;
// let publicIPv6;
(async () => {
	publicIPv4 = await publicIp.v4()
	//=> '46.5.21.123'

	// publicIPv6 = await publicIp.v6()
	//=> 'fe80::200:f8ff:fe21:67cf'
})();

Max.post('IP:', publicIPv4)


console.log('Configure your local pd patch(es) to listen on UDP Port ' + localSendPort)
// we will now add a name to the address pattern of all local OSC messages that are to be sent over IP
let name;
if(process.argv[2]){
    name = process.argv[2]
}else{
    console.log('error: need to specify your name (one string, no spaces. i.e. steve')
    process.exit()
}
if(process.argv[3]){
    console.log('error: client name cannot include spaces.')
    process.exit()
}

let ws; // keep this here
// options for the reconnecting websocket
const rwsOptions = {
    // make rws use the webSocket module implementation
    WebSocket: WebSocket, 
    // ms to try reconnecting:
    connectionTimeout: 1000,
    //debug:true, 
}
// create a websocket
ws = new ReconnectingWebSocket(serverWSAddress, [], rwsOptions);
console.log('Note: Please wait up to 20 seconds for the allhands server to wake up`')
// if the server responds with an error
ws.addEventListener('error', () => {
    console.log(`connection error: ${serverIP}\nNote: Please wait up to 20 seconds for the allhands server to wake up`);
});
// on successful connection to server:
ws.addEventListener('open', () => {
    console.log (`connected to server at ${serverWSAddress}`)

    let thisMachineMsg = JSON.stringify({
        cmd: 'thisMachine',
        name: name,
        publicIPv4: publicIPv4,
        // publicIPv6: publicIPv6
    })

    ws.send(thisMachineMsg)
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
            // send formatted OSC message locally (i.e. a pd patch)
            // console.log(msg.addressPattern.split('/')[1])
            let APRoot = msg.addressPattern.split('/')[1]
            // Max.outlet(msg.addressPattern, msg.typeTagString)

            // if(APRoot == 'ping'){
            //     console.log('pingTime:', msg.typeTagString + 'ms')
            // }
            // prevent data loopback from server broadcast (i.e. we don't ewant to receive our own)
            if(APRoot != name){
                localSend.send(msg.addressPattern, msg.typeTagString, (err) => {
                    if (err) console.error(err);
                }); 
                Max.outlet('OSC', msg.addressPattern, msg.typeTagString)
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
            // console.log(msg.data)
            let remotes = Object.keys(msg.data)
            for(i=0;i<remotes.length;i++){
                Max.outlet('pingTimes', msg.data)
                // console.log(remotes[i], msg.data[remotes[i]])
                let ap = '/latency/' + remotes[i]
                let tts = msg.data[remotes[i]]
                localSend.send(ap, tts, (err) => {
                    if (err) console.error(err);
                }); 
                if(name == remotes[i]){
                    Max.outlet('thisPing', tts)
                }
                
                
                
            }

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
