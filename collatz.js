// a wasm module is a binary and needs to be read in to initialise

const fs = require('fs')
const module_bytes = fs.readFileSync(__dirname + "/collatz.wasm");

(async () => { 
    const module = await WebAssembly.instantiate(new Uint8Array(module_bytes));
    console.log(`collatz(0)=${module.instance.exports.steps(0)}`);
    console.log(`collatz(1)=${module.instance.exports.steps(1)}`);
    console.log(`collatz(2)=${module.instance.exports.steps(2)}`);
    console.log(`collatz(5)=${module.instance.exports.steps(5)}`);
    console.log(`collatz(12)=${module.instance.exports.steps(12)}`);
})();