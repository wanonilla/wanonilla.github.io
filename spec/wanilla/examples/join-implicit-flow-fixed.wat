(module
  ;; Based on an example from Multiple Facets for Dynamic Information Flow, Austin & Flanagan, 2012
  (func (export "f") (param $h i32) (result i32)
    (local $y i32)
    (local $z i32)
    (i32.const 1)
    (local.set $y)
    (i32.const 1)
    (local.set $z)

    (block
      (local.get $h)
      (i32.eqz)
      (br_if 0)

      (i32.const 0)
      (local.set $y)
    )

    (block
      (local.get $y)
      (i32.eqz)
      (br_if 0)

      (i32.const 0)
      (local.set $z)
    )

    (local.get $z)
  )
)
