## to install and run this with a friend, ask them to clone, then do:

```shell 
git fetch origin
git checkout p2p
npm install
```

## testing the signalling server on one of our machines
```shell
node ./bin/signalling.js
```
2nd terminal:
```shell
bore local 8080 --to bore.pub
# this will return something like this:
listening at bore.pub:24836
```

Then, the peer joins the p2p session using:
```shell
npm run p2p theirName listening at bore.pub:24836
```

And the peer who is running the server (that's you!) joins the p2p session using:

```shell 
npm run p2p yourName ws://localhost:8080
```