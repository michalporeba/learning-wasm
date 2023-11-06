// a wasm module is a binary and needs to be read in to initialise

const fs = require('fs')
const module_bytes = fs.readFileSync(__dirname + "/root.wasm");

(async () => { 
    const module = await WebAssembly.instantiate(new Uint8Array(module_bytes));
    console.log(`squareRoot(1)=${module.instance.exports.squareRoot(1)}`);
    console.log(`squareRoot(4)=${module.instance.exports.squareRoot(4)}`);
    console.log(`squareRoot(9)=${module.instance.exports.squareRoot(9)}`);
    console.log(`squareRoot(25)=${module.instance.exports.squareRoot(25)}`);
})();