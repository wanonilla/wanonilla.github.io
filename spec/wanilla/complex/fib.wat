(module
  (func (export "fib")
    (param $n i32)
    (result i32)
    (local $f1 i32)
    (local $f2 i32)

    (i32.const 1)
    (local.set $f2)

    (local.get $n)
    (i32.const 0)
    (i32.gt_u)
    (if
      (then
        (loop $while
          (local.get $f1)
          (local.get $f2)
          (i32.add)
          (local.tee $f1)
          (local.get $f2)
          (i32.sub)
          (local.set $f2)
          (local.get $n)
          (i32.const 1)
          (i32.sub)
          (local.tee $n)
          (i32.const 0)
          (i32.gt_u)
          (br_if $while)
        )
      )
      (else)
    )
    (local.get $f1)
  )
)