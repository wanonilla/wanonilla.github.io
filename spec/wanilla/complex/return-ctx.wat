(module
  (func (export "f")
    (param $x i32)
    (result i32)

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

  (func (export "g")
    (param $secret i32)
    (result i32)
    (local $x i32)

    (loop $while

      (local.get $x)
      (i32.const 5)
      (i32.eq)
      (if
        (then
          (i32.const 0)
          (return)
        )
        (else)
      )

      (i32.const 1)
      (local.get $x)
      (i32.add)
      (local.tee $x)
      (i32.const 10)
      (i32.le_u)
      (br_if $while)
    )

    (local.get $secret)
    (if
      (then
        (i32.const 1)
        (return)
      )
      (else
        (i32.const 1)
        (return)
      )
    )
    (i32.const 0)
  )
)
