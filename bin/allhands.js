#!/usr/bin/env node
import inquirer from 'inquirer';

const { mode } = await inquirer.prompt([
  {
    type: 'rawlist',
    name: 'mode',
    message: 'Choose mode',
    choices: ['Server-Client (legacy)', 'P2P']
  }
]);

if (mode === 'P2P') {
  const answers = await inquirer.prompt([
    {
      type: 'input',
      name: 'name',
      message: 'Enter your name (no spaces)',
      validate: (v) => /^[a-zA-Z0-9]+$/.test(v) || 'No spaces allowed'
    },
    {
      type: 'rawlist',
      name: 'sendPort',
      message: 'Port for your app to send OSC to peers',
      choices: ['7403 (Default)', 'Custom']
    },
    {
      type: 'input',
      name: 'customSendPort',
      message: 'Enter custom send port',
      when: (a) => a.sendPort === 'Custom'
    },
    {
      type: 'rawlist',
      name: 'receivePort',
      message: 'Port for your app to listen for OSC messages from peers',
      choices: ['7404 (Default)', 'Custom']
    },
    {
      type: 'input',
      name: 'customReceivePort',
      message: 'Enter custom receive port',
      when: (a) => a.receivePort === 'Custom'
    },
    // {
    //   type: 'rawlist',
    //   name: 'sendPort',
    //   message: 'Do you want to print incoming and outgoing messages?',
    //   choices: ['Yes', 'No']
    // },
    // {
    //   type: 'rawlist',
    //   name: 'printIncoming',
    //   message: 'Display incoming messages from peers?',
    //   choices: ['No (Default)', 'Yes']
    // },
    // {
    //   type: 'rawlist',
    //   name: 'printOutgoing',
    //   message: 'Display outgoing local messages?',
    //   choices: ['No (Default)', 'Yes']
    // }
  ]);

  // normalize answers
 // normalize answers
  process.env.AH_NAME          = answers.name;
  process.env.AH_SEND_PORT     = answers.sendPort === 'Custom' ? answers.customSendPort : '7403';
  process.env.AH_RECEIVE_PORT  = answers.receivePort === 'Custom' ? answers.customReceivePort : '7404';

  await import('./p2p.js');

} else {
  await import('./sc.js');
}