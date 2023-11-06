// a wasm module is a binary and needs to be read in to initialise

const fs = require('fs')
const module_bytes = fs.readFileSync(__dirname + "/grains.wasm");

(async () => { 
    const module = await WebAssembly.instantiate(new Uint8Array(module_bytes));
    console.log(`square(1)=${module.instance.exports.square(1)}`);
    console.log(`square(2)=${module.instance.exports.square(2)}`);
    console.log(`square(5)=${module.instance.exports.square(5)}`);
})();