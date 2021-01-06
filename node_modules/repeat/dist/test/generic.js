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
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const ava_1 = __importDefault(require("ava"));
const __1 = __importDefault(require(".."));
const chain_1 = require("../chain");
ava_1.default('build callback', function (test) {
    const loop0 = __1.default().add(() => null, () => null, () => null);
    test.is(loop0.tasks.length, 3);
});
ava_1.default('build explicit', function (test) {
    const loop1 = new chain_1.Chain().add(() => null, () => null, () => null);
    test.is(loop1.tasks.length, 3);
});
ava_1.default('sync', function (test) {
    let n = 0;
    __1.default()
        .add(() => n++, () => n++, () => n++)
        .once();
    test.is(n, 3);
});
ava_1.default('async', function (test) {
    return __awaiter(this, void 0, void 0, function* () {
        test.is(yield new Promise((resolve) => {
            let n = 0;
            __1.default()
                .add(() => __awaiter(this, void 0, void 0, function* () { return n++; }), () => __awaiter(this, void 0, void 0, function* () { return n++; }), () => resolve(++n))
                .once(true);
        }), 3);
    });
});
