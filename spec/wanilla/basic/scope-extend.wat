(module
  (func (export "f")
    (param $x i32)
    (result i32)
    (local $y i32)

    (block $b1
      (block $b2
        (block $b3
          (block $b4
            (local.get $x)
            (br_if $b4)
            (br $b3)
          )
          (br $b2)
        )
        (br $b1)
      )
      (i32.const 1)
      (local.set $y)
    )

    (local.get $y)
  )
)
