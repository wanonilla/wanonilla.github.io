(module
  (func (export "br_table") (param i32) (result i32)
    (block
      (block
        (local.get 0)
        (br_table 0 1)
      )
      (i32.const 42)
      (return)
    )
    (i32.const 84)
  )
)
