(module
  (func (export "while-while")
    (param $secret i32)
    (result i32)
    (local $result i32)
    (local $x i32)
    (local $y i32)

    (local.get $x)
    (i32.const 5)
    (i32.ne)
    (if
      (then
        (loop $loop
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
          (local.get $y)
          (i32.const 1)
          (i32.add)
          (local.tee $y)
          (i32.const 10)
          (i32.lt_s)
          (br_if $loop)
        )
      )
      (else)
    )

    (local.get $result)
  )
)
