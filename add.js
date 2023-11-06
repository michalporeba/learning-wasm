// a wasm module is a binary and needs to be read in to initialise

const fs = require('fs')
const module_bytes = fs.readFileSync(__dirname + "/add.wasm");

(async () => { 
    const module = await WebAssembly.instantiate(new Uint8Array(module_bytes));
    let value = module.instance.exports.sum(3,4);
    console.log(`3+4=${value}`);
})();