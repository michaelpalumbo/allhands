## to install and run this with a friend, ask them to clone, then do:

```shell 
git fetch origin
git checkout p2p
npm install
```

### install the tunnel client (only necessary if running the signal server locally)
PC: https://github.com/ekzhang/bore/releases
Mac: brew install bore-cli

## testing the signalling server on one of our machines
```shell
node ./bin/signalling.js
```

<!-- ### if running the signal server on mac
2nd terminal:
```shell
bore local 8080 --to bore.pub
# this will return something like this:
listening at bore.pub:24836
```

Then, the peer joins the p2p session using:
```shell
npm run p2p theirName listening at bore.pub:24836
``` -->

### Running a tunnel to expose your signal server to the internet
1. run this
```shell
ssh -R 80:localhost:8080 serveo.net
```
2. if running for the first time, it will ask you for authentication (type 'y', then 'yes')
3. it will return something that says "forwarding HTTP trafic from https://<url>
```shell
i.e.: Forwarding HTTP traffic from https://3fbd79dc7c58ac62-76-65-20-168.serveousercontent.com
```
4. replace <https> with 'ws' so it becomes:
```shell
ws://3fbd79dc7c58ac62-76-65-20-168.serveousercontent.com
```
5. copy that, and send that to your peers
# your peers will run this:
npm run p2p theirName ws://3fbd79dc7c58ac62-76-65-20-168.serveousercontent.com
```

And the peer who is running the server (that's you!) joins the p2p session using:

```shell 
npm run p2p yourName ws://localhost:8080
```