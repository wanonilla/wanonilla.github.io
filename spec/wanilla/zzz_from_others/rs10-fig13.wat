(module
  (import "stdlib" "output" (func $output (param i32)))

  ;; Dynamic vs. Static Flow-Sensitive Security Analysis, Russo & Sabelfeld, 2010
  (func (export "f")
    (param $secret i32)
    (local $x i32)
    (local $y i32)

    (block $break
      ;; loop if y < 10
      (local.get $y)
      (i32.const 10)
      (i32.ge_u)
      (br_if $break)

      (loop $while
        ;; output_L(x);
        (local.get $x)
        (call $output)

        ;; if y = 5
        (local.get $y)
        (i32.const 5)
        (i32.eq)
        (if
          (then
            ;; x := secret
            (local.get $secret)
            (local.set $x)
            ;; y := 10
            (i32.const 10)
            (local.set $y)
          )
          (else
            ;; skip
            nop
          )
        )

        ;; y := y + 1
        (local.get $y)
        (i32.const 1)
        (i32.add)
        (local.set $y)
        ;; x := x + 1
        (local.get $x)
        (i32.const 1)
        (i32.add)
        (local.set $x)

        ;; loop if y < 10
        (local.get $y)
        (i32.const 10)
        (i32.lt_u)
        (br_if $while)
      )
    )
  )
)
