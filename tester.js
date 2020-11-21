localReceivePort = 7404
localSendPort = 7404

const { Client, Server } = require('node-osc');

const localSend = new Client('127.0.0.1', 7404);
    console.log('wspd udp tester\n\nplease ensure the app.js program is also running')
    // run the app in client mode
    
    let msgTiming = setInterval(myTimer, 1000);

    function myTimer() {
        let tts = Math.random()
        console.log('sending OSC msg "/testmsg ' + tts + '"')
      localSend.send('/testmsg', tts, (err) => {
        if (err) console.error(err);
    }); 
    }
 
                
        
