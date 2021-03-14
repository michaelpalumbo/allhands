<<<<<<< HEAD
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
=======
<h1 align="center">Welcome to allhands 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.0.27-blue.svg?cacheSeconds=2592000" />
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

> With allhands, you can send Open Sound Control (OSC) data over the web, without needing to the destination IP address(es). Simply install allhands as a global package, run it, and then send OSC data to port 7404 (localhost)  and listen on port 7403. 


### 🏠 [Homepage](https://github.com/michaelpalumbo/allhands#readme)

## Install
Open a terminal window, type the following and hit enter.

```sh
npm install -g allhands
>>>>>>> nodemodule
```

> If you get an error when installing related to permissions, visit this [tutorial for how to install packages globally](https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally)
## Usage
In a terminal window, type the following and hit enter:

```sh
allhands yourname
```

Send OSC messsages to your friends (and anyone else running allhands) on **port 7404** (localhost).

<<<<<<< HEAD
### Usage

1. in terminal, type 
```shell
node allhands.js --mode client --name yournamewithnospaces
```
=======
Receive OSC messages from the allhands network on **port 7403**.
>>>>>>> nodemodule

## Author

👤 **Michael Palumbo**

* Website: www.palumbomichael.com
* Github: [@michaelpalumbo](https://github.com/michaelpalumbo)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/michaelpalumbo/allhands/issues). 

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2021 [Michael Palumbo](https://github.com/michaelpalumbo).<br />
This project is [ISC](https://github.com/michaelpalumbo/allhands/blob/master/LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_