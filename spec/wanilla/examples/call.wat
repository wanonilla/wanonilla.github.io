(module
  (func (export "f")
    (param $h i32)
    (result i32)

    (local.get $h)
    (if (result i32)
      (then
        (call $g)
      )
      (else
        (i32.const 1)
      )
    )
  )

  (func $g (result i32)
    (i32.const 1)
  )
)
