(module
  (memory 256 256)

  (func (export "f") (param $x i32) (result i32) (local $i i32)
    (loop $while
      (local.get $i)
      (i32.const 5)
      (i32.store)

      (local.get $i)
      (i32.const 1)
      (i32.add)
      (local.tee $i)
      (i32.const 10)
      (i32.lt_u)
      (br_if $while)
    )

    (i32.const 0)
    (local.get $x)
    (i32.store)

    (i32.const 0)
    (i32.const 42)
    (i32.store)

    (i32.const 0)
    (i32.load)
  )
)
