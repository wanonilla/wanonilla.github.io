(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32) (result i32)))
  (import "env" "eval" (func (;0;) (type 0)))
  (func (;1;) (type 2))
  (func (;2;) (type 3) (param i32 i32 i32)
    local.get 0
    local.get 1
    i32.or
    i32.const 7
    i32.le_u
    if  ;; label = @1
      local.get 1
      i32.const 3
      i32.shl
      local.get 0
      i32.add
      i32.const 1056
      i32.add
      local.get 2
      i32.store8
    end
    i32.const 1040
    i32.load
    call 0)
  (func (;3;) (type 1) (result i32)
    global.get 0)
  (func (;4;) (type 0) (param i32)
    local.get 0
    global.set 0)
  (func (;5;) (type 4) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (func (;6;) (type 1) (result i32)
    i32.const 1124)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 66672))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 1))
  (export "update_game_state" (func 2))
  (export "__errno_location" (func 6))
  (export "stackSave" (func 3))
  (export "stackRestore" (func 4))
  (export "stackAlloc" (func 5))
  (export "__indirect_function_table" (table 0))
  (data (;0;) (i32.const 1024) "TRUSTED")
  (data (;1;) (i32.const 1041) "\04")
  (data (;2;) (i32.const 1056) "0000000000000000000000000000000000000000000000000000000000000000"))
