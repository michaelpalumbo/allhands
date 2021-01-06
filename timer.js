console.log(Date.now())

var heartbeats = require('heartbeats');

// a heart that beats every 1 second.
var heart = heartbeats.createHeart(1000);

// Alternative to setInterval
heart.createEvent(5, function(count, last){
    console.log(Date.now());
  });