(module
  (func (export "f") (param $h i32) (result i32)
    (block
      (local.get $h)
      (br_if 0)

      (i32.const 0)
      (return)
    )
    (i32.const 1)
  )
)
