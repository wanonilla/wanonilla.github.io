(module
  (func (export "while-while")
    (param $secret i32)
    (result i32)
    (local $result i32)
    (local $x i32)

    (loop $loop
      (local.get $x)
      (i32.const 5)
      (i32.ne)
      (if
        (then
            (local.get $x)
            (i32.const 5)
            (i32.eq)
            (if
              (then
                (local.get $secret)
                (local.set $result)
              )
              (else)
            )
        )
        (else)
      )

      (local.get $x)
      (i32.const 1)
      (i32.add)
      (local.tee $x)
      (i32.const 10)
      (i32.lt_u)
      (br_if $loop)
    )

    (local.get $result)
  )
)
