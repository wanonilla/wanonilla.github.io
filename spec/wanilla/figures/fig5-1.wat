(module
  (type (;0;) (func))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32) (result i32)))
  (import "env" "trusted_log" (func (;0;) (type 0)))
  (import "env" "untrusted_log" (func (;1;) (type 0)))
  (func (;2;) (type 0))
  (func (;3;) (type 0)
    call 0
    i32.const 1024
    i64.load
    i32.const 1032
    i64.load
    i64.or
    i64.const 0
    i64.ne
    if  ;; label = @1
      i32.const 1024
      i64.const 0
      i64.store
      i32.const 1032
      i64.const 0
      i64.store
    end
    call 1)
  (func (;4;) (type 1) (result i32)
    global.get 0)
  (func (;5;) (type 2) (param i32)
    local.get 0
    global.set 0)
  (func (;6;) (type 3) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (func (;7;) (type 1) (result i32)
    i32.const 1424)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 66976))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 2))
  (export "process" (func 3))
  (export "__errno_location" (func 7))
  (export "stackSave" (func 4))
  (export "stackRestore" (func 5))
  (export "stackAlloc" (func 6))
  (export "__indirect_function_table" (table 0)))
