(module
  (func (export "f") (param $x i32) (result i32)
    (local $y i32)

    (i32.const 1)
    (local.set $y)

    (local.get $x)
    (if
      (then
        (i32.const 0)
        (local.set $y)
      )
      (else)
    )

    (local.get $y)
    (call 1)
  )

  (func $g (param $y i32) (result i32)
    (local $z i32)

    (i32.const 1)
    (local.set $z)

    (local.get $y)
    (if
      (then
        (i32.const 0)
        (local.set $z)
      )
      (else)
    )
    (local.get $z)
  )
)
