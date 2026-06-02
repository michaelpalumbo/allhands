import { Bundle, Client } from 'node-osc';

// import { Server } from 'node-osc';

// const oscServer = new Server(3333, '0.0.0.0', () => {
//   console.log('OSC Server is listening');
// });

// oscServer.on('bundle', function (bundle) {
//   bundle.elements.forEach((element) => {
//     console.log(`Timestamp: ${bundle.timetag}`);
//     console.log(`Message: ${element}`);
//   });
// });

const bundle = new Bundle(['/one', 1], ['/two', 2], ['/three', 3]);
const client = new Client('127.0.0.1', 7403);
await client.send(bundle);
await client.close();