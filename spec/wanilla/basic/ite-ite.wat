(module
  (func (export "f")
    (param $x i32)
    (param $y i32)
    (result i32)

    (local.get $x)
    (if
      (then
        (local.get $y)
        (if
          (then
            (i32.const 42)
            (return)
          )
          (else
            (i32.const 42)
            (return)
          )
        )
      )
      (else
        (local.get $y)
        (if
          (then
            (i32.const 84)
            (return)
          )
          (else
            (i32.const 84)
            (return)
          )
        )
      )
    )
    (i32.const 0)
  )

  (func (export "g")
    (param $x i32)
    (param $y i32)
    (result i32)

    (local.get $x)
    (if
      (then
        (local.get $y)
        (if
          (then
            (i32.const 42)
            (return)
          )
          (else
            (i32.const 84)
            (return)
          )
        )
      )
      (else
        (local.get $y)
        (if
          (then
            (i32.const 42)
            (return)
          )
          (else
            (i32.const 84)
            (return)
          )
        )
      )
    )
    (i32.const 0)
  )

  (func (export "ST")
    (param $x i32)
    (param $y i32)
    (result i32)

    (local.get $x)
    (if
      (then
        (local.get $x)
        (if
          (then
            (local.get $y)
            (return)
          )
          (else
            (i32.const 0)
            (return)
          )
        )
      )
      (else
        (local.get $x)
        (if
          (then
            (i32.const 0)
            (return)
          )
          (else
            (local.get $y)
            (return)
          )
        )
      )
    )
    (i32.const 0)
  )

  (func (export "i")
    (param $x i32)
    (param $y i32)
    (result i32)

    (local.get $x)
    (if
      (then
        (local.get $y)
        (if
          (then
            (i32.const 42)
            (return)
          )
          (else
            (i32.const 42)
            (return)
          )
        )
      )
      (else
        (local.get $y)
        (if
          (then
            (i32.const 42)
            (return)
          )
          (else
            (i32.const 42)
            (return)
          )
        )
      )
    )
    (i32.const 0)
  )
)
