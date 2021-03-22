// Modules to control application life and create native browser window
const {app, BrowserWindow, ipcMain} = require('electron')
const path = require('path')
const cliProgress = require('cli-progress');
const { Client, Server } = require('node-osc');
const WebSocket = require('ws');
const ReconnectingWebSocket = require('reconnecting-websocket');
const {argv} = require('yargs')
const host = 'allhandsjs.herokuapp.com'

// we will now add a name to the address pattern of all local OSC messages that are to be sent over IP
let name;


// run a ws server to send to app (IPC messaging was too unreliable)
let localWS;
const wss = new WebSocket.Server({ port: 8082 });

wss.on('connection', function connection(ws) {
    localWS = ws
    localWS.on('message', function incoming(message) {
        console.log('received: %s', message);
    });
});

function sendToApp(channel, msg){

    localWS.send(JSON.stringify({
        cmd: channel,
        data: msg
    }))
}
function createWindow () {
  // Create the browser window.
  const mainWindow = new BrowserWindow({
        width: 500,
        height: 350,
        webPreferences: {
        allowRunningInsecureContent: false,
        contextIsolation: true,
        enableRemoteModule: false,
        nodeIntegration: false,
        sandbox: true,
        preload: path.join(app.getAppPath(), 'preload.js'),
        }
    })

    // and load the index.html of the app.
    mainWindow.loadFile('index.html')

    // Open the DevTools.
    // mainWindow.webContents.openDevTools()

    ipcMain.handle('setFullscreen', (event, flag) => {
        console.log(flag)
        if (mainWindow) {
        mainWindow.setFullScreen(flag)
        }
    })

 
    // remember to add a new .handle to the preload.js too!!
    ipcMain.handle('connect', (event, flag) => {
        name = flag
        
        //TODO add a text area where the incoming messages appear. add one also for the local outgoing messages
        // // ***** Local UDP Send & Receive Config ******* //
        let localReceivePort = 7403
        let localSendPort = 7404


        let ws; // keep this here

        localSend = new Client('127.0.0.1', localSendPort);

        // // run the app in client mode
        // // ***** Websocket ******* //
        // // WebSocket that will automatically attempt to reconnect if the connection is closed, or if the remote server goes down

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
        //herokuWakeProgress.start(100, 0);

        let progCount = 0
        sendToApp("connectProgress", progCount)

        // if the server responds with an error
        ws.addEventListener('error', () => {
            console.log(`\ncontacting allhands cloud host, progress:`);
            progCount = progCount + 5
            herokuWakeProgress.update(progCount);
            sendToApp("connectProgress", progCount)
        });
        // on successful connection to server:
        ws.addEventListener('open', () => {
            // stop the progress bar
            let finalCount = 100 - progCount
            //herokuWakeProgress.update(finalCount);
            //herokuWakeProgress.stop();
            //console.log (`connected to allhands network!`)
            sendToApp("toConsole", "connected to allhands network!")
            //console.log('\nlisten for OSC messages from allhands on port ' + localSendPort+ '\nsend OSC to allhands on port ' + localReceivePort)
            //console.log('\nto view startup options, quit and run again using:\nallhands --options')
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
                        sendToApp('OSC', [msg.addressPattern, msg.typeTagString])
                    }

                    if(argv.log == 'true'){
                        console.log(msg.addressPattern, msg.typeTagString)
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
                sendToApp('localOSC', [ap, msg])

                if(argv.local == 'true'){
                    console.log(ap, msg)
                }  
            } else {
                // if incoming OSC message does not have an address pattern, refuse to handle it
                console.log('error, outgoing OSC Message must lead with an addressPattern\n\ni.e. /bioData')
            }
        });




    })
}

// This method will be called when Electron has finished
// initialization and is ready to create browser windows.
// Some APIs can only be used after this event occurs.
app.on('ready', createWindow)

// Quit when all windows are closed.
app.on('window-all-closed', function () {
  // On OS X it is common for applications and their menu bar
  // to stay active until the user quits explicitly with Cmd + Q
  if (process.platform !== 'darwin') {
    app.quit()
  }
})

app.on('activate', function () {
  // On OS X it's common to re-create a window in the app when the
  // dock icon is clicked and there are no other windows open.
  if (BrowserWindow.getAllWindows().length === 0) {
    createWindow()
  }
})


////








