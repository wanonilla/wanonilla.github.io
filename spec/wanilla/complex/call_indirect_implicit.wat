(module
  (global $y (mut i32) (i32.const 1))
  (global $z (mut i32) (i32.const 1))

  (table funcref
    (elem
      1 2 3
    )
  )

  ;; Adapted from Multiple Facets for Dynamic Information Flow, Austin & Flanagan, 2012
  (func (export "f") (param $x i32) (result i32)
    (local.get $x)
    (i32.const 0)
    (i32.ne)
    (call_indirect)
    (global.get $y)
    (i32.const 0)
    (i32.ne)
    (i32.const 2)
    (i32.mul)
    (call_indirect)
    (global.get $z)
  )

  (func $nop)

  (func $g
    (i32.const 0)
    (global.set $y)
  )

  (func $h
    (i32.const 0)
    (global.set $z)
  )
)
