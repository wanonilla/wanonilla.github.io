(module
  (func (export "f")
    (param $h i32)
    (param $l i32)
    (result i32)
    (local $res i32)

    (loop $loop1
        (local.get $h)
        (i32.const 1)
        (i32.sub)
        (local.tee $h)
        (i32.const 0)
        (i32.ne)
        (br_if $loop1)

        (loop $loop2
          (local.get $res)
          (i32.const 1)
          (i32.add)
          (local.set $res)

          (local.get $l)
          (i32.const 1)
          (i32.sub)
          (local.tee $l)
          (i32.const 0)
          (i32.ne)
          (br_if $loop2)
        )
    )
    (local.get $res)
  )
)
