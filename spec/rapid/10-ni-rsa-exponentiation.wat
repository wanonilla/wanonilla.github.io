(module
  (import "mem" "mem" (memory 256 256))

  ;; 10-ni-rsa-exponentiation
  (func (export "f")
    (param $blength i32)
    (param $n i32)
    (param $a i32)
    (result i32 i32)
    (local $c i32)
    (local $d i32)
    (local $i i32)

    (i32.const 1)
    (local.set $d)

    (local.get $blength)
    (local.set $i)

    (block $break
      (local.get $i)
      (i32.const 0)
      (i32.lt_s)
      (br_if $break)

      (loop $while
        (local.get $i)
        (i32.const 1)
        (i32.sub)
        (local.set $i)

        (local.get $i)
        (i32.const 2)
        (i32.mul)
        (local.set $i)

        (local.get $d)
        (local.get $d)
        (i32.mul)
        (local.get $n)
        (i32.rem_u)
        (local.set $d)

        (block
          (local.get $i)
          (i32.load)
          (i32.const 1)
          (i32.ne)
          (br_if 0)

          (local.get $c)
          (i32.const 1)
          (i32.add)
          (local.set $c)

          (local.get $d)
          (local.get $a)
          (i32.mul)
          (local.get $n)
          (i32.rem_u)
          (local.set $d)
        )
      )

      (local.get $i)
      (i32.const 0)
      (i32.ge_s)
      (br_if $break)
    )

    (local.get $blength)
    (local.get $i)
  )
)
