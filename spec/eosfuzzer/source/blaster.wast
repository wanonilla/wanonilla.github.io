(module
  (type (;0;) (func (param i32 i64 i32 i32)))
  (type (;1;) (func))
  (type (;2;) (func (result i64)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32 i64 i32 i32 i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func (param i32 i32) (result i32)))
  (type (;8;) (func (param i32) (result i32)))
  (type (;9;) (func (param i64 i64 i64)))
  (type (;10;) (func (param i64 i64 i32) (result i32)))
  (type (;11;) (func (param i32)))
  (import "env" "current_time" (func (;0;) (type 2)))
  (import "env" "eosio_assert" (func (;1;) (type 3)))
  (import "env" "memcpy" (func (;2;) (type 4)))
  (import "env" "send_deferred" (func (;3;) (type 5)))
  (import "env" "action_data_size" (func (;4;) (type 6)))
  (import "env" "read_action_data" (func (;5;) (type 7)))
  (import "env" "abort" (func (;6;) (type 1)))
  (import "env" "set_blockchain_parameters_packed" (func (;7;) (type 3)))
  (import "env" "get_blockchain_parameters_packed" (func (;8;) (type 7)))
  (import "env" "memset" (func (;9;) (type 4)))
  (func (;10;) (type 1))
  (func (;11;) (type 0) (param i32 i64 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      local.get 3
      local.get 2
      i32.add
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 1
      i32.wrap_i64
      local.set 5
      local.get 4
      i32.const 28
      i32.add
      local.set 6
      local.get 4
      i32.const 48
      i32.add
      i32.const 36
      i32.add
      local.set 7
      local.get 4
      i32.const 60
      i32.add
      local.set 8
      local.get 4
      i32.const 92
      i32.add
      local.set 9
      local.get 4
      i32.const 100
      i32.add
      local.set 10
      local.get 4
      i32.const 8
      i32.add
      local.set 11
      local.get 4
      i32.const 24
      i32.add
      local.set 12
      local.get 4
      i32.const 32
      i32.add
      local.set 13
      local.get 4
      i32.const 48
      i32.add
      i32.const 40
      i32.add
      local.set 14
      loop  ;; label = @2
        call 0
        local.set 15
        local.get 8
        i32.const 0
        i32.store
        local.get 4
        i32.const 48
        i32.add
        i32.const 16
        i32.add
        i32.const 0
        i32.store8
        local.get 4
        i32.const 48
        i32.add
        i32.const 20
        i32.add
        local.tee 16
        i64.const 0
        i64.store align=4
        local.get 4
        i32.const 48
        i32.add
        i32.const 28
        i32.add
        i64.const 0
        i64.store align=4
        local.get 7
        i64.const 0
        i64.store align=4
        local.get 9
        i64.const 0
        i64.store align=4
        local.get 10
        i64.const 0
        i64.store align=4
        local.get 4
        local.get 15
        i64.const 1000000
        i64.div_u
        i32.wrap_i64
        i32.const 60
        i32.add
        i32.store offset=48
        local.get 0
        i64.load
        local.set 15
        local.get 11
        i64.const -7122859525593366528
        i64.store
        local.get 4
        i32.const 16
        i32.add
        local.tee 17
        i64.const 0
        i64.store
        local.get 12
        i32.const 0
        i32.store
        local.get 4
        i64.const 6138663588472832000
        i64.store
        local.get 4
        local.get 2
        i32.store offset=112
        local.get 17
        i32.const 16
        call 24
        local.tee 18
        i32.store
        local.get 18
        local.get 15
        i64.store
        local.get 18
        i64.const 3617214756542218240
        i64.store offset=8
        local.get 6
        i64.const 0
        i64.store align=4
        local.get 4
        i32.const 36
        i32.add
        local.tee 19
        i32.const 0
        i32.store
        local.get 12
        local.get 18
        i32.const 16
        i32.add
        local.tee 18
        i32.store
        local.get 4
        i32.const 20
        i32.add
        local.tee 20
        local.get 18
        i32.store
        local.get 6
        i32.const 4
        call 12
        local.get 13
        i32.load
        local.get 6
        i32.load
        local.tee 18
        i32.sub
        i32.const 3
        i32.gt_s
        i32.const 8192
        call 1
        local.get 18
        local.get 4
        i32.const 112
        i32.add
        i32.const 4
        call 2
        drop
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 14
              i32.load
              local.tee 18
              local.get 9
              i32.load
              i32.ge_u
              br_if 0 (;@5;)
              local.get 18
              local.get 4
              i64.load
              i64.store
              local.get 18
              i32.const 0
              i32.store offset=16
              local.get 18
              i32.const 8
              i32.add
              local.get 11
              i64.load
              i64.store
              local.get 18
              i32.const 20
              i32.add
              local.tee 21
              i64.const 0
              i64.store align=4
              local.get 18
              local.get 17
              i32.load
              i32.store offset=16
              local.get 21
              local.get 20
              i32.load
              i32.store
              local.get 18
              i32.const 24
              i32.add
              local.get 12
              i32.load
              i32.store
              local.get 12
              i32.const 0
              i32.store
              local.get 18
              i64.const 0
              i64.store offset=28 align=4
              local.get 20
              i32.const 0
              i32.store
              local.get 17
              i32.const 0
              i32.store
              local.get 18
              i32.const 36
              i32.add
              local.tee 21
              i32.const 0
              i32.store
              local.get 18
              local.get 6
              i32.load
              i32.store offset=28
              local.get 18
              i32.const 32
              i32.add
              local.get 13
              i32.load
              i32.store
              local.get 21
              local.get 19
              i32.load
              i32.store
              local.get 13
              i32.const 0
              i32.store
              local.get 6
              i32.const 0
              i32.store
              local.get 19
              i32.const 0
              i32.store
              local.get 14
              local.get 14
              i32.load
              i32.const 40
              i32.add
              i32.store
              local.get 17
              i32.load
              local.tee 18
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 7
            local.get 4
            call 13
            block  ;; label = @5
              local.get 6
              i32.load
              local.tee 18
              i32.eqz
              br_if 0 (;@5;)
              local.get 13
              local.get 18
              i32.store
              local.get 18
              call 26
            end
            local.get 17
            i32.load
            local.tee 18
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 20
          local.get 18
          i32.store
          local.get 18
          call 26
        end
        local.get 11
        i64.const -4148188678444810240
        i64.store
        local.get 17
        i64.const 0
        i64.store
        local.get 12
        i32.const 0
        i32.store
        local.get 4
        i64.const -3841124771198249616
        i64.store
        local.get 0
        i64.load
        local.set 15
        local.get 17
        i32.const 16
        call 24
        local.tee 18
        i32.store
        local.get 18
        local.get 15
        i64.store
        local.get 18
        i64.const 3617214756542218240
        i64.store offset=8
        local.get 6
        i64.const 0
        i64.store align=4
        local.get 19
        i32.const 0
        i32.store
        local.get 12
        local.get 18
        i32.const 16
        i32.add
        local.tee 18
        i32.store
        local.get 20
        local.get 18
        i32.store
        local.get 6
        i32.const 1
        call 12
        local.get 13
        i32.load
        local.set 21
        local.get 6
        i32.load
        local.set 18
        local.get 4
        i32.const 1
        i32.store8 offset=112
        local.get 21
        local.get 18
        i32.sub
        i32.const 0
        i32.gt_s
        i32.const 8192
        call 1
        local.get 18
        local.get 4
        i32.const 112
        i32.add
        i32.const 1
        call 2
        drop
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 14
              i32.load
              local.tee 18
              local.get 9
              i32.load
              i32.ge_u
              br_if 0 (;@5;)
              local.get 18
              local.get 4
              i64.load
              i64.store
              local.get 18
              i32.const 0
              i32.store offset=16
              local.get 18
              i32.const 8
              i32.add
              local.get 11
              i64.load
              i64.store
              local.get 18
              i32.const 20
              i32.add
              local.tee 21
              i64.const 0
              i64.store align=4
              local.get 18
              local.get 17
              i32.load
              i32.store offset=16
              local.get 21
              local.get 20
              i32.load
              i32.store
              local.get 18
              i32.const 24
              i32.add
              local.get 12
              i32.load
              i32.store
              local.get 12
              i32.const 0
              i32.store
              local.get 18
              i64.const 0
              i64.store offset=28 align=4
              local.get 20
              i32.const 0
              i32.store
              local.get 17
              i32.const 0
              i32.store
              local.get 18
              i32.const 36
              i32.add
              local.tee 21
              i32.const 0
              i32.store
              local.get 18
              local.get 6
              i32.load
              i32.store offset=28
              local.get 18
              i32.const 32
              i32.add
              local.get 13
              i32.load
              i32.store
              local.get 21
              local.get 19
              i32.load
              i32.store
              local.get 13
              i32.const 0
              i32.store
              local.get 6
              i32.const 0
              i32.store
              local.get 19
              i32.const 0
              i32.store
              local.get 14
              local.get 14
              i32.load
              i32.const 40
              i32.add
              i32.store
              local.get 17
              i32.load
              local.tee 17
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 7
            local.get 4
            call 13
            block  ;; label = @5
              local.get 6
              i32.load
              local.tee 18
              i32.eqz
              br_if 0 (;@5;)
              local.get 13
              local.get 18
              i32.store
              local.get 18
              call 26
            end
            local.get 17
            i32.load
            local.tee 17
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 20
          local.get 17
          i32.store
          local.get 17
          call 26
        end
        local.get 16
        local.get 5
        call 0
        i64.const 1000000
        i64.div_u
        i32.wrap_i64
        i32.sub
        i32.store
        local.get 4
        call 0
        i64.const 1000000
        i64.div_u
        i32.wrap_i64
        i32.const 86400
        i32.add
        i32.store offset=48
        local.get 4
        local.get 2
        i64.extend_i32_u
        i64.store offset=8
        local.get 4
        local.get 1
        i64.store
        local.get 0
        i64.load
        local.set 15
        local.get 4
        i32.const 112
        i32.add
        local.get 4
        i32.const 48
        i32.add
        call 14
        local.get 4
        local.get 15
        local.get 4
        i32.load offset=112
        local.tee 17
        local.get 4
        i32.load offset=116
        local.get 17
        i32.sub
        i32.const 0
        call 3
        block  ;; label = @3
          local.get 4
          i32.load offset=112
          local.tee 17
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 17
          i32.store offset=116
          local.get 17
          call 26
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 4
        i32.const 48
        i32.add
        call 15
        drop
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        br_if 0 (;@2;)
      end
    end
    local.get 4
    i32.const 128
    i32.add
    global.set 0)
  (func (;12;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=8
              local.tee 2
              local.get 0
              i32.load offset=4
              local.tee 3
              i32.sub
              local.get 1
              i32.ge_u
              br_if 0 (;@5;)
              local.get 3
              local.get 0
              i32.load
              local.tee 4
              i32.sub
              local.tee 5
              local.get 1
              i32.add
              local.tee 6
              i32.const -1
              i32.le_s
              br_if 2 (;@3;)
              i32.const 2147483647
              local.set 7
              block  ;; label = @6
                local.get 2
                local.get 4
                i32.sub
                local.tee 2
                i32.const 1073741822
                i32.gt_u
                br_if 0 (;@6;)
                local.get 6
                local.get 2
                i32.const 1
                i32.shl
                local.tee 2
                local.get 2
                local.get 6
                i32.lt_u
                select
                local.tee 7
                i32.eqz
                br_if 2 (;@4;)
              end
              local.get 7
              call 24
              local.set 2
              br 3 (;@2;)
            end
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            loop  ;; label = @5
              local.get 3
              i32.const 0
              i32.store8
              local.get 0
              local.get 0
              i32.load
              i32.const 1
              i32.add
              local.tee 3
              i32.store
              local.get 1
              i32.const -1
              i32.add
              local.tee 1
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
          end
          i32.const 0
          local.set 7
          i32.const 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 0
        call 32
        unreachable
      end
      local.get 2
      local.get 7
      i32.add
      local.set 7
      local.get 3
      local.get 1
      i32.add
      local.get 4
      i32.sub
      local.set 4
      local.get 2
      local.get 5
      i32.add
      local.tee 5
      local.set 3
      loop  ;; label = @2
        local.get 3
        i32.const 0
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        br_if 0 (;@2;)
      end
      local.get 2
      local.get 4
      i32.add
      local.set 4
      local.get 5
      local.get 0
      i32.const 4
      i32.add
      local.tee 6
      i32.load
      local.get 0
      i32.load
      local.tee 1
      i32.sub
      local.tee 3
      i32.sub
      local.set 2
      block  ;; label = @2
        local.get 3
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        local.get 3
        call 2
        drop
        local.get 0
        i32.load
        local.set 1
      end
      local.get 0
      local.get 2
      i32.store
      local.get 6
      local.get 4
      i32.store
      local.get 0
      i32.const 8
      i32.add
      local.get 7
      i32.store
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call 26
      return
    end)
  (func (;13;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.get 0
        i32.load
        local.tee 2
        i32.sub
        i32.const 40
        i32.div_s
        local.tee 3
        i32.const 1
        i32.add
        local.tee 4
        i32.const 107374183
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 107374182
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.get 2
            i32.sub
            i32.const 40
            i32.div_s
            local.tee 2
            i32.const 53687090
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 2
            i32.const 1
            i32.shl
            local.tee 5
            local.get 5
            local.get 4
            i32.lt_u
            select
            local.tee 5
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 5
          i32.const 40
          i32.mul
          call 24
          local.set 2
          br 2 (;@1;)
        end
        i32.const 0
        local.set 5
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      call 32
      unreachable
    end
    local.get 1
    i64.load offset=16 align=4
    local.set 6
    local.get 1
    i64.const 0
    i64.store offset=16 align=4
    local.get 1
    i32.const 24
    i32.add
    local.tee 4
    i64.load align=4
    local.set 7
    local.get 4
    i64.const 0
    i64.store align=4
    local.get 1
    i32.const 32
    i32.add
    local.tee 4
    i64.load align=4
    local.set 8
    local.get 4
    i64.const 0
    i64.store align=4
    local.get 2
    local.get 3
    i32.const 40
    i32.mul
    i32.add
    local.tee 9
    local.get 1
    i64.load
    i64.store
    local.get 9
    local.get 6
    i64.store offset=16 align=4
    local.get 9
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 9
    i32.const 24
    i32.add
    local.get 7
    i64.store align=4
    local.get 9
    i32.const 32
    i32.add
    local.get 8
    i64.store align=4
    local.get 2
    local.get 5
    i32.const 40
    i32.mul
    i32.add
    local.set 10
    local.get 9
    i32.const 40
    i32.add
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 12
        local.get 0
        i32.load
        local.tee 1
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        local.get 12
        i32.sub
        local.set 13
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 9
          local.get 2
          i32.add
          local.tee 1
          i32.const -32
          i32.add
          local.get 12
          local.get 2
          i32.add
          local.tee 5
          i32.const -32
          i32.add
          i64.load
          i64.store
          local.get 1
          i32.const -40
          i32.add
          local.get 5
          i32.const -40
          i32.add
          i64.load
          i64.store
          local.get 1
          i32.const -24
          i32.add
          local.tee 3
          i64.const 0
          i64.store align=4
          local.get 1
          i32.const -16
          i32.add
          local.tee 4
          i32.const 0
          i32.store
          local.get 3
          local.get 5
          i32.const -24
          i32.add
          local.tee 14
          i64.load align=4
          i64.store align=4
          local.get 4
          local.get 5
          i32.const -16
          i32.add
          local.tee 3
          i32.load
          i32.store
          local.get 3
          i32.const 0
          i32.store
          local.get 1
          i32.const -12
          i32.add
          local.tee 3
          i64.const 0
          i64.store align=4
          local.get 1
          i32.const -4
          i32.add
          local.tee 1
          i32.const 0
          i32.store
          local.get 3
          local.get 5
          i32.const -12
          i32.add
          local.tee 4
          i64.load align=4
          i64.store align=4
          local.get 14
          i64.const 0
          i64.store align=4
          local.get 1
          local.get 5
          i32.const -4
          i32.add
          local.tee 5
          i32.load
          i32.store
          local.get 5
          i32.const 0
          i32.store
          local.get 4
          i64.const 0
          i64.store align=4
          local.get 13
          local.get 2
          i32.const -40
          i32.add
          local.tee 2
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 9
        local.get 2
        i32.add
        local.set 9
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 1
        local.get 0
        i32.load
        local.set 3
        br 1 (;@1;)
      end
      local.get 1
      local.set 3
    end
    local.get 0
    local.get 9
    i32.store
    local.get 0
    i32.const 4
    i32.add
    local.get 11
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 10
    i32.store
    block  ;; label = @1
      local.get 1
      local.get 3
      i32.eq
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const -12
          i32.add
          i32.load
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const -8
          i32.add
          local.get 5
          i32.store
          local.get 5
          call 26
        end
        local.get 1
        i32.const -40
        i32.add
        local.set 5
        block  ;; label = @3
          local.get 1
          i32.const -24
          i32.add
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const -20
          i32.add
          local.get 2
          i32.store
          local.get 2
          call 26
        end
        local.get 5
        local.set 1
        local.get 3
        local.get 5
        i32.ne
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call 26
    end)
  (func (;14;) (type 3) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const 0
    local.set 3
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i64.const 0
    i64.store align=4
    local.get 2
    i32.const 0
    i32.store
    local.get 2
    local.get 1
    call 18
    drop
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        call 12
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 3
        local.get 0
        i32.load
        local.set 0
        br 1 (;@1;)
      end
      i32.const 0
      local.set 0
    end
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 3
    i32.store offset=8
    local.get 2
    local.get 1
    call 19
    drop
    local.get 2
    local.get 1
    i32.const 24
    i32.add
    call 20
    local.get 1
    i32.const 36
    i32.add
    call 20
    local.get 1
    i32.const 48
    i32.add
    call 21
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;15;) (type 8) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=48
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 52
          i32.add
          local.tee 2
          i32.load
          local.tee 3
          local.get 1
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 3
            i32.const -16
            i32.add
            local.set 4
            block  ;; label = @5
              local.get 3
              i32.const -12
              i32.add
              i32.load
              local.tee 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.const -8
              i32.add
              local.get 5
              i32.store
              local.get 5
              call 26
            end
            local.get 4
            local.set 3
            local.get 1
            local.get 4
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 48
          i32.add
          i32.load
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        local.set 3
      end
      local.get 2
      local.get 1
      i32.store
      local.get 3
      call 26
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=36
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 40
          i32.add
          local.tee 2
          i32.load
          local.tee 3
          local.get 1
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const -12
              i32.add
              i32.load
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.const -8
              i32.add
              local.get 4
              i32.store
              local.get 4
              call 26
            end
            local.get 3
            i32.const -40
            i32.add
            local.set 4
            block  ;; label = @5
              local.get 3
              i32.const -24
              i32.add
              i32.load
              local.tee 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.const -20
              i32.add
              local.get 5
              i32.store
              local.get 5
              call 26
            end
            local.get 4
            local.set 3
            local.get 1
            local.get 4
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 36
          i32.add
          i32.load
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        local.set 3
      end
      local.get 2
      local.get 1
      i32.store
      local.get 3
      call 26
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=24
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 28
          i32.add
          local.tee 2
          i32.load
          local.tee 3
          local.get 1
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const -12
              i32.add
              i32.load
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.const -8
              i32.add
              local.get 4
              i32.store
              local.get 4
              call 26
            end
            local.get 3
            i32.const -40
            i32.add
            local.set 4
            block  ;; label = @5
              local.get 3
              i32.const -24
              i32.add
              i32.load
              local.tee 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.const -20
              i32.add
              local.get 5
              i32.store
              local.get 5
              call 26
            end
            local.get 4
            local.set 3
            local.get 1
            local.get 4
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 24
          i32.add
          i32.load
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        local.set 3
      end
      local.get 2
      local.get 1
      i32.store
      local.get 3
      call 26
    end
    local.get 0)
  (func (;16;) (type 9) (param i64 i64 i64)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    call 10
    block  ;; label = @1
      local.get 1
      local.get 0
      i64.ne
      br_if 0 (;@1;)
      local.get 2
      i64.const 4345283696866099200
      i64.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 0
      i32.store offset=12
      local.get 3
      i32.const 1
      i32.store offset=8
      local.get 3
      local.get 3
      i64.load offset=8
      i64.store
      local.get 1
      local.get 1
      local.get 3
      call 17
      drop
    end
    i32.const 0
    call 33
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;17;) (type 10) (param i64 i64 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    local.set 4
    local.get 3
    global.set 0
    local.get 2
    i32.load offset=4
    local.set 5
    local.get 2
    i32.load
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            call 4
            local.tee 7
            i32.eqz
            br_if 0 (;@4;)
            local.get 7
            i32.const 513
            i32.lt_u
            br_if 1 (;@3;)
            local.get 7
            call 37
            local.set 2
            br 2 (;@2;)
          end
          i32.const 0
          local.set 2
          br 2 (;@1;)
        end
        local.get 3
        local.get 7
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 2
        global.set 0
      end
      local.get 2
      local.get 7
      call 5
      drop
    end
    local.get 4
    i64.const 0
    i64.store offset=32
    local.get 4
    i64.const 0
    i64.store offset=40
    local.get 7
    i32.const 7
    i32.gt_u
    i32.const 8198
    call 1
    local.get 4
    i32.const 32
    i32.add
    local.get 2
    i32.const 8
    call 2
    drop
    local.get 7
    i32.const -4
    i32.and
    local.tee 3
    i32.const 8
    i32.ne
    i32.const 8198
    call 1
    local.get 4
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i32.const 4
    call 2
    drop
    local.get 3
    i32.const 12
    i32.ne
    i32.const 8198
    call 1
    local.get 4
    i32.const 32
    i32.add
    i32.const 12
    i32.add
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call 2
    drop
    local.get 4
    i32.const 20
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i32.store
    local.get 4
    i32.const 24
    i32.add
    local.get 2
    local.get 7
    i32.add
    i32.store
    local.get 4
    local.get 1
    i64.store offset=8
    local.get 4
    local.get 0
    i64.store
    local.get 4
    local.get 2
    i32.store offset=16
    local.get 4
    local.get 5
    i32.const 1
    i32.shr_s
    i32.add
    local.set 3
    local.get 4
    i32.load offset=44
    local.set 8
    local.get 4
    i32.load offset=40
    local.set 9
    local.get 4
    i64.load offset=32
    local.set 0
    block  ;; label = @1
      local.get 5
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load
      local.get 6
      i32.add
      i32.load
      local.set 6
    end
    local.get 3
    local.get 0
    local.get 9
    local.get 8
    local.get 6
    call_indirect (type 0)
    block  ;; label = @1
      local.get 7
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      call 40
    end
    local.get 4
    i32.const 48
    i32.add
    global.set 0
    i32.const 1)
  (func (;18;) (type 7) (param i32 i32) (result i32)
    (local i32 i64 i32 i32 i32 i32 i32)
    local.get 0
    local.get 0
    i32.load
    local.tee 2
    i32.const 10
    i32.add
    i32.store
    local.get 2
    i32.const 11
    i32.add
    local.set 2
    local.get 1
    i64.load32_u offset=12
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 1
      i32.add
      local.set 2
      local.get 3
      i64.const 7
      i64.shr_u
      local.tee 3
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 2
    i32.store
    local.get 1
    i64.load32_u offset=20
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 1
      i32.add
      local.set 2
      local.get 3
      i64.const 7
      i64.shr_u
      local.tee 3
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 2
    i32.store
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.tee 4
    local.get 1
    i32.load offset=24
    local.tee 5
    i32.sub
    i32.const 40
    i32.div_s
    i64.extend_i32_u
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 1
      i32.add
      local.set 2
      local.get 3
      i64.const 7
      i64.shr_u
      local.tee 3
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 2
    i32.store
    block  ;; label = @1
      local.get 5
      local.get 4
      i32.eq
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        i32.const 16
        i32.add
        local.set 2
        local.get 5
        i32.const 20
        i32.add
        i32.load
        local.tee 6
        local.get 5
        i32.load offset=16
        local.tee 7
        i32.sub
        local.tee 8
        i32.const 4
        i32.shr_s
        i64.extend_i32_u
        local.set 3
        loop  ;; label = @3
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 3
          i64.const 7
          i64.shr_u
          local.tee 3
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 7
          local.get 6
          i32.eq
          br_if 0 (;@3;)
          local.get 8
          i32.const -16
          i32.and
          local.get 2
          i32.add
          local.set 2
        end
        local.get 2
        local.get 5
        i32.const 32
        i32.add
        i32.load
        local.tee 6
        i32.add
        local.get 5
        i32.load offset=28
        local.tee 7
        i32.sub
        local.set 2
        local.get 6
        local.get 7
        i32.sub
        i64.extend_i32_u
        local.set 3
        loop  ;; label = @3
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 3
          i64.const 7
          i64.shr_u
          local.tee 3
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
        local.get 5
        i32.const 40
        i32.add
        local.tee 5
        local.get 4
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 0
      local.get 2
      i32.store
    end
    local.get 1
    i32.const 40
    i32.add
    i32.load
    local.tee 4
    local.get 1
    i32.load offset=36
    local.tee 5
    i32.sub
    i32.const 40
    i32.div_s
    i64.extend_i32_u
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 1
      i32.add
      local.set 2
      local.get 3
      i64.const 7
      i64.shr_u
      local.tee 3
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 2
    i32.store
    block  ;; label = @1
      local.get 5
      local.get 4
      i32.eq
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        i32.const 16
        i32.add
        local.set 2
        local.get 5
        i32.const 20
        i32.add
        i32.load
        local.tee 6
        local.get 5
        i32.load offset=16
        local.tee 7
        i32.sub
        local.tee 8
        i32.const 4
        i32.shr_s
        i64.extend_i32_u
        local.set 3
        loop  ;; label = @3
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 3
          i64.const 7
          i64.shr_u
          local.tee 3
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 7
          local.get 6
          i32.eq
          br_if 0 (;@3;)
          local.get 8
          i32.const -16
          i32.and
          local.get 2
          i32.add
          local.set 2
        end
        local.get 2
        local.get 5
        i32.const 32
        i32.add
        i32.load
        local.tee 6
        i32.add
        local.get 5
        i32.load offset=28
        local.tee 7
        i32.sub
        local.set 2
        local.get 6
        local.get 7
        i32.sub
        i64.extend_i32_u
        local.set 3
        loop  ;; label = @3
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 3
          i64.const 7
          i64.shr_u
          local.tee 3
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
        local.get 5
        i32.const 40
        i32.add
        local.tee 5
        local.get 4
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 0
      local.get 2
      i32.store
    end
    local.get 1
    i32.const 52
    i32.add
    i32.load
    local.tee 8
    local.get 1
    i32.load offset=48
    local.tee 5
    i32.sub
    i32.const 4
    i32.shr_s
    i64.extend_i32_u
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 1
      i32.add
      local.set 2
      local.get 3
      i64.const 7
      i64.shr_u
      local.tee 3
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 2
    i32.store
    block  ;; label = @1
      local.get 5
      local.get 8
      i32.eq
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        local.get 5
        i32.const 8
        i32.add
        i32.load
        local.tee 6
        i32.add
        i32.const 2
        i32.add
        local.get 5
        i32.load offset=4
        local.tee 7
        i32.sub
        local.set 2
        local.get 6
        local.get 7
        i32.sub
        i64.extend_i32_u
        local.set 3
        loop  ;; label = @3
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 3
          i64.const 7
          i64.shr_u
          local.tee 3
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
        local.get 5
        i32.const 16
        i32.add
        local.tee 5
        local.get 8
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 0
      local.get 2
      i32.store
    end
    local.get 0)
  (func (;19;) (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 8192
    call 1
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 4
    call 2
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 4
    i32.add
    local.tee 3
    i32.store offset=4
    local.get 0
    i32.load offset=8
    local.get 3
    i32.sub
    i32.const 1
    i32.gt_s
    i32.const 8192
    call 1
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 4
    i32.add
    i32.const 2
    call 2
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 2
    i32.add
    local.tee 3
    i32.store offset=4
    local.get 0
    i32.load offset=8
    local.get 3
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 8192
    call 1
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 8
    i32.add
    i32.const 4
    call 2
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 4
    i32.add
    local.tee 4
    i32.store offset=4
    local.get 1
    i64.load32_u offset=12
    local.set 5
    loop  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.set 3
      local.get 2
      local.get 5
      i64.const 7
      i64.shr_u
      local.tee 5
      i64.const 0
      i64.ne
      local.tee 6
      i32.const 7
      i32.shl
      local.get 3
      i32.const 127
      i32.and
      i32.or
      i32.store8 offset=14
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.get 4
      i32.sub
      i32.const 0
      i32.gt_s
      i32.const 8192
      call 1
      local.get 0
      i32.const 4
      i32.add
      local.tee 3
      i32.load
      local.get 2
      i32.const 14
      i32.add
      i32.const 1
      call 2
      drop
      local.get 3
      local.get 3
      i32.load
      i32.const 1
      i32.add
      local.tee 4
      i32.store
      local.get 6
      br_if 0 (;@1;)
    end
    local.get 0
    i32.const 8
    i32.add
    local.tee 7
    i32.load
    local.get 4
    i32.sub
    i32.const 0
    i32.gt_s
    i32.const 8192
    call 1
    local.get 0
    i32.const 4
    i32.add
    local.tee 3
    i32.load
    local.get 1
    i32.const 16
    i32.add
    i32.const 1
    call 2
    drop
    local.get 3
    local.get 3
    i32.load
    i32.const 1
    i32.add
    local.tee 4
    i32.store
    local.get 1
    i64.load32_u offset=20
    local.set 5
    loop  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.set 6
      local.get 2
      local.get 5
      i64.const 7
      i64.shr_u
      local.tee 5
      i64.const 0
      i64.ne
      local.tee 1
      i32.const 7
      i32.shl
      local.get 6
      i32.const 127
      i32.and
      i32.or
      i32.store8 offset=15
      local.get 7
      i32.load
      local.get 4
      i32.sub
      i32.const 0
      i32.gt_s
      i32.const 8192
      call 1
      local.get 3
      i32.load
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 2
      drop
      local.get 3
      local.get 3
      i32.load
      i32.const 1
      i32.add
      local.tee 4
      i32.store
      local.get 1
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;20;) (type 7) (param i32 i32) (result i32)
    (local i32 i64 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load
    i32.sub
    i32.const 40
    i32.div_s
    i64.extend_i32_u
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.const 8
    i32.add
    local.set 5
    local.get 0
    i32.const 4
    i32.add
    local.set 6
    loop  ;; label = @1
      local.get 3
      i32.wrap_i64
      local.set 7
      local.get 2
      local.get 3
      i64.const 7
      i64.shr_u
      local.tee 3
      i64.const 0
      i64.ne
      local.tee 8
      i32.const 7
      i32.shl
      local.get 7
      i32.const 127
      i32.and
      i32.or
      i32.store8 offset=15
      local.get 5
      i32.load
      local.get 4
      i32.sub
      i32.const 0
      i32.gt_s
      i32.const 8192
      call 1
      local.get 6
      i32.load
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 2
      drop
      local.get 6
      local.get 6
      i32.load
      i32.const 1
      i32.add
      local.tee 4
      i32.store
      local.get 8
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 7
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.tee 5
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      local.set 6
      loop  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.tee 8
        i32.load
        local.get 4
        i32.sub
        i32.const 7
        i32.gt_s
        i32.const 8192
        call 1
        local.get 6
        i32.load
        local.get 7
        i32.const 8
        call 2
        drop
        local.get 6
        local.get 6
        i32.load
        i32.const 8
        i32.add
        local.tee 4
        i32.store
        local.get 8
        i32.load
        local.get 4
        i32.sub
        i32.const 7
        i32.gt_s
        i32.const 8192
        call 1
        local.get 6
        i32.load
        local.get 7
        i32.const 8
        i32.add
        i32.const 8
        call 2
        drop
        local.get 6
        local.get 6
        i32.load
        i32.const 8
        i32.add
        i32.store
        local.get 0
        local.get 7
        i32.const 16
        i32.add
        call 23
        local.get 7
        i32.const 28
        i32.add
        call 22
        drop
        local.get 7
        i32.const 40
        i32.add
        local.tee 7
        local.get 5
        i32.eq
        br_if 1 (;@1;)
        local.get 6
        i32.load
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;21;) (type 7) (param i32 i32) (result i32)
    (local i32 i64 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load
    i32.sub
    i32.const 4
    i32.shr_s
    i64.extend_i32_u
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.const 8
    i32.add
    local.set 5
    loop  ;; label = @1
      local.get 3
      i32.wrap_i64
      local.set 6
      local.get 2
      local.get 3
      i64.const 7
      i64.shr_u
      local.tee 3
      i64.const 0
      i64.ne
      local.tee 7
      i32.const 7
      i32.shl
      local.get 6
      i32.const 127
      i32.and
      i32.or
      i32.store8 offset=15
      local.get 5
      i32.load
      local.get 4
      i32.sub
      i32.const 0
      i32.gt_s
      i32.const 8192
      call 1
      local.get 0
      i32.const 4
      i32.add
      local.tee 6
      i32.load
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 2
      drop
      local.get 6
      local.get 6
      i32.load
      i32.const 1
      i32.add
      local.tee 4
      i32.store
      local.get 7
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 6
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.tee 7
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      local.set 5
      loop  ;; label = @2
        local.get 5
        i32.load
        local.get 4
        i32.sub
        i32.const 1
        i32.gt_s
        i32.const 8192
        call 1
        local.get 0
        i32.const 4
        i32.add
        local.tee 4
        i32.load
        local.get 6
        i32.const 2
        call 2
        drop
        local.get 4
        local.get 4
        i32.load
        i32.const 2
        i32.add
        i32.store
        local.get 0
        local.get 6
        i32.const 4
        i32.add
        call 22
        drop
        local.get 6
        i32.const 16
        i32.add
        local.tee 6
        local.get 7
        i32.eq
        br_if 1 (;@1;)
        local.get 4
        i32.load
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;22;) (type 7) (param i32 i32) (result i32)
    (local i32 i64 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load
    i32.sub
    i64.extend_i32_u
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.const 8
    i32.add
    local.set 5
    local.get 0
    i32.const 4
    i32.add
    local.set 6
    loop  ;; label = @1
      local.get 3
      i32.wrap_i64
      local.set 7
      local.get 2
      local.get 3
      i64.const 7
      i64.shr_u
      local.tee 3
      i64.const 0
      i64.ne
      local.tee 8
      i32.const 7
      i32.shl
      local.get 7
      i32.const 127
      i32.and
      i32.or
      i32.store8 offset=15
      local.get 5
      i32.load
      local.get 4
      i32.sub
      i32.const 0
      i32.gt_s
      i32.const 8192
      call 1
      local.get 6
      i32.load
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 2
      drop
      local.get 6
      local.get 6
      i32.load
      i32.const 1
      i32.add
      local.tee 4
      i32.store
      local.get 8
      br_if 0 (;@1;)
    end
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.get 4
    i32.sub
    local.get 1
    i32.const 4
    i32.add
    i32.load
    local.get 1
    i32.load
    local.tee 7
    i32.sub
    local.tee 6
    i32.ge_s
    i32.const 8192
    call 1
    local.get 0
    i32.const 4
    i32.add
    local.tee 4
    i32.load
    local.get 7
    local.get 6
    call 2
    drop
    local.get 4
    local.get 4
    i32.load
    local.get 6
    i32.add
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;23;) (type 7) (param i32 i32) (result i32)
    (local i32 i64 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load
    i32.sub
    i32.const 4
    i32.shr_s
    i64.extend_i32_u
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.const 8
    i32.add
    local.set 5
    loop  ;; label = @1
      local.get 3
      i32.wrap_i64
      local.set 6
      local.get 2
      local.get 3
      i64.const 7
      i64.shr_u
      local.tee 3
      i64.const 0
      i64.ne
      local.tee 7
      i32.const 7
      i32.shl
      local.get 6
      i32.const 127
      i32.and
      i32.or
      i32.store8 offset=15
      local.get 5
      i32.load
      local.get 4
      i32.sub
      i32.const 0
      i32.gt_s
      i32.const 8192
      call 1
      local.get 0
      i32.const 4
      i32.add
      local.tee 6
      i32.load
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 2
      drop
      local.get 6
      local.get 6
      i32.load
      i32.const 1
      i32.add
      local.tee 4
      i32.store
      local.get 7
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 7
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.tee 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      local.set 6
      loop  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.tee 5
        i32.load
        local.get 4
        i32.sub
        i32.const 7
        i32.gt_s
        i32.const 8192
        call 1
        local.get 6
        i32.load
        local.get 7
        i32.const 8
        call 2
        drop
        local.get 6
        local.get 6
        i32.load
        i32.const 8
        i32.add
        local.tee 4
        i32.store
        local.get 5
        i32.load
        local.get 4
        i32.sub
        i32.const 7
        i32.gt_s
        i32.const 8192
        call 1
        local.get 6
        i32.load
        local.get 7
        i32.const 8
        i32.add
        i32.const 8
        call 2
        drop
        local.get 6
        local.get 6
        i32.load
        i32.const 8
        i32.add
        local.tee 4
        i32.store
        local.get 7
        i32.const 16
        i32.add
        local.tee 7
        local.get 1
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;24;) (type 8) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      local.get 0
      select
      local.tee 1
      call 37
      local.tee 0
      br_if 0 (;@1;)
      loop  ;; label = @2
        i32.const 0
        local.set 0
        i32.const 0
        i32.load offset=8204
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call_indirect (type 1)
        local.get 1
        call 37
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;25;) (type 8) (param i32) (result i32)
    local.get 0
    call 24)
  (func (;26;) (type 11) (param i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 40
    end)
  (func (;27;) (type 11) (param i32)
    local.get 0
    call 26)
  (func (;28;) (type 7) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      i32.const 4
      local.get 1
      i32.const 4
      i32.gt_u
      select
      local.tee 1
      local.get 0
      i32.const 1
      local.get 0
      select
      local.tee 3
      call 35
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 0
          i32.load offset=8204
          local.tee 0
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          call_indirect (type 1)
          local.get 2
          i32.const 12
          i32.add
          local.get 1
          local.get 3
          call 35
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 2
      i32.const 0
      i32.store offset=12
    end
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;29;) (type 7) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 28)
  (func (;30;) (type 3) (param i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 40
    end)
  (func (;31;) (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call 30)
  (func (;32;) (type 11) (param i32)
    call 6
    unreachable)
  (func (;33;) (type 11) (param i32))
  (func (;34;) (type 6) (result i32)
    i32.const 8208)
  (func (;35;) (type 4) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 22
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        call 36
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.store
        i32.const 0
        local.set 3
      end
      local.get 3
      return
    end
    call 34
    i32.load)
  (func (;36;) (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        local.get 0
        i32.sub
        local.tee 3
        local.get 0
        i32.and
        local.get 0
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 16
        i32.gt_u
        br_if 1 (;@1;)
        local.get 1
        call 37
        return
      end
      call 34
      i32.const 22
      i32.store
      i32.const 0
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const -1
          i32.add
          local.tee 4
          local.get 1
          i32.add
          call 37
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          local.get 0
          i32.add
          local.get 3
          i32.and
          local.tee 2
          i32.eq
          br_if 1 (;@2;)
          local.get 0
          i32.const -4
          i32.add
          local.tee 3
          i32.load
          local.tee 4
          i32.const 7
          i32.and
          local.tee 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 4
          i32.const -8
          i32.and
          i32.add
          local.tee 4
          i32.const -8
          i32.add
          local.tee 5
          i32.load
          local.set 6
          local.get 3
          local.get 1
          local.get 2
          local.get 0
          i32.sub
          local.tee 7
          i32.or
          i32.store
          local.get 2
          i32.const -4
          i32.add
          local.get 4
          local.get 2
          i32.sub
          local.tee 3
          local.get 1
          i32.or
          i32.store
          local.get 2
          i32.const -8
          i32.add
          local.get 6
          i32.const 7
          i32.and
          local.tee 1
          local.get 7
          i32.or
          i32.store
          local.get 5
          local.get 1
          local.get 3
          i32.or
          i32.store
          local.get 0
          call 40
        end
        local.get 2
        return
      end
      local.get 0
      return
    end
    local.get 2
    i32.const -8
    i32.add
    local.get 0
    i32.const -8
    i32.add
    i32.load
    local.get 2
    local.get 0
    i32.sub
    local.tee 0
    i32.add
    i32.store
    local.get 2
    i32.const -4
    i32.add
    local.get 3
    i32.load
    local.get 0
    i32.sub
    i32.store
    local.get 2)
  (func (;37;) (type 8) (param i32) (result i32)
    i32.const 8224
    local.get 0
    call 38)
  (func (;38;) (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=8384
        local.tee 2
        br_if 0 (;@2;)
        i32.const 16
        local.set 2
        local.get 0
        i32.const 8384
        i32.add
        i32.const 16
        i32.store
      end
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 4
      i32.add
      i32.const 7
      i32.and
      local.tee 3
      i32.sub
      local.get 1
      local.get 3
      select
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=8388
            local.tee 4
            local.get 2
            i32.ge_u
            br_if 0 (;@4;)
            local.get 0
            local.get 4
            i32.const 12
            i32.mul
            i32.add
            i32.const 8192
            i32.add
            local.set 1
            block  ;; label = @5
              local.get 4
              br_if 0 (;@5;)
              local.get 0
              i32.const 8196
              i32.add
              local.tee 2
              i32.load
              br_if 0 (;@5;)
              local.get 1
              i32.const 8192
              i32.store
              local.get 2
              local.get 0
              i32.store
            end
            local.get 3
            i32.const 4
            i32.add
            local.set 4
            loop  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load offset=8
                local.tee 2
                local.get 4
                i32.add
                local.get 1
                i32.load
                i32.gt_u
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=4
                local.get 2
                i32.add
                local.tee 2
                local.get 2
                i32.load
                i32.const -2147483648
                i32.and
                local.get 3
                i32.or
                i32.store
                local.get 1
                i32.const 8
                i32.add
                local.tee 1
                local.get 1
                i32.load
                local.get 4
                i32.add
                i32.store
                local.get 2
                local.get 2
                i32.load
                i32.const -2147483648
                i32.or
                i32.store
                local.get 2
                i32.const 4
                i32.add
                local.tee 1
                br_if 3 (;@3;)
              end
              local.get 0
              call 39
              local.tee 1
              br_if 0 (;@5;)
            end
          end
          i32.const 2147483644
          local.get 3
          i32.sub
          local.set 5
          local.get 0
          i32.const 8392
          i32.add
          local.set 6
          local.get 0
          i32.const 8384
          i32.add
          local.set 7
          local.get 0
          i32.load offset=8392
          local.tee 8
          local.set 2
          loop  ;; label = @4
            local.get 0
            local.get 2
            i32.const 12
            i32.mul
            i32.add
            local.tee 1
            i32.const 8200
            i32.add
            i32.load
            local.get 1
            i32.const 8192
            i32.add
            local.tee 9
            i32.load
            i32.eq
            i32.const 16620
            call 1
            local.get 1
            i32.const 8196
            i32.add
            i32.load
            local.tee 10
            i32.const 4
            i32.add
            local.set 2
            loop  ;; label = @5
              local.get 10
              local.get 9
              i32.load
              i32.add
              local.set 11
              local.get 2
              i32.const -4
              i32.add
              local.tee 12
              i32.load
              local.tee 13
              i32.const 2147483647
              i32.and
              local.set 1
              block  ;; label = @6
                local.get 13
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 1
                  local.get 3
                  i32.ge_u
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 2
                    local.get 1
                    i32.add
                    local.tee 4
                    local.get 11
                    i32.ge_u
                    br_if 1 (;@7;)
                    local.get 4
                    i32.load
                    local.tee 4
                    i32.const 0
                    i32.lt_s
                    br_if 1 (;@7;)
                    local.get 1
                    local.get 4
                    i32.const 2147483647
                    i32.and
                    i32.add
                    i32.const 4
                    i32.add
                    local.tee 1
                    local.get 3
                    i32.lt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 12
                local.get 1
                local.get 3
                local.get 1
                local.get 3
                i32.lt_u
                select
                local.get 13
                i32.const -2147483648
                i32.and
                i32.or
                i32.store
                block  ;; label = @7
                  local.get 1
                  local.get 3
                  i32.le_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 3
                  i32.add
                  local.get 5
                  local.get 1
                  i32.add
                  i32.const 2147483647
                  i32.and
                  i32.store
                end
                local.get 1
                local.get 3
                i32.ge_u
                br_if 4 (;@2;)
              end
              local.get 2
              local.get 1
              i32.add
              i32.const 4
              i32.add
              local.tee 2
              local.get 11
              i32.lt_u
              br_if 0 (;@5;)
            end
            i32.const 0
            local.set 1
            local.get 6
            i32.const 0
            local.get 6
            i32.load
            i32.const 1
            i32.add
            local.tee 2
            local.get 2
            local.get 7
            i32.load
            i32.eq
            select
            local.tee 2
            i32.store
            local.get 2
            local.get 8
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 1
        return
      end
      local.get 12
      local.get 12
      i32.load
      i32.const -2147483648
      i32.or
      i32.store
      local.get 2
      return
    end
    i32.const 0)
  (func (;39;) (type 8) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8388
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=8216
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=8220
        local.set 2
        br 1 (;@1;)
      end
      memory.size
      local.set 2
      i32.const 0
      i32.const 1
      i32.store8 offset=8216
      i32.const 0
      local.get 2
      i32.const 16
      i32.shl
      local.tee 2
      i32.store offset=8220
    end
    local.get 2
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 65535
            i32.add
            i32.const 16
            i32.shr_u
            local.tee 4
            memory.size
            local.tee 5
            i32.le_u
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i32.sub
            memory.grow
            drop
            i32.const 0
            local.set 5
            local.get 4
            memory.size
            i32.ne
            br_if 1 (;@3;)
            i32.const 0
            i32.load offset=8220
            local.set 3
          end
          i32.const 0
          local.set 5
          i32.const 0
          local.get 3
          i32.store offset=8220
          local.get 2
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 1
          i32.const 12
          i32.mul
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 65535
              i32.and
              local.tee 5
              i32.const 64512
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              i32.const 65536
              i32.add
              local.get 5
              i32.sub
              local.set 5
              br 1 (;@4;)
            end
            local.get 2
            i32.const 131072
            i32.add
            local.get 2
            i32.const 131071
            i32.and
            i32.sub
            local.set 5
          end
          local.get 0
          local.get 4
          i32.add
          local.set 4
          local.get 5
          local.get 2
          i32.sub
          local.set 2
          block  ;; label = @4
            i32.const 0
            i32.load8_u offset=8216
            br_if 0 (;@4;)
            memory.size
            local.set 3
            i32.const 0
            i32.const 1
            i32.store8 offset=8216
            i32.const 0
            local.get 3
            i32.const 16
            i32.shl
            local.tee 3
            i32.store offset=8220
          end
          local.get 4
          i32.const 8192
          i32.add
          local.set 4
          local.get 2
          i32.const 0
          i32.lt_s
          br_if 1 (;@2;)
          local.get 3
          local.set 6
          block  ;; label = @4
            local.get 2
            i32.const 7
            i32.add
            i32.const -8
            i32.and
            local.tee 7
            local.get 3
            i32.add
            i32.const 65535
            i32.add
            i32.const 16
            i32.shr_u
            local.tee 5
            memory.size
            local.tee 8
            i32.le_u
            br_if 0 (;@4;)
            local.get 5
            local.get 8
            i32.sub
            memory.grow
            drop
            local.get 5
            memory.size
            i32.ne
            br_if 2 (;@2;)
            i32.const 0
            i32.load offset=8220
            local.set 6
          end
          i32.const 0
          local.get 6
          local.get 7
          i32.add
          i32.store offset=8220
          local.get 3
          i32.const -1
          i32.eq
          br_if 1 (;@2;)
          local.get 0
          local.get 1
          i32.const 12
          i32.mul
          i32.add
          local.tee 1
          i32.const 8196
          i32.add
          i32.load
          local.tee 6
          local.get 4
          i32.load
          local.tee 5
          i32.add
          local.get 3
          i32.eq
          br_if 2 (;@1;)
          block  ;; label = @4
            local.get 5
            local.get 1
            i32.const 8200
            i32.add
            local.tee 7
            i32.load
            local.tee 1
            i32.eq
            br_if 0 (;@4;)
            local.get 6
            local.get 1
            i32.add
            local.tee 6
            local.get 6
            i32.load
            i32.const -2147483648
            i32.and
            i32.const -4
            local.get 1
            i32.sub
            local.get 5
            i32.add
            i32.or
            i32.store
            local.get 7
            local.get 4
            i32.load
            i32.store
            local.get 6
            local.get 6
            i32.load
            i32.const 2147483647
            i32.and
            i32.store
          end
          local.get 0
          i32.const 8388
          i32.add
          local.tee 4
          local.get 4
          i32.load
          i32.const 1
          i32.add
          local.tee 4
          i32.store
          local.get 0
          local.get 4
          i32.const 12
          i32.mul
          i32.add
          local.tee 0
          i32.const 8192
          i32.add
          local.tee 5
          local.get 2
          i32.store
          local.get 0
          i32.const 8196
          i32.add
          local.get 3
          i32.store
        end
        local.get 5
        return
      end
      block  ;; label = @2
        local.get 4
        i32.load
        local.tee 5
        local.get 0
        local.get 1
        i32.const 12
        i32.mul
        i32.add
        local.tee 3
        i32.const 8200
        i32.add
        local.tee 1
        i32.load
        local.tee 2
        i32.eq
        br_if 0 (;@2;)
        local.get 3
        i32.const 8196
        i32.add
        i32.load
        local.get 2
        i32.add
        local.tee 3
        local.get 3
        i32.load
        i32.const -2147483648
        i32.and
        i32.const -4
        local.get 2
        i32.sub
        local.get 5
        i32.add
        i32.or
        i32.store
        local.get 1
        local.get 4
        i32.load
        i32.store
        local.get 3
        local.get 3
        i32.load
        i32.const 2147483647
        i32.and
        i32.store
      end
      local.get 0
      local.get 0
      i32.const 8388
      i32.add
      local.tee 2
      i32.load
      i32.const 1
      i32.add
      local.tee 3
      i32.store offset=8384
      local.get 2
      local.get 3
      i32.store
      i32.const 0
      return
    end
    local.get 4
    local.get 5
    local.get 2
    i32.add
    i32.store
    local.get 4)
  (func (;40;) (type 11) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=16608
        local.tee 1
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 16416
        local.set 2
        local.get 1
        i32.const 12
        i32.mul
        i32.const 16416
        i32.add
        local.set 3
        loop  ;; label = @3
          local.get 2
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 1
            i32.const 4
            i32.add
            local.get 0
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            i32.load
            i32.add
            local.get 0
            i32.gt_u
            br_if 3 (;@1;)
          end
          local.get 2
          i32.const 12
          i32.add
          local.tee 2
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      return
    end
    local.get 0
    i32.const -4
    i32.add
    local.tee 2
    local.get 2
    i32.load
    i32.const 2147483647
    i32.and
    i32.store)
  (table (;0;) 2 2 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 8192))
  (global (;1;) i32 (i32.const 16706))
  (global (;2;) i32 (i32.const 16706))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "apply" (func 16))
  (export "_Znwj" (func 24))
  (export "_ZdlPv" (func 26))
  (export "_Znaj" (func 25))
  (export "_ZdaPv" (func 27))
  (export "_ZnwjSt11align_val_t" (func 28))
  (export "_ZnajSt11align_val_t" (func 29))
  (export "_ZdlPvSt11align_val_t" (func 30))
  (export "_ZdaPvSt11align_val_t" (func 31))
  (elem (;0;) (i32.const 1) func 11)
  (data (;0;) (i32.const 8192) "write\00")
  (data (;1;) (i32.const 8198) "read\00")
  (data (;2;) (i32.const 16620) "malloc_from_freed was designed to only be called after _heap was completely allocated\00"))
