;; Based on Dynamic vs. Static Flow-Sensitive Security Analysis, Russo & Sabelfeld, 2010
;; Compiled from the following C code using Emscripten respectively no optimization flags, -O1, -O2, and -03
;;
;; int f(int secret) {
;;     int y = 0;
;;     int x = 0;
;;     int z = 0;
;;
;;     while (y < 10) {
;;         z += x;
;;
;;         if (y == 5) {
;;             x = secret;
;;             y = 10;
;;         }
;;         y++;
;;         x++;
;;     }
;;
;;     return z;
;; }

(module
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 5243920))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))

  (func (export "rs10") (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    i32.const 0
    local.set 4
    local.get 3
    local.get 4
    i32.store offset=8
    i32.const 0
    local.set 5
    local.get 3
    local.get 5
    i32.store offset=4
    i32.const 0
    local.set 6
    local.get 3
    local.get 6
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=8
        local.set 7
        i32.const 10
        local.set 8
        local.get 7
        local.set 9
        local.get 8
        local.set 10
        local.get 9
        local.get 10
        i32.lt_s
        local.set 11
        i32.const 1
        local.set 12
        local.get 11
        local.get 12
        i32.and
        local.set 13
        local.get 13
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=4
        local.set 14
        local.get 3
        i32.load
        local.set 15
        local.get 15
        local.get 14
        i32.add
        local.set 16
        local.get 3
        local.get 16
        i32.store
        local.get 3
        i32.load offset=8
        local.set 17
        i32.const 5
        local.set 18
        local.get 17
        local.set 19
        local.get 18
        local.set 20
        local.get 19
        local.get 20
        i32.eq
        local.set 21
        i32.const 1
        local.set 22
        local.get 21
        local.get 22
        i32.and
        local.set 23
        block  ;; label = @3
          local.get 23
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=12
          local.set 24
          local.get 3
          local.get 24
          i32.store offset=4
          i32.const 10
          local.set 25
          local.get 3
          local.get 25
          i32.store offset=8
        end
        local.get 3
        i32.load offset=8
        local.set 26
        i32.const 1
        local.set 27
        local.get 26
        local.get 27
        i32.add
        local.set 28
        local.get 3
        local.get 28
        i32.store offset=8
        local.get 3
        i32.load offset=4
        local.set 29
        i32.const 1
        local.set 30
        local.get 29
        local.get 30
        i32.add
        local.set 31
        local.get 3
        local.get 31
        i32.store offset=4
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 3
    i32.load
    local.set 32
    local.get 32
    return
  )

  (func (export "rs10-O1") (param i32) (result i32)
    (local i32 i32 i32 i32)
    i32.const 0
    local.set 1
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 1
      local.get 2
      i32.add
      local.set 1
      local.get 0
      local.get 2
      local.get 3
      i32.const 5
      i32.eq
      local.tee 4
      select
      i32.const 1
      i32.add
      local.set 2
      i32.const 11
      local.get 3
      i32.const 1
      i32.add
      local.get 4
      select
      local.tee 3
      i32.const 10
      i32.lt_s
      br_if 0 (;@1;)
    end
    local.get 1
  )

  (func (export "rs10-O2") (param i32) (result i32)
    i32.const 15
  )

  (func (export "rs10-O3") (param i32) (result i32)
    i32.const 15
  )
)
