## wspd (websocket 4 puredata)

**For the sake of formatting, I highly recommend reading this document at** https://github.com/michaelpalumbo/wspd/blob/placeholder/README.md

This app acts as a bridge between multiple computers over the web, enables very fast transmission of controller data between, for example, two puredata patches. 

Basically, you run this program, and then with whatever software you're using to send/receive Open Sound Control messages, have it send on port 7404, and listen on port 7403.

Since first starting the code, it's become a lot more general than only being used for puredata, but I didn't bother changing the name of the repository!

### Instructions
1. Install nodejs
2. Download the latest release of this code, making sure its the 'placeholder' version: https://github.com/michaelpalumbo/wspd/releases
3. Open terminal, cd into the downloaded folder 'wspd' (the rest of this readme assumes that you're working from this directory) 
4. verify nodejs is installed:

```shell
node -v
```

5. might need to install dependencies:

```shell
npm install
```


### Usage

1. in terminal, type 
```shell
node app.js --mode client --name yournamewithnospaces
```

and then hit enter to start the program

2. If it is running correctly, the terminal should report the following:

```shell
Configure your local program(s) to listen on UDP Port 7403
Configure your local program(s) to send on UDP Port 7404
connected to server at ws://evening-retreat-29342.herokuapp.com/8081
```

3. You should test to make sure the program is sending/receiving data. Open a second terminal window, and make sure it is also pointed at the wspd directory. Then run 

```shell
node tester.js
```

This program will send data over the UDP port 7404 to the app.js program, which will then send data over the internet to the server. The server is currently written to broadcast all received messages back to each app.js instance. So, check the first terminal window where youu're running app.js and make sure it is printing data. It should look something like this:

```JSON
{
  cmd: 'OSC',
  date: 'Sat, 21 Nov 2020 22:59:45 GMT',
  addressPattern: '/michael/testmsg',
  typeTagString: [ 0.01821008510887623 ]
}
```

### OSC Syntax
The nodejs app assumes that all incoming data on UDP follows the OSC format of an Address Pattern followed by Type Tag String. Examples:

- /index 3
- /position 0.3 0.6 0.8
- /msg hello world

If you do not supply an address pattern using the '/', the app will ignore the message. Address patterns can have multiple routes, i.e. /sound/adsr/a