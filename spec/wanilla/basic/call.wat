(module
  (func (export "f") (param i32) (result i32)
    (local.get 0)
    (call $id)
  )

  (func (export "g") (param i32 i32) (result i32 i32)
    (call $id2
      (local.get 0)
      (local.get 1)
    )
  )

  (func (export "id-drop") (param i32 i32) (result i32)
    (local.get 0)
    (call $id)
    (local.get 1)
    (call $id)
    (drop)
  )

  (func $id (param i32) (result i32)
    (local.get 0)
  )

  (func $id2 (param i32 i32) (result i32 i32)
    (local.get 0)
    (local.get 1)
  )
)
