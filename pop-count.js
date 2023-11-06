// a wasm module is a binary and needs to be read in to initialise

const fs = require('fs')
const module_bytes = fs.readFileSync(__dirname + "/pop-count.wasm");

(async () => { 
    const module = await WebAssembly.instantiate(new Uint8Array(module_bytes));
    console.log(`eggCount(2)=${module.instance.exports.eggCount(1)}`);
    console.log(`eggCount(5)=${module.instance.exports.eggCount(5)}`);
    console.log(`eggCount(39)=${module.instance.exports.eggCount(39)}`);
    console.log(`eggCount(63)=${module.instance.exports.eggCount(63)}`);
})();