(module
  (func (export "label-change")
    (param $secret i32) (result i32)
    (local $a00 i32)
    (local $a01 i32)
    (local $a02 i32)
    (local $a03 i32)
    (local $a04 i32)
    (local $a05 i32)
    (local $a06 i32)
    (local $a07 i32)
    (local $a08 i32)
    (local $a09 i32)
    (local $a10 i32)
    (local $a11 i32)
    (local $a12 i32)
    (local $a13 i32)
    (local $a14 i32)
    (local $a15 i32)
    (local $a16 i32)
    (local $a17 i32)
    (local $a18 i32)
    (local $a19 i32)
    (local $counter i32)

    (loop $while
      (local.get $a18)
      (local.set $a19)

      (local.get $a17)
      (local.set $a18)

      (local.get $a16)
      (local.set $a17)

      (local.get $a15)
      (local.set $a16)

      (local.get $a14)
      (local.set $a15)

      (local.get $a13)
      (local.set $a14)

      (local.get $a12)
      (local.set $a13)

      (local.get $a11)
      (local.set $a12)

      (local.get $a10)
      (local.set $a11)

      (local.get $a09)
      (local.set $a10)

      (local.get $a08)
      (local.set $a09)

      (local.get $a07)
      (local.set $a08)

      (local.get $a06)
      (local.set $a07)

      (local.get $a05)
      (local.set $a06)

      (local.get $a04)
      (local.set $a05)

      (local.get $a03)
      (local.set $a04)

      (local.get $a02)
      (local.set $a03)

      (local.get $a01)
      (local.set $a02)

      (local.get $a00)
      (local.set $a01)

      (local.get $secret)
      (local.set $a00)

      (local.get $counter)
      (i32.const 1)
      (i32.add)
      (local.tee $counter)
      (i32.const 50)
      (i32.le_u)

      (br_if $while)
    )
    (local.get $a19)
  )
)
