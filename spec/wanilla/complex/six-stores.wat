(module
  (memory 256 256)

  (func (export "f") (param $x i32) (param $y i32) (result i32) (local $i i32)
    (local.get $x)

    (if
      (then
        (i32.const 91491)
        (i32.const 2727)
        (i32.store)

        (i32.const 63456)
        (i32.const 456345)
        (i32.store)

        (i32.const 1373)
        (i32.const 143793)
        (i32.store)

        (i32.const 7343)
        (i32.const 378343)
        (i32.store)

        (i32.const 1437893)
        (i32.const 437893)
        (i32.store)

        (i32.const 13437)
        (i32.const 37713)
        (i32.store)
      )
      (else
        (i32.const 91491)
        (i32.const 2727)
        (i32.store)

        (i32.const 63456)
        (i32.const 456345)
        (i32.store)

        (i32.const 1373)
        (i32.const 143793)
        (i32.store)

        (i32.const 7343)
        (i32.const 378343)
        (i32.store)

        (i32.const 1437893)
        (i32.const 437893)
        (i32.store)

        (i32.const 13437)
        (i32.const 37713)
        (i32.store)
      )
    )

    (local.get $y)
    (i32.load)
  )
)
