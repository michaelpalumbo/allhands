#!/usr/bin/env node
const cliProgress = require('cli-progress');
const { Client, Server } = require('node-osc');
const WebSocket = require('ws');
const ReconnectingWebSocket = require('reconnecting-websocket');
const inquirer = require('inquirer');
const publicIp = require('public-ip');
var satelize = require('satelize');
const delay = require('delay');

//userconfig
const Conf = require('conf');
const config = new Conf();
// config.delete('a')
configChoiceList = ['Create New (or Edit) Config File']
// update the configuration filename list for the prompt, assuming a user has already set one or more up

let host;
let name;
let printIncoming = false;
let printOutgoing = false;
let localReceivePort = 7403
let localSendPort = 7404
let localWSstate = false;
let thisNode = {
  name: null,
  shareGPSData: true,
  dap: 'none'
}

let ws
let wss

(async () => {
  ip = await publicIp.v4()
})();

// first ask for config file
const configQuestion = [
  {
    type: 'rawlist',
    name: 'configChoice',
    message: 'Choose config file, or create a new configuration (type the number + hit Enter)',
    choices: configChoiceList.concat(Object.keys(config.store))
  },
  {
    type: 'input',
    name: 'createNewConfig',
    message: "Enter a name for this new configuration (or type existing name to change settings) + hit Enter.",
    when(answers) {
      return answers.configChoice == 'Create New (or Edit) Config File';
    },
  }
]



let configFileName = null
// now prompt for config file choice
function chooseConfig(){
  inquirer.prompt(configQuestion).then((answers) => {
    if(answers.configChoice === 'Create New (or Edit) Config File'){
      configFileName = answers.createNewConfig
      config.set(configFileName, {})
      console.log('\nCreating new configuration named: ' + configFileName + '\n\n')
      login()
    } else {
      configFileName = answers.configChoice
      let connectSettings = config.get(configFileName)
      host = connectSettings.host
      name = connectSettings.name
      printIncoming = connectSettings.printIncoming
      printOutgoing = connectSettings.printOutgoing
      localReceivePort = connectSettings.localReceivePort
      localSendPort = connectSettings.localSendPort
      localWSstate = connectSettings.localWSstate
      thisNode = connectSettings.thisNode
      tryConnect()
    }
  });
}

chooseConfig()

// if newconfig chosen, we'll use these questions:
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
    choices: ['Public', 'Secret Handshake', 'Cloud', 'Self-Hosted', 'localhost'],
  },
  {
    type: 'input',
    name: 'dap',
    message: 'Type a name for the secret handshake. If someone in your group made one, type it here.',
    validate(value) {
      const pass = value.match(
        /^[a-zA-Z0-9]+$/
      );
      if (pass) {
        return true;
      }

      return 'please do not use spaces for the secret handshake. try again';
    },
    when(answers) {
      return answers.serverType == 'Secret Handshake';
    },
  },
  
  {
    type: 'input',
    name: 'cloudAddress',
    message: "type the cloud server url. i.e. servername.herokuapp.com",
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
    choices: ['No (Default)', 'Yes'],
  },
  {
    type: 'rawlist',
    name: 'logOutgoing',
    message: 'Display outgoing data (what you are sending)?',
    choices: ['No (Default)', 'Yes'],
  },
  {
    type: 'rawlist',
    name: 'transmitJSON',
    message: 'Transmit JSON data locally?',
    choices: ['No (Default)', 'Yes'],
  },
  {
    type: 'rawlist',
    name: 'shareGPS',
    message: 'Opt-in to track and share GPS data with network?',
    choices: ['No (Default)', 'Yes'],
  },
];

const nameTakenPrompt = [
  {
    type: 'rawlist',
    name: 'nameTakenChoice',
    message: 'Your chosen name is in use by someone else on the network, choose next action',
    choices: ['Change Name (Default)', 'Keep Name (and collide data, get all experimental)'],
  },
  
];
function login(){
  inquirer.prompt(questions).then((answers) => {

    name = answers.name
    thisNode.name = name
    config.set(configFileName + '.name', name)
    config.set(configFileName + '.thisNode.name', name)
    // configure server address
    if(answers.serverType == 'Cloud'){
      host = `ws://${answers.cloudAddress}/8081`
    } else if(answers.serverType == 'Self-Hosted'){
      host = `ws://${answers.selfHostAddress}:8081`
      
    } else if(answers.serverType == 'Public' || answers.serverType == 'Secret Handshake'){
      host = `ws://allhands-stable.herokuapp.com/8081`
    } else if(answers.serverType == 'localhost'){
      host = `ws://localhost:8081`
    }
    config.set(configFileName + '.host', host)
    // if public room given, update its var
    if(answers.dap){
      thisNode.dap = answers.dap
      config.set(configFileName + '.thisNode.dap', dap)
    }
    // configure local OSC UDP ports
    if(answers.outgoingPort == 'Custom'){
        localReceivePort = answers.customOutgoingPort
    }
    config.set(configFileName + '.localReceivePort', localReceivePort)
    if(answers.incomingPort == 'Custom'){
        localSendPort = answers.customIncomingPort
    }
    config.set(configFileName + '.localSendPort', localSendPort)

    // set outgoing data logging
    if(answers.logOutgoing == 'Yes'){
        printOutgoing = true
    }
    config.set(configFileName + '.printOutgoing', printOutgoing)

    // set incoming data logging
    if(answers.logIncoming == 'Yes'){
        printIncoming = true
    }
    config.set(configFileName + '.printIncoming', printIncoming)

    // Run local ws server to pass all data via JSON
    if(answers.transmitJSON == 'Yes'){
      localWSstate = true
      localWebsocket()
    }
    config.set(configFileName + '.localWSstate', localWSstate)

    // opt-in to tracking and sharing GPS data
    if(answers.shareGPS == 'Yes'){
      thisNode.shareGPSData = false
      config.set(configFileName + '.thisNode.shareGPSData', thisNode.shareGPSData)

      
      satelize.satelize({ip: ip}, function(err, payload) {

        // no need to keep track of the ip
        
        delete payload.ip
        delete payload.continent_code
        delete payload.continent.de
        delete payload.continent.es
        delete payload.continent.fr
        delete payload.continent.ja
        delete payload.continent['pt-BR']
        delete payload.continent.ru
        delete payload.continent['zh-CN']
        delete payload.country_code
        delete payload.country.de
        delete payload.country.es
        delete payload.country.fr
        delete payload.country.ja
        delete payload.country['pt-BR']
        delete payload.country.ru
        delete payload.country['zh-CN']

        ip = null
        
        thisNode['location'] = payload
        config.set(configFileName + '.thisNode.location', payload)

      });


    } else {
      config.set(configFileName + '.thisNode.shareGPSData', false)
    }
    tryConnect()

  });
}

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
    
    // send thisNode object to the server for tracking
    let handShake = JSON.stringify({
      cmd: 'thisNode',
      date: Date.now(),
      data: thisNode
    })
    ws.send(handShake)
  });
  // on close:
  ws.addEventListener('close', () => {
      console.log("server connection closed, retrying...");
  });
  // handle messages
  ws.addEventListener('message', (data) => {
      let msg = JSON.parse(data.data);
      switch (msg.cmd){
        // if name is taken by someone else in the network, the server will prompt user for what to do next
        case 'nameTaken':
          console.log(data.data)

          inquirer.prompt(nameTakenPrompt).then((answers) => {
            if(answers.nameTakenChoice == 'Change Name (Default)'){
              
              (async () => {
                ws.close()
              
                await delay(1000);
              
                // Executed 100 milliseconds later
                login()
              })();              
              

              // close ws connect and restart login prompt
            } else {
              // send message to server and have server assign a unique ID to this instance of the name so that when they quit they are removed from the locations object
                    // send thisNode object to the server for tracking
              let handShake = JSON.stringify({
                cmd: 'doppelganger',
                date: Date.now(),
                data: thisNode
              })
              ws.send(handShake)
            }
            
          })
        break
          // in case you want to receive other data and route it elsewhere
          case 'OSC':

              // prevent data loopback from server broadcast (i.e. we don't ewant to receive our own)
              if(msg.addressPattern.split('/')[1] != name){
                // check if this message belongs to our room or user isn't using a room 
                if(thisNode.dap == msg.dap){
                  // send via osc
                  localSend.send(msg.addressPattern, msg.typeTagString, (err) => {
                    if (err) console.error(err);
                  }); 
                  if(printIncoming == true){
                      console.log('incoming: ', msg.addressPattern, msg.typeTagString)
                  }   
                  // if the local ws server is enabled at startup, pack the OSC message as a json object
                  if(localWSstate == true){
                    let apSplit = msg.addressPattern.split('/')
                    apSplit.shift()
                    
                    let oscObject = {
                      cmd: "OSC",
                      dap: thisNode.dap,
                      data: {},
                      date: Date.now(),
                    }
                    
                    // create a nested path from the addressPattern 
                    var createNestedObject = function( base, names, value ) {
                        // If a value is given, remove the last name and keep it for later:
                        var lastName = arguments.length === 3 ? names.pop() : false;
                    
                        // Walk the hierarchy, creating new objects where needed.
                        // If the lastName was removed, then the last object is not set yet:
                        for( var i = 0; i < names.length; i++ ) {
                            base = base[ names[i] ] = base[ names[i] ] || {};
                        }
                    
                        // If a value was given, set it to the last name:
                        if( lastName ) base = base[ lastName ] = value;
                    
                        // Return the last object in the hierarchy:
                        return base;
                    };
                    
                    let obj = {}; 
                    createNestedObject( obj, apSplit, msg.typeTagString )
                    // add nested path to outgoing osc object
                    oscObject.data = obj    
                    // send it to local apps!        
                    localBroadcast(JSON.stringify(oscObject))
                  }
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

          case "network":
            if(localWSstate == true){
              localBroadcast(data.data)
            }
            
            
          break

          // these are here to be ignored (lazy, i need to update the server to stop sending this)
          case "locationReport":
          case 'pingReport':
            break;
          case "pong":
            console.log(data.data)
            if(localWSstate == true){
              localBroadcast(data.data)
            }
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
            dap: thisNode.dap,
            date: new Date().toUTCString(),
            addressPattern: ap,
            // this is the data!
            typeTagString: msg,
        }
        // inform user
        // package data for the web, send it!
        // if(ws){
            ws.send(JSON.stringify(message))
        // }
        if(printOutgoing == true){
            console.log('outgoing: ', ap, msg)
        }  
    } else {
        // if incoming OSC message does not have an address pattern, refuse to handle it
        console.log('error, outgoing OSC Message must lead with an addressPattern\n\ni.e. /bioData')
    }
  });

}

function localWebsocket(){
  wss = new WebSocket.Server({ port: 8080 });

  wss.on('connection', function connection(localWS) {
    console.log('local websocket connected to an app on this machine')
    //TODO: Need to figure out how to send on 'ws' (the allhands ws) within this function. 
    /*
    localWS.on('message', function message(data) {
      
      // send incoming JSON control data out to allhands network
      msg = JSON.parse(data)
      console.log(msg)
      msg.dap = thisNode.dap;
      msg.cmd = 'OSC';
      msg.date = new Date().toUTCString();
      msg.addressPattern = '/' + name + msg.addressPattern
      console.log(msg)
      ws.send(JSON.stringify(msg))
        if(printOutgoing == true){
            console.log('outgoing: ', msg.addressPattern, msg.typeTagString)
        }  
    });
    */ 
  });
}

// local websocket send
function localBroadcast(msg){
  wss.clients.forEach(function each(client) {
  if (client.readyState === WebSocket.OPEN) {
      client.send(msg);
  }
  });
}

