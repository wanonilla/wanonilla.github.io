(module
  (func (export "7-ni-explicit-flow-while")
    (param $hi i32)
    (param $lo i32)
    (param $dec i32)
    (result i32)

    (local.get $dec)
    (i32.const 0)
    (i32.ne)
    (if
      (then
        (loop $while
          (local.get $lo)
          (i32.const 1)
          (i32.add)
          (local.set $hi)

          (local.get $hi)
          (i32.const 1)
          (i32.add)
          (local.set $lo)

          (local.get $dec)
          (i32.const 1)
          (i32.sub)
          (local.tee $dec)
          (i32.const 0)
          (i32.ne)
          (br_if $while)
        )
      )
      (else)
    )
    (local.get $lo)
  )
)
