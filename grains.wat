(module
  (func $shift (param $squareNum i32) (result i64)
    i64.const 1

    local.get $squareNum
    i32.const 1
    i32.sub
    i64.extend_i32_s

    i64.shl
  )

  ;; squareNum is signed
  ;; Result is unsigned
  (func $square (export "square") (param $squareNum i32) (result i64)
    local.get $squareNum 
    i32.const 1
    i32.ge_s

    local.get $squareNum 
    i32.const 64 
    i32.le_s

    i32.or 
    
    (if (result i64)
        (then
            local.get $squareNum
            call $shift
        )
        (else
            i64.const 0
        )
    )
  )

  ;; Result is unsigned
  (func (export "total") (result i64)
    i64.const 0xFFFFFFFF_FFFFFFFF
  )
)