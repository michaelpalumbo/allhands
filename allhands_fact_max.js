// this is the max/msp-node version, still in dev

// note: this version is for running wspd's server as a cloud instance on heroku, so to push updates, use:
// git push heroku placeholder:master

// const yargs = require('yargs/yargs')
// const { hideBin } = require('yargs/helpers')
// const argv = yargs(hideBin(process.argv)).argv
const Max = require('max-api')

const sortArray = require('sort-array')
// UDP send/receive
let localsend = null;
let localreceive = null;

let host = 'allhandsjs.herokuapp.com'

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


const publicIp = require('public-ip');
let publicIPv4;
let publicIPv6;
(async () => {
	publicIPv4 = await publicIp.v4()
	//=> '46.5.21.123'

	// publicIPv6 = await publicIp.v6()
	//=> 'fe80::200:f8ff:fe21:67cf'
})();
/* note: this removed for cloud version
if (mode === 'client' && !argv.host){
    console.log('error: client mode requires --host flag to specify server IP address\nexample:\n\nnode app.js --mode client --host localhost')
    process.exit()
}
*/

// ***** Local UDP Send & Receive Config ******* //
let localReceivePort;
let localSendPort;

const mode = 'client'
if (mode === 'client'){
    localReceivePort = 7404
    localSendPort = 7403
} else if (mode === 'listener'){
    // localReceivePort = 7404
    listenerModeSendPort = 7405
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
    


} else if (mode === 'client'){
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
            case 'locationReport':
                let points = Object.keys(msg.data)
                // Max.post(points)
                for(i=0;i<points.length;i++){
                    let thisPoint = points[i]
                    let point = msg.data[thisPoint]
                    let newTTS = [thisPoint, point.ip, point.latitude, point.longitude, point.timezone, point.continent_code, point.country.en]
                    //let newAP = points[i]
                    localSend.send('/iplocation', newTTS, (err) => {
                        if (err) console.error(err);
                    }); 
                    Max.outlet('/iplocation', newTTS)
                }
                

            break
            
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
                    Max.outlet(msg.addressPattern, msg.typeTagString)
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
                let pingDict = []
                Max.outlet('pings', msg.data)
                let delayTap = ''
                let counter = 60
                for(i=0;i<remotes.length;i++){
                    Max.outlet('pingTimes', msg.data)
                    // delayTap = delayTap + '-' + remotes[i] + '-' + msg.data[remotes[i]] 
                    counter++
                    counter++
                    counter++
                    counter++
                    let thisPing = {
                        name: remotes[i],
                        latency: msg.data[remotes[i]],
                        MIDI: counter
                    }
                    pingDict.push(thisPing)
                    // console.log(remotes[i], msg.data[remotes[i]])
                    let ap = '/latency/' + remotes[i]
                    let tts = msg.data[remotes[i]]
                    localSend.send(ap, tts, (err) => {
                        if (err) console.error(err);
                    }); 
                    if(name == remotes[i]){
                        Max.outlet('thisPing', tts)
                    }
                    sortArray(pingDict, {
                        by: 'latency',
                        order: 'desc'
                      })
                      

                    
                    
                    
                }

                sortArray(pingDict, {
                    by: 'latency',
                    order: 'desc'
                  })
                  
                  for(i=0;i<pingDict.length;i++){
                    delayTap = delayTap + '-' + pingDict[i].name + '-' +  pingDict[i].latency + '-' +  pingDict[i].MIDI
                    
                  }
                //delayTap = delayTap.toString()
                Max.outlet('delayTap', delayTap)

            break
            default:
                // inform user that unknown message commang used
                console.log('client sent message with unknown cmd: ' + msg.cmd)
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

} else if (mode === 'listener'){
    const localSend = new Client('127.0.0.1', listenerModeSendPort);
    console.log('Configure your local pd patch(es) to listen on UDP Port ' + listenerModeSendPort)
    // run the app in client mode
    // ***** Websocket ******* //
    // WebSocket that will automatically attempt to reconnect if the connection is closed, or if the remote server goes down
    const ReconnectingWebSocket = require('reconnecting-websocket');
    const serverIP = host
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
        console.log(`connection error: ${serverIP}\nNote: Please wait up to 20 seconds for the allhands server to wake up`);
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
                // send formatted OSC message locally (i.e. a pd patch)

                localSend.send(msg.addressPattern, msg.typeTagString, (err) => {
                    if (err) console.error(err);
                });  
                
             
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

            default:
                // inform user that unknown message commang used
                console.log('client sent message with unknown cmd: ' + msg.cmd)
            break;
        }
    });


    // Commented this out so that the 'listener' doesn't send data back into the network. we can revisit this another time, oc. 
    //  // ***** Local UDP-Receiver ******* //
    // // this is used by either mode!
    // let localReceivePort;
    // if(mode === 'server'){
    //     localReceivePort = 7402
    // } else if (mode === 'client'){
    //     localReceivePort = 7404
    // }
    // const localReceive = new Server(localReceivePort, '0.0.0.0');
    // // once running, inform user
    // localReceive.on('listening', () => {    
    //     console.log('Configure your local pd patch(es) to send on UDP Port ' + localReceivePort)
    // })
    // // handle message:  
    // localReceive.on('message', (msg) => {
    //     // validate correct OSC address pattern syntax
    //     // console.log(msg)
    //     if(msg[0].charAt(0) === '/'){
    //         // get the address pattern
    //         ap = msg[0]
    //         // trim the address pattern
    //         msg.shift()
    //         // construct object to send over websocket
    //         message = {
    //             // cmd allows us to send other types of messages, ask Michael for more info if curious!
    //             cmd: 'OSC',
    //             date: new Date().toUTCString(),
    //             addressPattern: ap,
    //             // this is the data!
    //             typeTagString: msg
    //         }
    //         // inform user
    //         // console.log('sending to remote:\n', message)
    //         // package data for the web, send it!
    //         // if(ws){
    //             ws.send(JSON.stringify(message))
    //         // }

    //     } else {
    //         // if incoming OSC message does not have an address pattern, refuse to handle it
    //         console.log('error, OSC Message must lead with an addressPattern\n\ni.e. /bioData')
    //     }
    // });

}



    else {
    // app needs to know what mode to run in
    console.log('error! first argument must be either \'client\' or \'server\'')
    // stop node process
    process.exit()
}

// TODO:
// Max.addHandler('sendMSG', (OSC_AP, OSC_Data) => {

// })

