(module
  (func (export "loop-the-loop") (param i32 i32) (result i32) (local i32)
    (local.get 0)
    (local.set 2)
    (block
      (loop $loop1
        (loop $loop2
          (local.get 0)
          (i32.const 1)
          (i32.sub)
          (local.tee 0)
          (br_if $loop2)
        )
        (local.get 2)
        (local.set 0)
        (local.get 1)
        (i32.const 1)
        (i32.sub)
        (local.tee 1)
        (br_if $loop1)
      )
    )
    (local.get 1)
  )
)
