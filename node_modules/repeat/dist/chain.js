"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Chain = void 0;
class Chain {
    constructor(tasks = [], alive = true) {
        this.tasks = tasks;
        this.alive = alive;
    }
    // old alias for "add" remains here for backwards compatibility
    do(...callable) {
        return this.add(...callable);
    }
    add(...callable) {
        this.tasks = this.tasks.concat(callable);
        return this;
    }
    once(async = false) {
        this.alive = false;
        (async && ((self) => __awaiter(this, void 0, void 0, function* () { return self.async(); }))(this)) || this.sync();
        return this;
    }
    every(milliseconds) {
        this.add(() => new Promise((resolve) => setTimeout(resolve, milliseconds)));
        return this.forever(true);
    }
    forever(async = false) {
        this.alive = true;
        (async && ((self) => __awaiter(this, void 0, void 0, function* () { return self.async(); }))(this)) || this.sync();
        return this;
    }
    cancel() {
        this.alive = false;
        return this;
    }
    async() {
        return __awaiter(this, void 0, void 0, function* () {
            for (let task of this.tasks) {
                yield task();
            }
            this.alive && this.async();
        });
    }
    sync() {
        for (let task of this.tasks) {
            task();
        }
        this.alive && this.sync();
    }
}
exports.Chain = Chain;
