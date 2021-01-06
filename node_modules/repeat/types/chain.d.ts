export declare class Chain {
    tasks: Array<CallableFunction>;
    alive: boolean;
    constructor(tasks?: Array<CallableFunction>, alive?: boolean);
    do(...callable: Array<CallableFunction>): Chain;
    add(...callable: Array<CallableFunction>): Chain;
    once(async?: boolean): Chain;
    every(milliseconds: number): Chain;
    forever(async?: boolean): Chain;
    cancel(): Chain;
    private async;
    private sync;
}
