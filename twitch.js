const get = require('simple-get')
var Interval = require('Interval');
// auth
require('dotenv').config()

const clientId = process.env.TWITCH_ID
const twitchLogin = process.env.TWITCH_LOGIN
const clientSecret = process.env.TWITCH_SECRET
const bearerRequest = 'https://id.twitch.tv/oauth2/token?client_id=' + clientId + '&client_secret=' + clientSecret + '&grant_type=client_credentials'
const axios = require('axios');

// get the Bearer access token
let accessToken
let runner;
let intervalLength = 2500
axios({
  method: 'POST',
  url: bearerRequest
})
.then(function (response) {
  accessToken = response.data.access_token

  //get an initial stream stats before running at an interval
  getStreamStats(clientId, accessToken)
  // create an Interval runner
  // see https://www.npmjs.com/package/Interval
  runner = Interval.run(function() {
    getStreamStats(clientId, accessToken)
  }, intervalLength);
})
.catch(function (error) {
  console.log(error);
});



 

function getStreamStats(){
  get({
    url: 'https://api.twitch.tv/helix/streams?user_login=' + twitchLogin,
    method: 'GET',
    headers: {
      'Authorization': `Bearer ` + accessToken,
      'Client-Id': clientId
    },
    json: true
  }, function (err, res) {
    if (err) throw err
    res.setTimeout(4500)    
    res.on('data', function (chunk) {
      let result = JSON.parse(chunk).data[0]
      delete result['tag_ids'];
      delete result['thumbnail_url'];
      delete result['id'];
      delete result['user_id'];
      delete result['game_id'];
      delete result['game_name'];
      result['poll_interval'] = intervalLength
      // delete result['game_name'];
      console.log(result)
    })
    
  })
}
