(module
  (func (export "f") (param $h i32) (param $l i32) (result i32)
    (block
      (local.get $h)
      (br_if 0)

      (local.get $l)
      (return)
    )
    (local.get $l)
  )
)
