(module
  (global $y (import "secret" "y") i32)

  (func (export "f") (result i32)
    (global.get $y)
  )
)
