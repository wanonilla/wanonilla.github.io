(module
  (func (export "const") (result i32) (i32.const 0))

  (func (export "eqz") (param i32) (result i32) (i32.eqz (local.get 0)))

  (func (export "add") (param i32 i32) (result i32) (i32.add (local.get 0) (local.get 1)))

  (func (export "xorswap") (param i32 i32) (result i32 i32)
    (local.tee 0 (i32.xor (local.get 0) (local.get 1)))
    (local.tee 1 (i32.xor (local.get 1)))
    (local.tee 0 (i32.xor (local.get 0)))
    (local.get 1)
  )
)
