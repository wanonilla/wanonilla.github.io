(module
  (import "mystdlib" "myfunc" (func $myfunc (param i32) (result i32)))

  (func (export "f")
    (param $x i32)
    (param $y i32)
    (result i32)

    (local.get $x)
    (if (result i32)
      (then
        (local.get $y)
        (call $myfunc)
      )
      (else
        (i32.const 0)
      )
    )
  )
)
