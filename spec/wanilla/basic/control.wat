(module
  (func (export "ifthenelse") (param i32) (result i32)
    (local.get 0)
    (if (result i32)
      (then
        (i32.const 0)
      )
      (else
        (i32.const 1)
      )
    )
  )

  (func (export "ifthenelse2") (param i32) (result i32) (local i32)
    (i32.ne (local.get 0) (i32.const 0))
    (if
      (then
        (local.set 1 (i32.const 1))
      )
    )
    (i32.eq (local.get 0) (i32.const 0))
    (if
      (then
        (local.set 1 (i32.const 1))
      )
    )
    (local.get 1)
  )

  (func (export "loop") (param $x i32) (result i32)
    (block
      (loop $loop_pos
        (br_if 1
          (i32.eqz (local.get $x))
        )
        (local.set $x
          (i32.sub
            (local.get $x)
            (i32.const 1)
          )
        )
        (br $loop_pos)
      )
    )
    (i32.const 42)
  )
)
