(module
  (func (export "f") (param $x i32) (result i32)
    (local.get $x)
    (if
      (then
        (i32.const 1)
        (return)
      )
      (else)
    )
    (i32.const 0)
  )

  (func (export "g") (param $x i32) (result i32)
    (local.get $x)
    (if
      (then
        (i32.const 1)
        (return)
      )
      (else)
    )
    (i32.const 1)
  )
)
