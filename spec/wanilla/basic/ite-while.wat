(module
  (func (export "f")
    (param $secret i32)
    (result i32)
    (local $x i32)
    (local $y i32)

    (local.get $secret)
    (if
      (then
        (i32.const 1)
        (local.set $y)
      )
      (else
        (i32.const 1)
        (local.set $y)
      )
    )

    (loop $loop1
        (local.get $y)
        (i32.const 1)
        (i32.add)
        (local.set $y)

        (local.get $x)
        (i32.const 1)
        (i32.add)
        (local.tee $x)
        (i32.const 10)
        (i32.lt_u)
        (br_if $loop1)
    )

    (local.get $y)
  )
)
