(module
  (func $f (export "f") (param $x i32) (param $y i32) (result i32)
    (local.get $x)
    (if (result i32)
      (then
        (local.get $y)
        (local.get $x)
        (i32.eqz)
        (call $f)
        (drop)
        (i32.const 1)
      )
      (else
        (i32.const 0)
      )
    )
  )
)
