(module
  (func (export "get") (param i32) (result i32)
    (local.get 0)
  )

  (func (export "getget") (param i32 i32) (result i32 i32)
    (local.get 0)
    (local.get 1)
  )

  (func (export "getsetget") (param i32 i32) (result i32)
    (local.get 1)
    (local.set 0)
    (local.get 0)
  )

  (func (export "drop") (param i32) (result i32)
    (local.get 0)
    (i32.const 42)
    (drop)
  )
)
