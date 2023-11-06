(module
  (func $test (param $number i32) (param $root i32) (result i32)
    local.get $root 
    local.get $root
    i32.mul 
    local.get $number
    i32.lt_s
  )
  (func (export "squareRoot") (param $radicand i32) (result i32)
    (local $n i32)
    i32.const 0
    local.set $n 

    (loop $step
        local.get $n
        i32.const 1 
        i32.add 
        local.set $n 

        local.get $radicand 
        local.get $n 
        call $test
        br_if $step
    )
    local.get $n
  )
)