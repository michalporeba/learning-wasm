# Learning WASM

## Setup 

Many modern programming languages can procue now WebAssembly binary files WASM.
To learn the virtual machine I will write the Writing WebAssembly Text (WAT) by hand. 
Because I plan to use JavaScript to invoke them I will use wat-wasm module. 

```
npm i wat-wasm -g
```

Example with the first addition file
```
wat2wasm add.wat -o add.wasm
node add.js
```