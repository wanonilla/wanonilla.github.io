(module
  (import "mystdlib" "myfunc" (func $myfunc (param i32)))

  (func (export "f")
    (param $x i32)

    (local.get $x)
    (call $myfunc)
  )

  (func (export "g")
    (param $x i32)

    (local.get $x)
    (br_if 0)

    (i32.const 1)
    (call $myfunc)
  )
)
