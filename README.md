*NOTE As of Jan 6 2021: project name changed from wspd to 'allhands'. In the process of resolving any conflicts as result of the name change. for now, see the [releases](https://github.com/michaelpalumbo/allhands/releases) page*

**This document is written in markdown, so I highly recommend reading it in the browser at this link:** https://github.com/michaelpalumbo/allhands/README.md

This app acts as a bridge between multiple computers over the web, enables very fast transmission of controller data between, for example, a puredata patch on one computer, and touchdesigner on the other. 

Basically, you run this program, and then with whatever software you're using to send/receive Open Sound Control (OSC) messages, have it send on port 7404, and listen on port 7403.

### Instructions
1. Make sure nodejs is installed (use the 'LTS' version): https://nodejs.org/en/download/
2. Download either the specific release you were asked to use, or download the latest version: https://github.com/michaelpalumbo/wspd/releases
3. Open terminal, cd into the downloaded folder 'allhands-v0.0.x' (the rest of this readme assumes that you're working from this directory) 

```shell
cd /full/path/to/the/folder/named/allhands-v0.0.x
```
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
node allhands.js --mode client --name yournamewithnospaces
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
