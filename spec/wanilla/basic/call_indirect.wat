(module
  (table funcref
    (elem
      1 2
    )
  )

  (func (export "f") (param i32) (result i32)
    (local.get 0)
    (i32.const 0)
    (i32.ne)
    (call_indirect (result i32))
  )

  (func $f1 (result i32)
    (i32.const 42)
  )

  (func $f2 (result i32)
    (i32.const 42)
  )
)
