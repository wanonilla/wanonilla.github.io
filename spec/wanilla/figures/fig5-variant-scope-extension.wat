(module
  (type (;0;) (func))
  (type (;1;) (func (result i64)))
  (import "env" "authorize_and_execute" (func $authorize_and_execute (type 0)))
  (import "env" "untrusted_log" (func $untrusted_log (type 0)))
  (import "mem" "mem" (memory 256 256))
  (func $sanitize (type 0)
    i32.const 1024
    i64.const 0
    i64.store
    i32.const 1032
    i64.const 0
    i64.store
  )
  (func $has_session (type 1) 
      i32.const 1024
      i64.load
      i32.const 1032
      i64.load
      i64.or
  )
  (func $process
    block
      block
        block
          call $has_session
          i64.const 0
          i64.ne
          br_if 1
        end
        global.get 0
        br_if 1
      end
      call $authorize_and_execute
      call $sanitize
    end
    call $untrusted_log)
  (table (;0;) 1 1 funcref)
  (global (;0;) (mut i32) (i32.const 1))
  (export "memory" (memory 0))
)
