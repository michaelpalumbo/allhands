import { Client } from 'node-osc';

const client = new Client('127.0.0.1', 7403);
await client.send('/oscAddress', 200);
await client.close();