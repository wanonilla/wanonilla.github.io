(module
  ;; Based on an example from Multiple Facets for Dynamic Information Flow, Austin & Flanagan, 2012
  (func (export "f") (param $h i32) (result i32)
    (local $y i32)
    (local $z i32)

    (block
      (local.get $h)
      (i32.eqz)
      (br_if 0)

      (i32.const 1)
      (local.set $y)
    )

    (block
      (local.get $y)
      (br_if 0)

      (i32.const 1)
      (local.set $z)
    )

    (local.get $z)
  )
)
