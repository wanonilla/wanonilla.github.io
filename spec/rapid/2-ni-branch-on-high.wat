(module
  (memory 1 1)

  ;; 2-ni-branch-on-high
  (func (export "f")
    (param $h i32)
    (param $h2 i32)
    (result i32)
    (local $counter i32)

    (local.get $h)
    (i32.eqz)
    (if
      (then
        (local.get $counter)
        (i32.const 5)
        (i32.store)

        (local.get $counter)
        (i32.const 4)
        (i32.add)
        (local.set $counter)
      )
      (else
        (local.get $counter)
        (i32.const 5)
        (i32.store)

        (local.get $counter)
        (i32.const 4)
        (i32.add)
        (local.set $counter)
      )
    )
    (local.get $counter)
  )
)
