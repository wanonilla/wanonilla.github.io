(module
  (func $fib
    (param $n i32)
    (result i32)
    (local $x i32)
    (local $y i32)

    (i32.const 1)
    (local.set $y)

    (block
      (local.get $n)
      (i32.eqz)
      (br_if 0)

      (loop $while
        (local.get $x)
        (local.get $y)
        (i32.add)
        (local.tee $x)
        (local.get $y)
        (i32.sub)
        (local.set $y)
        (local.get $n)
        (i32.const 1)
        (i32.sub)
        (local.tee $n)
        (i32.const 0)
        (i32.gt_u)
        (br_if $while)
      )
    )

    (local.get $x)
  )
  
  (func (export "f")
    (param $h i32)
    (param $l i32)
    (result i32 i32)

    (local.get $h)
    (call $fib)

    (local.get $l)
    (call $fib)
  )
)
