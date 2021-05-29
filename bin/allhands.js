#!/usr/bin/env node
const cliProgress = require('cli-progress');
const { Client, Server } = require('node-osc');
const WebSocket = require('ws');
const ReconnectingWebSocket = require('reconnecting-websocket');
const inquirer = require('inquirer');
console.log('allhands client startup sequence:');

const questions = [
  {
    type: 'input',
    name: 'name',
    message: "enter your name + hit Enter. do not use spaces",
    validate(value) {
      const pass = value.match(
        /^[a-zA-Z0-9]+$/
      );
      if (pass) {
        return true;
      }

      return 'enter your name. do not use spaces';
    },
  },
  {
    type: 'rawlist',
    name: 'serverType',
    message: 'Choose the server type (type the number + hit Enter)',
    choices: ['Public', 'Cloud', 'Self-Hosted'],
  },
  {
    type: 'input',
    name: 'cloudAddress',
    message: "type the cloud server url",
    when(answers) {
      return answers.serverType == 'Cloud';
    },
  },
  {
    type: 'input',
    name: 'selfHostAddress',
    message: "type the server address",
    when(answers) {
      return answers.serverType == 'Self-Hosted';
    },
  },
  {
    type: 'rawlist',
    name: 'outgoingPort',
    message: 'Choose the port that your application will use to send OSC to allhands (type the number + hit Enter)',
    choices: ['7403 (Default)', 'Custom'],
  },
  {
    type: 'input',
    name: 'customOutgoingPort',
    message: "Type your preferred port for outgoing data",
    when(answers) {
      return answers.outgoingPort == 'Custom';
    },
  },
  {
    type: 'rawlist',
    name: 'incomingPort',
    message: 'Choose the port that your application will use to receive OSC from allhands (type the number + hit Enter)',
    choices: ['7404 (Default)', 'Custom'],
  },
  {
    type: 'input',
    name: 'customIncomingPort',
    message: "Type your preferred port for incoming data",
    when(answers) {
      return answers.incomingPort == 'Custom';
    },
  },
  {
    type: 'rawlist',
    name: 'logIncoming',
    message: 'Display incoming data from other users?',
    choices: ['No', 'Yes'],
  },
  {
    type: 'rawlist',
    name: 'logOutgoing',
    message: 'Display outgoing data (what you are sending)?',
    choices: ['No', 'Yes'],
  },
];
let host;
let name;
let printIncoming;
let printOutgoing;
let localReceivePort = 7403
let localSendPort = 7404

inquirer.prompt(questions).then((answers) => {

    // configure server address
    if(answers.serverType == 'Cloud'){
        host = `ws://${answers.cloudAddress}/8081`
    } else if(answers.serverType == 'Self-Hosted'){
        host = `ws://${answers.selfHostAddress}:8081`
        console.log(host)
    } else if(answers.serverType == 'Public'){
        host = `ws://allhandsjs.herokuapp.com/8081`
    }

    // configure local OSC UDP ports
    if(answers.outgoingPort == 'Custom'){
        localReceivePort = answers.customOutgoingPort
    }
    if(answers.incomingPort == 'Custom'){
        localSendPort = answers.customIncomingPort
    }
    // set outgoing data logging
    if(answers.logOutgoing == 'Yes'){
        printOutgoing = true
    }
    // set incoming data logging
    if(answers.logIncoming == 'Yes'){
        printIncoming = true
    }
    name = answers.name
    
    tryConnect()
});

function tryConnect(){




    let ws; // keep this here

    localSend = new Client('127.0.0.1', localSendPort);

    // run the app in client mode
    // ***** Websocket ******* //
    // WebSocket that will automatically attempt to reconnect if the connection is closed, or if the remote server goes down
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
    // console.log(`attempting to connect to server at ${host}`)
    ws = new ReconnectingWebSocket(host, [], rwsOptions);

    // start the progress bar with a total value of 200 and start value of 0
    herokuWakeProgress.start(100, 0);
    let progCount = 0
    // if the server responds with an error
    ws.addEventListener('error', () => {
        console.log(`\n Connecting to selected allhands server, progress:`);
        progCount = progCount + 5
        herokuWakeProgress.update(progCount);

    });
    // on successful connection to server:
    ws.addEventListener('open', () => {
        // stop the progress bar
        let finalCount = 100 - progCount
        herokuWakeProgress.update(finalCount);
        herokuWakeProgress.stop();
        console.log (`connected to an allhands network!`)

        console.log('\nlisten for OSC messages from allhands on port ' + localSendPort+ '\nsend OSC to allhands on port ' + localReceivePort)

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
                    if(printIncoming == true){
                        console.log(msg.addressPattern, msg.typeTagString)
                    }   
                }


                
            break;

            case "ping":
                ws.send(JSON.stringify({
                    cmd: 'pong',
                    date: Date.now(),
                    data: name
                }))
            break

            case "locationReport":
            case "pingReport":
                // ignore these for now. 
            break

            default:
                // inform user that unknown message commang used
                console.log('other messages: ' + JSON.stringify(msg))
            break;
        }
    });

    
    const localReceive = new Server(localReceivePort, '0.0.0.0');
    // once running, inform user
    localReceive.on('listening', () => {    
    })
    // handle message:  
    localReceive.on('message', (msg) => {
        // validate correct OSC address pattern syntax
        
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
            if(printOutgoing == true){
                console.log(ap, msg)
            }  
        } else {
            // if incoming OSC message does not have an address pattern, refuse to handle it
            console.log('error, outgoing OSC Message must lead with an addressPattern\n\ni.e. /bioData')
        }
    });

}