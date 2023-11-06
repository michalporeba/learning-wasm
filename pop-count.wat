(module
  (func (export "eggCount") (param $number i32) (result i32)
    (local $eggs i32)
    i32.const 0
    local.set $eggs
  
    (loop $step
      local.get $number
      i32.const 1 
      i32.and 

      (if 
        (then 
          local.get $eggs
          i32.const 1 
          i32.add 
          local.set $eggs 
        )
      )  

      local.get $number 
      i32.const 1
      i32.shr_u
      local.set $number 
      local.get $number 
      br_if $step
    )
    local.get $eggs
  )
)
