(module
  ;; Dead code in inner loop that would leak secret if executed
  (func (export "while-while")
    (param $secret i32)
    (result i32)
    (local $result i32)
    (local $x i32)
    (local $y i32)

    (loop $outer
      (local.get $x)
      (i32.const 5)
      (i32.ne)
      (if
        (then
          (loop $inner
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
            (br_if $inner)
          )
        )
        (else)
      )
      (i32.const 0)
      (local.set $y)

      (local.get $x)
      (i32.const 1)
      (i32.add)
      (local.tee $x)
      (i32.const 10)
      (i32.lt_u)
      (br_if $outer)
    )

    (local.get $result)
  )
)
