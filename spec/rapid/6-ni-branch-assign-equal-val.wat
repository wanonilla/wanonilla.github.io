(module
  (func (export "6-ni-branch-assign-equal-val")
    (param $high i32)
    (param $low2 i32)
    (result i32)
    (local $low1 i32)

    (local.get $high)
    (i32.eqz)
    (if
      (then
        (local.get $low2)
        (local.get $low2)
        (i32.add)
        (local.set $low1)
      )
      (else
        (local.get $low2)
        (i32.const 2)
        (i32.mul)
        (local.set $low1)
      )
    )
    (local.get $low1)
  )
)
