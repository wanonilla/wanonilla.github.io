(module
  (type (;0;) (func))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (result i64)))
  (import "env" "trusted_log" (func (;0;) (type 0)))
  (import "env" "untrusted_log" (func (;1;) (type 0)))
  (import "mem" "mem" (memory 256 256))
  (func (;2;) (type 0))
  (func (;3;) (type 0)
    i32.const 1024
    i64.const 0
    i64.store
    i32.const 1032
    i64.const 0
    i64.store)
  (func (;4;) (type 0)
    call 9
    i64.const 0
    i64.ne
    if  ;; label = @1
      call 0
      call 3
    end
    call 1)
  (func (;5;) (type 1) (result i32)
    global.get 0)
  (func (;6;) (type 2) (param i32)
    local.get 0
    global.set 0)
  (func (;7;) (type 3) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (func (;8;) (type 1) (result i32)
    i32.const 1424)
  (func (;9;) (type 4) 
      i32.const 1024
      i64.load
      i32.const 1032
      i64.load
      i64.or
  )
  (table (;0;) 1 1 funcref)
  (global (;0;) (mut i32) (i32.const 66976))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 2))
  (export "__errno_location" (func 8))
  (export "stackSave" (func 5))
  (export "stackRestore" (func 6))
  (export "stackAlloc" (func 7))
  (export "__indirect_function_table" (table 0)))
