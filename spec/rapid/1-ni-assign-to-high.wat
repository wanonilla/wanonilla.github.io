(module
  (func (export "1-ni-assign-to-high")
    (param $h i32)
    (param $l i32)
    (result i32)

    (local.get $l)
    (i32.const 4)
    (i32.add)
    (local.set $h)

    (local.get $l)
    (i32.const 5)
    (i32.sub)
    (local.tee $l)
  )
)
