(module
  (func (export "f")
    (param $secret i32)
    (result i32)
    (local $result i32)
    (local $counter i32)

    (loop $loop
      (i32.const 1)
      (local.get $result)
      (i32.add)
      (local.set $result)

      (local.get $counter)
      (i32.const 50)
      (i32.eq)
      (if
        (then
          (i32.const 1)
          (i32.const 0)
          (local.get $secret)
          (select)
          (local.get $counter)
          (i32.add)
          (local.set $counter)
        )
        (else)
      )

      (local.get $counter)
      (i32.const 1)
      (i32.add)
      (local.tee $counter)
      (i32.const 100)
      (i32.lt_u)
      (br_if $loop)
    )

    (local.get $result)
  )
)
