(module
  (func (export "br") (param i32) (result i32)
    (block (result i32)
      (local.get 0)
      (br 0)
    )
  )

  (func (export "br_if") (param i32) (result i32)
    (block
      (i32.const 0)
      (local.get 0)
      (i32.eq)
      (br_if 0)
      (i32.const 0)
      (return)
    )
    (i32.const 1)
  )

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

  (func (export "br_table2") (param i32) (result i32)
    (block
      (block
        (select
          (i32.const 2)
          (i32.const 1)
          (local.get 0)
        )
        (br_table 0 1)
      )
      (i32.const 42)
      (return)
    )
    (i32.const 84)
  )
)
