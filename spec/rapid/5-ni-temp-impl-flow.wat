(module
  (memory 256 256)

  ;; 5-ni-temp-impl-flow
  (func (export "f")
    (param $h i32)
    (result i32 i32)
    (local $l i32)
    (local $counter i32)

    (i32.const 5)
    (local.set $l)

    (local.get $h)
    (i32.const 1)
    (i32.eq)
    (if
      (then
        (local.get $l)
        (i32.const 1)
        (i32.sub)
        (local.set $l)
      )
      (else)
    )

    (i32.const 4)
    (local.set $l)

    (local.get $counter)
    (local.get $l)
    (i32.store)

    (local.get $counter)
    (i32.const 1)
    (i32.add)
    (local.set $counter)

    (local.get $l)
    (local.get $counter)
  )
)
