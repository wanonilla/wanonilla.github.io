(module
  (memory 256 256)

  ;; 9-ni-equal-output
  (func (export "f")
    (param $k i32)
    (param $lo i32)
    (param $hi i32)
    (local $i i32)

    (local.get $lo)
    (local.set $hi)

    (loop $while
      (local.get $i)
      (local.get $hi)
      (i32.store)

      (local.get $i)
      (i32.const 4)
      (i32.add)
      (local.set $i)

      (local.get $hi)
      (i32.const 1)
      (i32.add)
      (local.set $hi)

      (local.get $hi)
      (local.get $k)
      (i32.lt_u)
      (br_if $while)
    )
  )
)
