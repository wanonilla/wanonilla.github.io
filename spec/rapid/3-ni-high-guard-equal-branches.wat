(module
  (func (export "3-ni-high-guard-equal-branches")
    (param $h i32)
    (param $l i32)
    (result i32)

    (local.get $h)
    (i32.const 0)
    (i32.gt_s)
    (if
      (then
        (local.get $l)
        (i32.const 1)
        (i32.add)
        (local.set $l)
      )
      (else
        (local.get $l)
        (i32.const 1)
        (i32.add)
        (local.set $l)
      )
    )
    (local.get $l)
  )
)
