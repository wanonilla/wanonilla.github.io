(module
  (func (export "f") (param i32) (result i32)
    (loop $loop
      (local.get 0)
      (i32.const 0)
      (i32.lt_s)

      (if (result i32)
        (then
          (local.get 0)
          (i32.const 1)
          (i32.add)
          (local.tee 0)
        )
        (else
          (local.get 0)
          (i32.const 1)
          (i32.add)
          (local.tee 0)
        )
      )

      (br_if $loop)
    )
    (local.get 0)
  )
)
