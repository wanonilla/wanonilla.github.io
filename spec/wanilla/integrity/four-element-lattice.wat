(module
  (func (export "f") (param $pu i32) (param $st i32) (result i32 i32 i32 i32)
    ;; PT
    (i32.const 1)
    (i32.const 1)
    (local.get $pu)
    (local.get $st)
    (i32.eq)
    (select)

    ;; PU
    (local.get $pu)
    (local.get $pu)
    (local.get $st)
    (select)

    ;; ST
    (local.get $st)
    (local.get $st)
    (local.get $pu)
    (select)

    ;; SU
    (i32.const 1)
    (local.get $st)
    (local.get $pu)
    (select)
  )
)
