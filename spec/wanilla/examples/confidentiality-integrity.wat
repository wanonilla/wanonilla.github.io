(module
  (func (export "f") (param $pu i32) (param $st i32) (result i32)
    (local.get $pu)
    (if (result i32)
      (then
        (local.get $st)
        (if (result i32)
          (then
            (i32.const 42)
          )
          (else
            (i32.const 42)
          )
        )
      )
      (else
        (local.get $st)
        (if (result i32)
          (then
            (i32.const 84)
          )
          (else
            (i32.const 84)
          )
        )
      )
    )
  )
)
