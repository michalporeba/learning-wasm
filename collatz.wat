(module
  (func $collatz_odd (param $number i32) (result i32)
    local.get $number 
    i32.const 3 
    i32.mul 
    i32.const 1 
    i32.add 
  )

  (func $collatz_even (param $number i32) (result i32)
    local.get $number 
    i32.const 1 
    i32.shr_u
  )

  (func $collatz_step (param $number i32) (result i32)
    local.get $number 
    i32.const 1 
    i32.and 

    (if (result i32)
        (then 
            local.get $number
            call $collatz_odd
        )
        (else 
            local.get $number
            call $collatz_even
        )
    )
  )

  (func $collatz (param $number i32) (param $steps i32) (result i32)
    local.get $number 
    i32.const 1
    i32.le_s 
    (if (result i32)
        (then local.get $steps)
        (else 
            local.get $number
            call $collatz_step
            local.get $steps 
            i32.const 1 
            i32.add 
            call $collatz
        )
    )
  )
  
  (func (export "steps") (param $number i32) (result i32)
    local.get $number 
    i32.const 0 
    i32.le_s 
    (if (result i32)
        (then i32.const -1)
        (else 
            local.get $number 
            i32.const 0
            (call $collatz)
        )
    )
  )
)