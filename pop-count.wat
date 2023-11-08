(module
  (func (export "eggCount") (param $number i32) (result i32)
    (local $eggs i32)
    i32.const 0
    local.set $eggs
  
    (loop $step
      ;; isolate the last bit 0 or 1
      local.get $number
      i32.const 1 
      i32.and 

      ;; add the value to the eggs counter
      local.get $eggs
      i32.add 
      local.set $eggs

      ;; shift the bits right
      local.get $number 
      i32.const 1
      i32.shr_u
      local.tee $number 
      
      ;; loop while number is greater than 0
      br_if $step
    )
    local.get $eggs
  )
)
