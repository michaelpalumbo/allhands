<h1 align="center">Welcome to allhands 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.0.43-blue.svg?cacheSeconds=2592000" />
  <a href="https://github.com/michaelpalumbo/allhands#readme" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
  </a>
  <a href="https://github.com/michaelpalumbo/allhands/graphs/commit-activity" target="_blank">
    <img alt="Maintenance" src="https://img.shields.io/badge/Maintained%3F-yes-green.svg" />
  </a>
  <a href="https://github.com/michaelpalumbo/allhands/blob/master/LICENSE" target="_blank">
    <img alt="License: ISC" src="https://img.shields.io/github/license/michaelpalumbo/allhands" />
  </a>
</p>

> With allhands, you can send Open Sound Control (OSC) data over the web, without needing to know the destination IP address(es) of each person you are collaborating with. Simply install allhands as a global package, run it, and then from your chosen application (i.e. Max/MSP, pd, Ableton, Touchdesigner, etc) send OSC data to port 7403 and listen on port 7404. 

## Caveats:
If on OSX Catalina, and using zsh as your terminal, you'll need to make sure that nodejs is in your PATH. See [this step-by-step before proceeding](https://medium.com/@andrewjaykeller/how-to-install-node-js-and-npm-with-macoss-new-terminal-zsh-e39b4a62d3d4)


### 🏠 [Homepage](https://github.com/michaelpalumbo/allhands#readme)

## Install
Open a terminal window, type the following and hit enter.

```shell
npm install -g allhands
```

> If you get an error when installing related to permissions, visit this [tutorial for how to install packages globally](https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally)

## Usage
In a terminal window, type the following and hit enter:

```shell
allhands
```

Next you'll be prompted with some configuration:

1. Enter your name. 
2. Choose the server type. 

    1. Public: This will connect you to the main allhands network. Use this if you don't want to run your own allhands server, or if you want to send and receive controller data to/from strangers :)
    2. Cloud: This is to connect to a specific cloud-based allhands server. You'll need the url of the cloud instance. 
    3. Self-hosted: Choose this if you or someone in your group is running an allhands server on their own computer. If connecting to someone's server, you'll need their public IP address. 

3. Outgoing Port: This is the port that you will use to *send data from your application* (i.e. Pd, Max, Ableton, etc) to an allhands network. The default is 7403 and the address should be either localhost or 127.0.0.1 (whichever your program prefers).

4. Incoming Port: This is the port that your application should listen on for data coming from an allhands network. The default is 7404 and the address should be either localhost or 127.0.0.1 (whichever your program prefers).

5. Print Incoming Data: If you want to display controller data coming in from someone else, choose *Yes*

6. Print Outgoing Data: If you want to display your outgoing controller data (sent from whichever application you're using, i.e. pd, ableton, etc), choose *Yes*


allhands is meant to work alongside other programs that can send/receive OSC data. Once you have the allhands app running and connected to a server, you should open your preferred program and try sending/receiving data. Example code for puredata, max/msp, etc, can be found at https://github.com/michaelpalumbo/allhands-examples

## Author

👤 **Michael Palumbo**

* Website: [www.palumbomichael.com](www.palumbomichael.com)
* Github: [@michaelpalumbo](https://github.com/michaelpalumbo)
* Music: [thispatcher.bandcamp.com](https://thispatcher.bandcamp.com)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/michaelpalumbo/allhands/issues). 

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2021 [Michael Palumbo](https://github.com/michaelpalumbo).<br />
This project is [ISC](https://github.com/michaelpalumbo/allhands/blob/master/LICENSE) licensed.

## Funding

Support for this project was provided generously by the Canada Council for the Arts.
