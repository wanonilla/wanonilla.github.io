(module
  (func (export "f")
    (param $x i32)
    (result i32)

    (local.get $x)
    (if
      (then
        (i32.const 1)
        (i32.const 0)
        (i32.div_u)
        (drop)
      )
      (else)
    )
    (i32.const 0)
  )

  (func (export "g")
    (param $x i32)
    (result i32)

    (local.get $x)
    (if (result i32)
      (then
        (i32.const 1)
        (i32.const 0)
        (i32.div_u)
      )
      (else
        (i32.const 0)
      )
    )
  )
)
