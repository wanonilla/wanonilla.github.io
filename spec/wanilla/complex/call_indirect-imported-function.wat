(module
  (import "mystdlib" "f" (func $f (result i32)))
  (import "mystdlib" "g" (func $g (result i32)))
  (import "mystdlib" "h" (func $h))

  (table funcref
    (elem
      0 1
    )
  )

  (func (export "i")
    (result i32)

    (i32.const 0)
    (call_indirect (result i32))
    (drop)

    (i32.const 0)
    (call_indirect (result i32))

    (call $h)
  )
)
