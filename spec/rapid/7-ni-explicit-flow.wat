(module
  (func (export "7-ni-explicit-flow")
    (param $high1 i32)
    (param $high2 i32)
    (param $low1 i32)
    (param $low2 i32)
    (result i32)

    (local.get $low1)
    (local.set $high2)

    (local.get $high2)
    (local.set $high1)

    (local.get $high2)
    (local.get $low2)
    (i32.lt_u)
    (if
      (then
        (loop $while
          (local.get $high1)
          (i32.const 1)
          (i32.add)
          (local.set $high1)

          (local.get $high2)
          (local.get $low2)
          (i32.lt_u)
          (br_if $while)
        )
      )
      (else)
    )

    (local.get $high1)
    (local.set $low1)

    (local.get $low1)
  )
)
