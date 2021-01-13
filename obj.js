let pings = {
    michael: 55,
    steve: 78
}

let remotes = Object.keys(pings)
for(i=0;i<remotes.length;i++){
    console.log(remotes[i], pings[remotes[i]])
}
// console.log(remotes)