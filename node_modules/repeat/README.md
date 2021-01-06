# repeat

![version](https://img.shields.io/github/package-json/v/117/repeat?color=196DFF&style=flat-square)
![language](https://img.shields.io/github/languages/code-size/117/repeat?color=F1A42E&style=flat-square)
![maintenance](https://img.shields.io/github/workflow/status/117/repeat/test?style=flat-square)
![prettier](https://img.shields.io/static/v1?label=code%20style&message=prettier&color=ff51bc&style=flat-square)

create repeating task chains

## Contents

- [Features](#features)
- [Install](#install)
- [Chain](#chain)
- [Contributing](#contributing)

## Features

- [x] Chain any number of tasks and repeat them once or forever.
- [x] Optional synchronous and asynchronous API.

## Install

From NPM:

```cmd
> npm i repeat
```

## Chain

### Creating a new chain

The following chain will execute all tasks every second. A task is any callable
function.

```javascript
// ES6
import { Chain } from 'repeat'

// ES5
// let { Chain } = require('repeat')

let chain = new Chain()

chain
  .add(
    // task A
    () => console.log('how are you?'),
    // task B
    () => console.log('good')
    // you can add task C, D, E, F ...
  )
  .every(1000)
```

### Examples

The following methods are available on the chain.

- [add](#add)
- [once](#once)
- [every](#every)
- [forever](#forever)
- [cancel](#cancel)

#### add

```typescript
// add any number of tasks to the chain
chain.add(
  () => console.log('cat'),
  () => console.log('dog'),
  () => console.log('fish')
)
```

#### once

```typescript
// execute the tasks once
chain.once()
```

#### every

```typescript
// execute the tasks asynchronously every second
chain.every(1000)
```

#### forever

```typescript
// execute the tasks as fast as possible
chain.forever()
```

#### cancel

```typescript
// halt further execution of tasks
chain.cancel()
```

## Contributing

Pull requests are encouraged. 😁
