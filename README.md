*allhands*
*developed by Michael Palumbo*
*May 2020-present*
*www.palumbomichael.com*


This app acts as a bridge between multiple computers over the web, enables very fast transmission of controller data between, for example, a puredata patch on one computer, and touchdesigner on the other. 

Basically, you run this program, and then with whatever software you're using to send/receive Open Sound Control (OSC) messages, have it send on port 7404, and listen on port 7403.

### Instructions
1. Make sure you have a copy of Max 8 installed. 
2. Open the max patch 'workshop.maxpat'
3. wait for the debug window to state that packages are installed (the window will turn green, and this usually happens rather quickly)
4. Type your first name into the text field at the top and hit Enter
5. Should be all set. Now go to your software instrument/controller(s) and listen on port 7403 and receive on port 7404. 

### OSC Syntax
The nodejs app assumes that all incoming data on UDP follows the OSC format of an Address Pattern followed by Type Tag String. Examples:

- /index 3
- /position 0.3 0.6 0.8
- /msg hello world

If you do not supply an address pattern using the '/', the app will ignore the message. Address patterns can have multiple routes, i.e. /sound/adsr/a
