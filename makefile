add: 
	wat2wasm add.wat -o add.wasm 
	node add.js 

collatz: 
	wat2wasm collatz.wat -o collatz.wasm
	node collatz.js

grains:
	wat2wasm grains.wat -o grains.wasm 
	node grains.js

pop-count:
	wat2wasm pop-count.wat -o pop-count.wasm
	node pop-count.js

root:
	wat2wasm root.wat -o root.wasm 
	node root.js