(module
  (func (export "loop-ctx")
    (param $secret i32)
    (result i32)

    (loop $loop
      (nop)
      (local.get $secret)
      (if
        (then
          (br $loop)
        )
        (else)
      )
    )
    (i32.const 0)
  )
)
