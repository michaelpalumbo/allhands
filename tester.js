

const { Client, Server } = require('node-osc');

const localSend = new Client('127.0.0.1', 7401);
    console.log('wspd udp tester\n\nplease ensure the app.js program is also running')
    // run the app in client mode
    
    let msgTiming = setInterval(myTimer, 1000);

    function myTimer() {
        let tts = (Math.random() * 127)
        console.log('sending OSC msg "/testmsg ' + tts + '"')
      localSend.send('/knob_2', tts, (err) => {
        if (err) console.error(err);
    }); 
    }
 
                
        
