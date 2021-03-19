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

## Caveats:
If on OSX Catalina, and using zsh as your terminal, you'll need to make sure that nodejs is in your PATH. See [this page](https://www.kevinhooke.com/2020/03/22/macos-catalina-npm-global-installs-and-zsh/)


### 🏠 [Homepage](https://github.com/michaelpalumbo/allhands#readme)

## Install
Open a terminal window, type the following and hit enter.

```sh
npm install -g allhands
```

> If you get an error when installing related to permissions, visit this [tutorial for how to install packages globally](https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally)

## Usage
In a terminal window, type the following and hit enter:

```sh
allhands yourname
```

Send OSC messsages to your friends (and anyone else running allhands) on **port 7404** (localhost).

Receive OSC messages from the allhands network on **port 7403**.

CLI Options:
    --local=true  : This will print any messages you send to the allhands network in the terminal console (to verify they're being received by allhands)

    --log=true    : print all incoming messages to the terminal 

## Author

👤 **Michael Palumbo**

* Website: www.palumbomichael.com
* Github: [@michaelpalumbo](https://github.com/michaelpalumbo)
* Music: www.thispatcher.github.com

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/michaelpalumbo/allhands/issues). 

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2021 [Michael Palumbo](https://github.com/michaelpalumbo).<br />
This project is [ISC](https://github.com/michaelpalumbo/allhands/blob/master/LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_