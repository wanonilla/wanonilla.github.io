(module
  ;; Multiple Facets for Dynamic Information Flow, Austin & Flanagan, 2012
  (func (export "f") (param $x i32) (result i32)
    (local $y i32)
    (local $z i32)
    (i32.const 1)
    (local.tee $y)
    (local.set $z)
    (local.get $x)
    (if
      (then
        (i32.const 0)
        (local.set $y)
      )
      (else)
    )
    (local.get $y)
    (if
      (then
        (i32.const 0)
        (local.set $z)
      )
      (else)
    )
    (local.get $z)
  )
)
