(module
  (global $y (mut i32) (i32.const 1))

  (table funcref
    (elem
      1 2
    )
  )

  (func (export "main")
    (param $secret i32)
    (result i32)
    (local $x i32)
    (local $y i32)

    (local.get $secret)
    (local.set $x)

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
            (call_indirect)

            (local.get $y)
            (i32.const 1)
            (i32.add)
            (local.tee $y)
            (i32.const 10)
            (i32.lt_u)
            (br_if $inner)
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
      (br_if $outer)
    )

    (global.get $y)
  )

  (func $nop)

  (func $f
    (i32.const 0)
    (global.set $y)
  )
)
