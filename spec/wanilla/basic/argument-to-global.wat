(module
  (global $y (mut i32) (i32.const 0))

  (func (export "f") (param $x i32)
    (local.get $x)
    (global.set $y)
  )
)
