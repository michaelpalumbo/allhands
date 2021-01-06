export class Chain {
  constructor(
    public tasks: Array<CallableFunction> = [],
    public alive: boolean = true
  ) {}

  // old alias for "add" remains here for backwards compatibility
  do(...callable: Array<CallableFunction>): Chain {
    return this.add(...callable)
  }

  add(...callable: Array<CallableFunction>): Chain {
    this.tasks = this.tasks.concat(callable)
    return this
  }

  once(async: boolean = false): Chain {
    this.alive = false
    ;(async && (async (self) => self.async())(this)) || this.sync()
    return this
  }

  every(milliseconds: number) {
    this.add(() => new Promise((resolve) => setTimeout(resolve, milliseconds)))
    return this.forever(true)
  }

  forever(async: boolean = false): Chain {
    this.alive = true
    ;(async && (async (self) => self.async())(this)) || this.sync()
    return this
  }

  cancel(): Chain {
    this.alive = false
    return this
  }

  private async async() {
    for (let task of this.tasks) {
      await task()
    }

    this.alive && this.async()
  }

  private sync() {
    for (let task of this.tasks) {
      task()
    }

    this.alive && this.sync()
  }
}
