(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func))
  (type (;2;) (func (result i64)))
  (type (;3;) (func (param i64 i64)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i64)))
  (type (;8;) (func (param i32 i64 i32 i32 i32)))
  (type (;9;) (func (param i32)))
  (type (;10;) (func (param i64 i64 i64)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32) (result i32)))
  (import "env" "abort" (func (;0;) (type 1)))
  (import "env" "action_data_size" (func (;1;) (type 4)))
  (import "env" "current_time" (func (;2;) (type 2)))
  (import "env" "eosio_assert" (func (;3;) (type 0)))
  (import "env" "memcpy" (func (;4;) (type 6)))
  (import "env" "read_action_data" (func (;5;) (type 5)))
  (import "env" "require_auth" (func (;6;) (type 7)))
  (import "env" "require_auth2" (func (;7;) (type 3)))
  (import "env" "send_deferred" (func (;8;) (type 8)))
  (func (;9;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 32
    call 36
    i32.eqz)
  (func (;10;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 32
    call 36
    i32.eqz)
  (func (;11;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 32
    call 36
    i32.const 0
    i32.ne)
  (func (;12;) (type 4) (result i32)
    call 2
    i64.const 1000000
    i64.div_u
    i32.wrap_i64)
  (func (;13;) (type 9) (param i32)
    local.get 0
    i64.load
    local.get 0
    i64.load offset=8
    call 7)
  (func (;14;) (type 10) (param i64 i64 i64)
    (local i32 i32 i64 i64 i64 i64 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 48
    i32.sub
    local.tee 9
    i32.store offset=4
    i64.const 0
    local.set 6
    i64.const 59
    local.set 5
    i32.const 16
    local.set 4
    i64.const 0
    local.set 7
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                i64.const 6
                i64.gt_u
                br_if 0 (;@6;)
                local.get 4
                i32.load8_s
                local.tee 3
                i32.const -97
                i32.add
                i32.const 255
                i32.and
                i32.const 25
                i32.gt_u
                br_if 1 (;@5;)
                local.get 3
                i32.const 165
                i32.add
                local.set 3
                br 2 (;@4;)
              end
              i64.const 0
              local.set 8
              local.get 6
              i64.const 11
              i64.le_u
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            local.get 3
            i32.const 208
            i32.add
            i32.const 0
            local.get 3
            i32.const -49
            i32.add
            i32.const 255
            i32.and
            i32.const 5
            i32.lt_u
            select
            local.set 3
          end
          local.get 3
          i64.extend_i32_u
          i64.const 56
          i64.shl
          i64.const 56
          i64.shr_s
          local.set 8
        end
        local.get 8
        i64.const 31
        i64.and
        local.get 5
        i64.const 4294967295
        i64.and
        i64.shl
        local.set 8
      end
      local.get 4
      i32.const 1
      i32.add
      local.set 4
      local.get 6
      i64.const 1
      i64.add
      local.set 6
      local.get 8
      local.get 7
      i64.or
      local.set 7
      local.get 5
      i64.const -5
      i64.add
      local.tee 5
      i64.const -6
      i64.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 7
      local.get 2
      i64.ne
      br_if 0 (;@1;)
      i64.const 0
      local.set 6
      i64.const 59
      local.set 5
      i32.const 32
      local.set 4
      i64.const 0
      local.set 7
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i64.const 4
                  i64.gt_u
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load8_s
                  local.tee 3
                  i32.const -97
                  i32.add
                  i32.const 255
                  i32.and
                  i32.const 25
                  i32.gt_u
                  br_if 1 (;@6;)
                  local.get 3
                  i32.const 165
                  i32.add
                  local.set 3
                  br 2 (;@5;)
                end
                i64.const 0
                local.set 8
                local.get 6
                i64.const 11
                i64.le_u
                br_if 2 (;@4;)
                br 3 (;@3;)
              end
              local.get 3
              i32.const 208
              i32.add
              i32.const 0
              local.get 3
              i32.const -49
              i32.add
              i32.const 255
              i32.and
              i32.const 5
              i32.lt_u
              select
              local.set 3
            end
            local.get 3
            i64.extend_i32_u
            i64.const 56
            i64.shl
            i64.const 56
            i64.shr_s
            local.set 8
          end
          local.get 8
          i64.const 31
          i64.and
          local.get 5
          i64.const 4294967295
          i64.and
          i64.shl
          local.set 8
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 6
        i64.const 1
        i64.add
        local.set 6
        local.get 8
        local.get 7
        i64.or
        local.set 7
        local.get 5
        i64.const -5
        i64.add
        local.tee 5
        i64.const -6
        i64.ne
        br_if 0 (;@2;)
      end
      local.get 7
      local.get 1
      i64.eq
      i32.const 48
      call 3
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i64.eq
        br_if 0 (;@2;)
        i64.const 0
        local.set 6
        i64.const 59
        local.set 5
        i32.const 16
        local.set 4
        i64.const 0
        local.set 7
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i64.const 6
                    i64.gt_u
                    br_if 0 (;@8;)
                    local.get 4
                    i32.load8_s
                    local.tee 3
                    i32.const -97
                    i32.add
                    i32.const 255
                    i32.and
                    i32.const 25
                    i32.gt_u
                    br_if 1 (;@7;)
                    local.get 3
                    i32.const 165
                    i32.add
                    local.set 3
                    br 2 (;@6;)
                  end
                  i64.const 0
                  local.set 8
                  local.get 6
                  i64.const 11
                  i64.le_u
                  br_if 2 (;@5;)
                  br 3 (;@4;)
                end
                local.get 3
                i32.const 208
                i32.add
                i32.const 0
                local.get 3
                i32.const -49
                i32.add
                i32.const 255
                i32.and
                i32.const 5
                i32.lt_u
                select
                local.set 3
              end
              local.get 3
              i64.extend_i32_u
              i64.const 56
              i64.shl
              i64.const 56
              i64.shr_s
              local.set 8
            end
            local.get 8
            i64.const 31
            i64.and
            local.get 5
            i64.const 4294967295
            i64.and
            i64.shl
            local.set 8
          end
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 6
          i64.const 1
          i64.add
          local.set 6
          local.get 8
          local.get 7
          i64.or
          local.set 7
          local.get 5
          i64.const -5
          i64.add
          local.tee 5
          i64.const -6
          i64.ne
          br_if 0 (;@3;)
        end
        local.get 7
        local.get 2
        i64.ne
        br_if 1 (;@1;)
      end
      local.get 9
      local.get 0
      i64.store offset=40
      block  ;; label = @2
        local.get 2
        i64.const -3841130127740108800
        i64.eq
        br_if 0 (;@2;)
        local.get 2
        i64.const -3841130677495922688
        i64.ne
        br_if 1 (;@1;)
        local.get 9
        i32.const 0
        i32.store offset=36
        local.get 9
        i32.const 1
        i32.store offset=32
        local.get 9
        local.get 9
        i64.load offset=32
        i64.store offset=8 align=4
        local.get 9
        i32.const 40
        i32.add
        local.get 9
        i32.const 8
        i32.add
        call 16
        drop
        br 1 (;@1;)
      end
      local.get 9
      i32.const 0
      i32.store offset=28
      local.get 9
      i32.const 2
      i32.store offset=24
      local.get 9
      local.get 9
      i64.load offset=24
      i64.store offset=16 align=4
      local.get 9
      i32.const 40
      i32.add
      local.get 9
      i32.const 16
      i32.add
      call 18
      drop
    end
    i32.const 0
    local.get 9
    i32.const 48
    i32.add
    i32.store offset=4)
  (func (;15;) (type 0) (param i32 i32)
    (local i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 112
    i32.sub
    local.tee 23
    i32.store offset=4
    block  ;; label = @1
      local.get 1
      i32.const -201
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 200
      i32.add
      local.set 2
      local.get 23
      i32.const 68
      i32.add
      local.set 3
      local.get 23
      i32.const 44
      i32.add
      local.set 6
      local.get 23
      i32.const 48
      i32.add
      local.set 7
      local.get 23
      i32.const 52
      i32.add
      local.set 8
      local.get 23
      i32.const 56
      i32.add
      local.set 9
      local.get 23
      i32.const 60
      i32.add
      local.set 10
      local.get 23
      i32.const 64
      i32.add
      local.set 11
      local.get 23
      i32.const 72
      i32.add
      local.set 12
      local.get 23
      i32.const 76
      i32.add
      local.set 13
      local.get 23
      i32.const 80
      i32.add
      local.set 14
      local.get 23
      i32.const 84
      i32.add
      local.set 15
      local.get 23
      i32.const 88
      i32.add
      local.set 16
      local.get 23
      i32.const 24
      i32.add
      local.set 17
      loop  ;; label = @2
        call 2
        local.set 20
        local.get 6
        i32.const 0
        i32.store
        local.get 7
        i32.const 0
        i32.store8
        local.get 8
        i32.const 0
        i32.store
        local.get 9
        i32.const 0
        i32.store
        local.get 10
        i32.const 0
        i32.store
        local.get 11
        i32.const 0
        i32.store
        local.get 23
        local.get 20
        i64.const 1000000
        i64.div_u
        i32.wrap_i64
        i32.const 60
        i32.add
        i32.store offset=32
        local.get 3
        i32.const 0
        i32.store
        local.get 12
        i32.const 0
        i32.store
        local.get 13
        i32.const 0
        i32.store
        local.get 14
        i32.const 0
        i32.store
        local.get 15
        i32.const 0
        i32.store
        local.get 16
        i32.const 0
        i32.store
        local.get 0
        i64.load
        local.set 4
        i64.const 0
        local.set 20
        i64.const 59
        local.set 19
        i32.const 128
        local.set 18
        i64.const 0
        local.set 21
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 20
                    i64.const 5
                    i64.gt_u
                    br_if 0 (;@8;)
                    local.get 18
                    i32.load8_s
                    local.tee 5
                    i32.const -97
                    i32.add
                    i32.const 255
                    i32.and
                    i32.const 25
                    i32.gt_u
                    br_if 1 (;@7;)
                    local.get 5
                    i32.const 165
                    i32.add
                    local.set 5
                    br 2 (;@6;)
                  end
                  i64.const 0
                  local.set 22
                  local.get 20
                  i64.const 11
                  i64.le_u
                  br_if 2 (;@5;)
                  br 3 (;@4;)
                end
                local.get 5
                i32.const 208
                i32.add
                i32.const 0
                local.get 5
                i32.const -49
                i32.add
                i32.const 255
                i32.and
                i32.const 5
                i32.lt_u
                select
                local.set 5
              end
              local.get 5
              i64.extend_i32_u
              i64.const 56
              i64.shl
              i64.const 56
              i64.shr_s
              local.set 22
            end
            local.get 22
            i64.const 31
            i64.and
            local.get 19
            i64.const 4294967295
            i64.and
            i64.shl
            local.set 22
          end
          local.get 18
          i32.const 1
          i32.add
          local.set 18
          local.get 20
          i64.const 1
          i64.add
          local.set 20
          local.get 22
          local.get 21
          i64.or
          local.set 21
          local.get 19
          i64.const -5
          i64.add
          local.tee 19
          i64.const -6
          i64.ne
          br_if 0 (;@3;)
        end
        local.get 17
        local.get 21
        i64.store
        local.get 23
        local.get 4
        i64.store offset=16
        i64.const 0
        local.set 20
        i64.const 59
        local.set 19
        i32.const 144
        local.set 18
        i64.const 0
        local.set 21
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 20
                    i64.const 4
                    i64.gt_u
                    br_if 0 (;@8;)
                    local.get 18
                    i32.load8_s
                    local.tee 5
                    i32.const -97
                    i32.add
                    i32.const 255
                    i32.and
                    i32.const 25
                    i32.gt_u
                    br_if 1 (;@7;)
                    local.get 5
                    i32.const 165
                    i32.add
                    local.set 5
                    br 2 (;@6;)
                  end
                  i64.const 0
                  local.set 22
                  local.get 20
                  i64.const 11
                  i64.le_u
                  br_if 2 (;@5;)
                  br 3 (;@4;)
                end
                local.get 5
                i32.const 208
                i32.add
                i32.const 0
                local.get 5
                i32.const -49
                i32.add
                i32.const 255
                i32.and
                i32.const 5
                i32.lt_u
                select
                local.set 5
              end
              local.get 5
              i64.extend_i32_u
              i64.const 56
              i64.shl
              i64.const 56
              i64.shr_s
              local.set 22
            end
            local.get 22
            i64.const 31
            i64.and
            local.get 19
            i64.const 4294967295
            i64.and
            i64.shl
            local.set 22
          end
          local.get 18
          i32.const 1
          i32.add
          local.set 18
          local.get 20
          i64.const 1
          i64.add
          local.set 20
          local.get 22
          local.get 21
          i64.or
          local.set 21
          local.get 19
          i64.const -5
          i64.add
          local.tee 19
          i64.const -6
          i64.ne
          br_if 0 (;@3;)
        end
        local.get 23
        local.get 21
        i64.store offset=96
        local.get 23
        local.get 1
        i32.store offset=8
        local.get 3
        local.get 23
        i32.const 16
        i32.add
        local.get 0
        local.get 23
        i32.const 96
        i32.add
        local.get 23
        i32.const 8
        i32.add
        call 19
        local.get 0
        i64.load
        local.set 20
        local.get 8
        i32.const 0
        i32.store
        local.get 23
        local.get 1
        i64.extend_i32_s
        local.tee 22
        i64.store offset=16
        local.get 23
        local.get 22
        i64.const 63
        i64.shr_s
        i64.store offset=24
        local.get 23
        i32.const 96
        i32.add
        local.get 23
        i32.const 32
        i32.add
        call 20
        local.get 23
        i32.const 16
        i32.add
        local.get 20
        local.get 23
        i32.load offset=96
        local.tee 18
        local.get 23
        i32.load offset=100
        local.get 18
        i32.sub
        i32.const 0
        call 8
        block  ;; label = @3
          local.get 23
          i32.load offset=96
          local.tee 18
          i32.eqz
          br_if 0 (;@3;)
          local.get 23
          local.get 18
          i32.store offset=100
          local.get 18
          call 34
        end
        local.get 23
        i32.const 32
        i32.add
        call 21
        drop
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    i32.const 0
    local.get 23
    i32.const 112
    i32.add
    i32.store offset=4)
  (func (;16;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 6
    local.set 5
    i32.const 0
    local.get 6
    i32.store offset=4
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 4
    i32.const 0
    local.set 3
    block  ;; label = @1
      call 1
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 513
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          call 29
          local.set 3
          br 1 (;@2;)
        end
        i32.const 0
        local.get 6
        local.get 1
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 3
        i32.store offset=4
      end
      local.get 3
      local.get 1
      call 5
      drop
    end
    local.get 5
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 3
    i32.gt_u
    i32.const 112
    call 3
    local.get 5
    i32.const 8
    i32.add
    local.get 3
    i32.const 4
    call 4
    drop
    local.get 5
    i32.load offset=8
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      call 32
    end
    local.get 0
    local.get 2
    i32.const 1
    i32.shr_s
    i32.add
    local.set 1
    block  ;; label = @1
      local.get 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.get 4
      i32.add
      i32.load
      local.set 4
    end
    local.get 1
    local.get 6
    local.get 4
    call_indirect (type 0)
    i32.const 0
    local.get 5
    i32.const 16
    i32.add
    i32.store offset=4
    i32.const 1)
  (func (;17;) (type 0) (param i32 i32)
    loop  ;; label = @1
      local.get 0
      i64.load
      call 6
      br 0 (;@1;)
    end)
  (func (;18;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 6
    local.set 5
    i32.const 0
    local.get 6
    i32.store offset=4
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 4
    i32.const 0
    local.set 3
    block  ;; label = @1
      call 1
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 513
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          call 29
          local.set 3
          br 1 (;@2;)
        end
        i32.const 0
        local.get 6
        local.get 1
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 3
        i32.store offset=4
      end
      local.get 3
      local.get 1
      call 5
      drop
    end
    local.get 5
    i32.const 0
    i32.store8 offset=8
    local.get 1
    i32.const 0
    i32.ne
    i32.const 112
    call 3
    local.get 5
    i32.const 8
    i32.add
    local.get 3
    i32.const 1
    call 4
    drop
    local.get 5
    i32.load8_u offset=8
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      call 32
    end
    local.get 0
    local.get 2
    i32.const 1
    i32.shr_s
    i32.add
    local.set 1
    block  ;; label = @1
      local.get 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.get 4
      i32.add
      i32.load
      local.set 4
    end
    local.get 1
    local.get 6
    i32.const 255
    i32.and
    local.get 4
    call_indirect (type 0)
    i32.const 0
    local.get 5
    i32.const 16
    i32.add
    i32.store offset=4
    i32.const 1)
  (func (;19;) (type 11) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.get 0
        i32.load
        local.tee 8
        i32.sub
        i32.const 40
        i32.div_s
        local.tee 5
        i32.const 1
        i32.add
        local.tee 7
        i32.const 107374183
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 107374182
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.get 8
            i32.sub
            i32.const 40
            i32.div_s
            local.tee 8
            i32.const 53687090
            i32.gt_u
            br_if 0 (;@4;)
            local.get 7
            local.get 8
            i32.const 1
            i32.shl
            local.tee 8
            local.get 8
            local.get 7
            i32.lt_u
            select
            local.tee 6
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 6
          i32.const 40
          i32.mul
          call 33
          local.set 7
          br 2 (;@1;)
        end
        i32.const 0
        local.set 6
        i32.const 0
        local.set 7
        br 1 (;@1;)
      end
      local.get 0
      call 35
      unreachable
    end
    local.get 7
    local.get 5
    i32.const 40
    i32.mul
    i32.add
    local.tee 8
    local.get 2
    i64.load
    i64.store
    local.get 8
    local.get 3
    i64.load
    i64.store offset=8
    local.get 8
    i64.const 0
    i64.store offset=16 align=4
    local.get 8
    i32.const 24
    i32.add
    local.tee 3
    i32.const 0
    i32.store
    local.get 8
    i32.const 16
    call 33
    local.tee 2
    i32.store offset=16
    local.get 3
    local.get 2
    i32.const 16
    i32.add
    local.tee 5
    i32.store
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    i32.const 12
    i32.add
    i32.load
    i32.store
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 2
    i32.const 4
    i32.add
    local.get 1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.store
    local.get 8
    i32.const 20
    i32.add
    local.get 5
    i32.store
    local.get 8
    i32.const 0
    i32.store offset=28
    local.get 8
    i32.const 32
    i32.add
    local.tee 2
    i32.const 0
    i32.store
    local.get 8
    i32.const 36
    i32.add
    i32.const 0
    i32.store
    local.get 8
    i32.const 28
    i32.add
    i32.const 4
    call 23
    local.get 2
    i32.load
    local.get 8
    i32.load offset=28
    local.tee 2
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 160
    call 3
    local.get 2
    local.get 4
    i32.const 4
    call 4
    drop
    local.get 7
    local.get 6
    i32.const 40
    i32.mul
    i32.add
    local.set 4
    local.get 8
    i32.const 40
    i32.add
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 1
        local.get 0
        i32.load
        local.tee 2
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.sub
        local.set 3
        local.get 1
        i32.const -20
        i32.add
        local.set 2
        loop  ;; label = @3
          local.get 8
          i32.const -32
          i32.add
          local.get 2
          i32.const -12
          i32.add
          i64.load
          i64.store
          local.get 8
          i32.const -40
          i32.add
          local.get 2
          i32.const -20
          i32.add
          i64.load
          i64.store
          local.get 8
          i32.const -24
          i32.add
          local.tee 1
          i64.const 0
          i64.store align=4
          local.get 8
          i32.const -16
          i32.add
          local.tee 6
          i32.const 0
          i32.store
          local.get 1
          local.get 2
          i32.const -4
          i32.add
          local.tee 7
          i32.load
          i32.store
          local.get 8
          i32.const -20
          i32.add
          local.get 2
          i32.load
          i32.store
          local.get 6
          local.get 2
          i32.const 4
          i32.add
          local.tee 1
          i32.load
          i32.store
          local.get 1
          i32.const 0
          i32.store
          local.get 8
          i32.const -12
          i32.add
          local.tee 1
          i64.const 0
          i64.store align=4
          local.get 7
          i64.const 0
          i64.store align=4
          local.get 8
          i32.const -4
          i32.add
          local.tee 6
          i32.const 0
          i32.store
          local.get 1
          local.get 2
          i32.const 8
          i32.add
          local.tee 7
          i32.load
          i32.store
          local.get 8
          i32.const -8
          i32.add
          local.get 2
          i32.const 12
          i32.add
          i32.load
          i32.store
          local.get 6
          local.get 2
          i32.const 16
          i32.add
          local.tee 1
          i32.load
          i32.store
          local.get 1
          i32.const 0
          i32.store
          local.get 7
          i64.const 0
          i64.store align=4
          local.get 8
          i32.const -40
          i32.add
          local.set 8
          local.get 2
          i32.const -40
          i32.add
          local.tee 2
          local.get 3
          i32.add
          i32.const -20
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 2
        local.get 0
        i32.load
        local.set 6
        br 1 (;@1;)
      end
      local.get 2
      local.set 6
    end
    local.get 0
    local.get 8
    i32.store
    local.get 0
    i32.const 4
    i32.add
    local.get 5
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 4
    i32.store
    block  ;; label = @1
      local.get 2
      local.get 6
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      local.get 6
      i32.sub
      local.set 1
      local.get 2
      i32.const -24
      i32.add
      local.set 8
      loop  ;; label = @2
        block  ;; label = @3
          local.get 8
          i32.const 12
          i32.add
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 16
          i32.add
          local.get 2
          i32.store
          local.get 2
          call 34
        end
        block  ;; label = @3
          local.get 8
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 4
          i32.add
          local.get 2
          i32.store
          local.get 2
          call 34
        end
        local.get 8
        i32.const -40
        i32.add
        local.tee 8
        local.get 1
        i32.add
        i32.const -24
        i32.ne
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      call 34
    end)
  (func (;20;) (type 0) (param i32 i32)
    (local i32 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 4
    i32.store offset=4
    i32.const 0
    local.set 3
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i64.const 0
    i64.store align=4
    local.get 4
    i32.const 0
    i32.store
    local.get 4
    local.get 1
    call 22
    drop
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        call 23
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
    local.get 4
    local.get 0
    i32.store offset=4
    local.get 4
    local.get 0
    i32.store
    local.get 4
    local.get 3
    i32.store offset=8
    local.get 4
    local.get 1
    call 24
    drop
    local.get 4
    local.get 1
    i32.const 24
    i32.add
    call 25
    local.get 1
    i32.const 36
    i32.add
    call 25
    local.get 1
    i32.const 48
    i32.add
    call 26
    drop
    i32.const 0
    local.get 4
    i32.const 16
    i32.add
    i32.store offset=4)
  (func (;21;) (type 12) (param i32) (result i32)
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
          local.tee 4
          i32.load
          local.tee 5
          local.get 1
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          local.get 1
          i32.sub
          local.set 2
          local.get 5
          i32.const -12
          i32.add
          local.set 5
          loop  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.load
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.const 4
              i32.add
              local.get 3
              i32.store
              local.get 3
              call 34
            end
            local.get 5
            i32.const -16
            i32.add
            local.tee 5
            local.get 2
            i32.add
            i32.const -12
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 48
          i32.add
          i32.load
          local.set 5
          br 1 (;@2;)
        end
        local.get 1
        local.set 5
      end
      local.get 4
      local.get 1
      i32.store
      local.get 5
      call 34
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
          local.tee 4
          i32.load
          local.tee 5
          local.get 1
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          local.get 1
          i32.sub
          local.set 2
          local.get 5
          i32.const -24
          i32.add
          local.set 5
          loop  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 12
              i32.add
              i32.load
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.const 16
              i32.add
              local.get 3
              i32.store
              local.get 3
              call 34
            end
            block  ;; label = @5
              local.get 5
              i32.load
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.const 4
              i32.add
              local.get 3
              i32.store
              local.get 3
              call 34
            end
            local.get 5
            i32.const -40
            i32.add
            local.tee 5
            local.get 2
            i32.add
            i32.const -24
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 36
          i32.add
          i32.load
          local.set 5
          br 1 (;@2;)
        end
        local.get 1
        local.set 5
      end
      local.get 4
      local.get 1
      i32.store
      local.get 5
      call 34
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
          local.tee 4
          i32.load
          local.tee 5
          local.get 1
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          local.get 1
          i32.sub
          local.set 2
          local.get 5
          i32.const -24
          i32.add
          local.set 5
          loop  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 12
              i32.add
              i32.load
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.const 16
              i32.add
              local.get 3
              i32.store
              local.get 3
              call 34
            end
            block  ;; label = @5
              local.get 5
              i32.load
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.const 4
              i32.add
              local.get 3
              i32.store
              local.get 3
              call 34
            end
            local.get 5
            i32.const -40
            i32.add
            local.tee 5
            local.get 2
            i32.add
            i32.const -24
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 24
          i32.add
          i32.load
          local.set 5
          br 1 (;@2;)
        end
        local.get 1
        local.set 5
      end
      local.get 4
      local.get 1
      i32.store
      local.get 5
      call 34
    end
    local.get 0)
  (func (;22;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    local.get 0
    local.get 0
    i32.load
    local.tee 6
    i32.const 10
    i32.add
    i32.store
    local.get 6
    i32.const 11
    i32.add
    local.set 6
    local.get 1
    i64.load32_u offset=12
    local.set 8
    loop  ;; label = @1
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      local.get 8
      i64.const 7
      i64.shr_u
      local.tee 8
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 6
    i32.store
    local.get 1
    i64.load32_u offset=20
    local.set 8
    loop  ;; label = @1
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      local.get 8
      i64.const 7
      i64.shr_u
      local.tee 8
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 6
    i32.store
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.tee 2
    local.get 1
    i32.load offset=24
    local.tee 7
    i32.sub
    i32.const 40
    i32.div_s
    i64.extend_i32_u
    local.set 8
    loop  ;; label = @1
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      local.get 8
      i64.const 7
      i64.shr_u
      local.tee 8
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 6
    i32.store
    block  ;; label = @1
      local.get 7
      local.get 2
      i32.eq
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 6
        i32.const 16
        i32.add
        local.set 6
        local.get 7
        i32.const 20
        i32.add
        i32.load
        local.tee 3
        local.get 7
        i32.load offset=16
        local.tee 4
        i32.sub
        local.tee 5
        i32.const 4
        i32.shr_s
        i64.extend_i32_u
        local.set 8
        loop  ;; label = @3
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 8
          i64.const 7
          i64.shr_u
          local.tee 8
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 4
          local.get 3
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          i32.const -16
          i32.and
          local.get 6
          i32.add
          local.set 6
        end
        local.get 6
        local.get 7
        i32.const 32
        i32.add
        i32.load
        local.tee 3
        i32.add
        local.get 7
        i32.load offset=28
        local.tee 4
        i32.sub
        local.set 6
        local.get 3
        local.get 4
        i32.sub
        i64.extend_i32_u
        local.set 8
        loop  ;; label = @3
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 8
          i64.const 7
          i64.shr_u
          local.tee 8
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
        local.get 7
        i32.const 40
        i32.add
        local.tee 7
        local.get 2
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 0
      local.get 6
      i32.store
    end
    local.get 1
    i32.const 40
    i32.add
    i32.load
    local.tee 2
    local.get 1
    i32.load offset=36
    local.tee 7
    i32.sub
    i32.const 40
    i32.div_s
    i64.extend_i32_u
    local.set 8
    loop  ;; label = @1
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      local.get 8
      i64.const 7
      i64.shr_u
      local.tee 8
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 6
    i32.store
    block  ;; label = @1
      local.get 7
      local.get 2
      i32.eq
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 6
        i32.const 16
        i32.add
        local.set 6
        local.get 7
        i32.const 20
        i32.add
        i32.load
        local.tee 3
        local.get 7
        i32.load offset=16
        local.tee 4
        i32.sub
        local.tee 5
        i32.const 4
        i32.shr_s
        i64.extend_i32_u
        local.set 8
        loop  ;; label = @3
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 8
          i64.const 7
          i64.shr_u
          local.tee 8
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 4
          local.get 3
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          i32.const -16
          i32.and
          local.get 6
          i32.add
          local.set 6
        end
        local.get 6
        local.get 7
        i32.const 32
        i32.add
        i32.load
        local.tee 3
        i32.add
        local.get 7
        i32.load offset=28
        local.tee 4
        i32.sub
        local.set 6
        local.get 3
        local.get 4
        i32.sub
        i64.extend_i32_u
        local.set 8
        loop  ;; label = @3
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 8
          i64.const 7
          i64.shr_u
          local.tee 8
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
        local.get 7
        i32.const 40
        i32.add
        local.tee 7
        local.get 2
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 0
      local.get 6
      i32.store
    end
    local.get 1
    i32.const 52
    i32.add
    i32.load
    local.tee 5
    local.get 1
    i32.load offset=48
    local.tee 7
    i32.sub
    i32.const 4
    i32.shr_s
    i64.extend_i32_u
    local.set 8
    loop  ;; label = @1
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      local.get 8
      i64.const 7
      i64.shr_u
      local.tee 8
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 6
    i32.store
    block  ;; label = @1
      local.get 7
      local.get 5
      i32.eq
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 6
        local.get 7
        i32.const 8
        i32.add
        i32.load
        local.tee 3
        i32.add
        i32.const 2
        i32.add
        local.get 7
        i32.load offset=4
        local.tee 4
        i32.sub
        local.set 6
        local.get 3
        local.get 4
        i32.sub
        i64.extend_i32_u
        local.set 8
        loop  ;; label = @3
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 8
          i64.const 7
          i64.shr_u
          local.tee 8
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
        local.get 7
        i32.const 16
        i32.add
        local.tee 7
        local.get 5
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 0
      local.get 6
      i32.store
    end
    local.get 0)
  (func (;23;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
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
              local.tee 6
              i32.sub
              local.get 1
              i32.ge_u
              br_if 0 (;@5;)
              local.get 6
              local.get 0
              i32.load
              local.tee 5
              i32.sub
              local.tee 3
              local.get 1
              i32.add
              local.tee 4
              i32.const -1
              i32.le_s
              br_if 2 (;@3;)
              i32.const 2147483647
              local.set 6
              block  ;; label = @6
                local.get 2
                local.get 5
                i32.sub
                local.tee 2
                i32.const 1073741822
                i32.gt_u
                br_if 0 (;@6;)
                local.get 4
                local.get 2
                i32.const 1
                i32.shl
                local.tee 6
                local.get 6
                local.get 4
                i32.lt_u
                select
                local.tee 6
                i32.eqz
                br_if 2 (;@4;)
              end
              local.get 6
              call 33
              local.set 2
              br 3 (;@2;)
            end
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            loop  ;; label = @5
              local.get 6
              i32.const 0
              i32.store8
              local.get 0
              local.get 0
              i32.load
              i32.const 1
              i32.add
              local.tee 6
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
          local.set 6
          i32.const 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 0
        call 35
        unreachable
      end
      local.get 2
      local.get 6
      i32.add
      local.set 4
      local.get 2
      local.get 3
      i32.add
      local.tee 5
      local.set 6
      loop  ;; label = @2
        local.get 6
        i32.const 0
        i32.store8
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        br_if 0 (;@2;)
      end
      local.get 5
      local.get 0
      i32.const 4
      i32.add
      local.tee 3
      i32.load
      local.get 0
      i32.load
      local.tee 1
      i32.sub
      local.tee 2
      i32.sub
      local.set 5
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 5
        local.get 1
        local.get 2
        call 4
        drop
        local.get 0
        i32.load
        local.set 1
      end
      local.get 0
      local.get 5
      i32.store
      local.get 3
      local.get 6
      i32.store
      local.get 0
      i32.const 8
      i32.add
      local.get 4
      i32.store
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call 34
      return
    end)
  (func (;24;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i64 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 7
    i32.store offset=4
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 160
    call 3
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 4
    call 4
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 4
    i32.add
    local.tee 4
    i32.store offset=4
    local.get 0
    i32.load offset=8
    local.get 4
    i32.sub
    i32.const 1
    i32.gt_s
    i32.const 160
    call 3
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 4
    i32.add
    i32.const 2
    call 4
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 2
    i32.add
    local.tee 4
    i32.store offset=4
    local.get 0
    i32.load offset=8
    local.get 4
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 160
    call 3
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 8
    i32.add
    i32.const 4
    call 4
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 4
    i32.add
    local.tee 5
    i32.store offset=4
    local.get 1
    i64.load32_u offset=12
    local.set 6
    loop  ;; label = @1
      local.get 6
      i32.wrap_i64
      local.set 4
      local.get 7
      local.get 6
      i64.const 7
      i64.shr_u
      local.tee 6
      i64.const 0
      i64.ne
      local.tee 2
      i32.const 7
      i32.shl
      local.get 4
      i32.const 127
      i32.and
      i32.or
      i32.store8 offset=14
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.get 5
      i32.sub
      i32.const 0
      i32.gt_s
      i32.const 160
      call 3
      local.get 0
      i32.const 4
      i32.add
      local.tee 4
      i32.load
      local.get 7
      i32.const 14
      i32.add
      i32.const 1
      call 4
      drop
      local.get 4
      local.get 4
      i32.load
      i32.const 1
      i32.add
      local.tee 5
      i32.store
      local.get 2
      br_if 0 (;@1;)
    end
    local.get 0
    i32.const 8
    i32.add
    local.tee 3
    i32.load
    local.get 5
    i32.sub
    i32.const 0
    i32.gt_s
    i32.const 160
    call 3
    local.get 0
    i32.const 4
    i32.add
    local.tee 4
    i32.load
    local.get 1
    i32.const 16
    i32.add
    i32.const 1
    call 4
    drop
    local.get 4
    local.get 4
    i32.load
    i32.const 1
    i32.add
    local.tee 5
    i32.store
    local.get 1
    i64.load32_u offset=20
    local.set 6
    loop  ;; label = @1
      local.get 6
      i32.wrap_i64
      local.set 2
      local.get 7
      local.get 6
      i64.const 7
      i64.shr_u
      local.tee 6
      i64.const 0
      i64.ne
      local.tee 1
      i32.const 7
      i32.shl
      local.get 2
      i32.const 127
      i32.and
      i32.or
      i32.store8 offset=15
      local.get 3
      i32.load
      local.get 5
      i32.sub
      i32.const 0
      i32.gt_s
      i32.const 160
      call 3
      local.get 4
      i32.load
      local.get 7
      i32.const 15
      i32.add
      i32.const 1
      call 4
      drop
      local.get 4
      local.get 4
      i32.load
      i32.const 1
      i32.add
      local.tee 5
      i32.store
      local.get 1
      br_if 0 (;@1;)
    end
    i32.const 0
    local.get 7
    i32.const 16
    i32.add
    i32.store offset=4
    local.get 0)
  (func (;25;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 8
    i32.store offset=4
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load
    i32.sub
    i32.const 40
    i32.div_s
    i64.extend_i32_u
    local.set 5
    local.get 0
    i32.load offset=4
    local.set 6
    local.get 0
    i32.const 8
    i32.add
    local.set 3
    local.get 0
    i32.const 4
    i32.add
    local.set 4
    loop  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.set 7
      local.get 8
      local.get 5
      i64.const 7
      i64.shr_u
      local.tee 5
      i64.const 0
      i64.ne
      local.tee 2
      i32.const 7
      i32.shl
      local.get 7
      i32.const 127
      i32.and
      i32.or
      i32.store8 offset=15
      local.get 3
      i32.load
      local.get 6
      i32.sub
      i32.const 0
      i32.gt_s
      i32.const 160
      call 3
      local.get 4
      i32.load
      local.get 8
      i32.const 15
      i32.add
      i32.const 1
      call 4
      drop
      local.get 4
      local.get 4
      i32.load
      i32.const 1
      i32.add
      local.tee 6
      i32.store
      local.get 2
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
      local.tee 3
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      local.set 4
      loop  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.tee 2
        i32.load
        local.get 6
        i32.sub
        i32.const 7
        i32.gt_s
        i32.const 160
        call 3
        local.get 4
        i32.load
        local.get 7
        i32.const 8
        call 4
        drop
        local.get 4
        local.get 4
        i32.load
        i32.const 8
        i32.add
        local.tee 6
        i32.store
        local.get 2
        i32.load
        local.get 6
        i32.sub
        i32.const 7
        i32.gt_s
        i32.const 160
        call 3
        local.get 4
        i32.load
        local.get 7
        i32.const 8
        i32.add
        i32.const 8
        call 4
        drop
        local.get 4
        local.get 4
        i32.load
        i32.const 8
        i32.add
        i32.store
        local.get 0
        local.get 7
        i32.const 16
        i32.add
        call 28
        local.get 7
        i32.const 28
        i32.add
        call 27
        drop
        local.get 7
        i32.const 40
        i32.add
        local.tee 7
        local.get 3
        i32.eq
        br_if 1 (;@1;)
        local.get 4
        i32.load
        local.set 6
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.get 8
    i32.const 16
    i32.add
    i32.store offset=4
    local.get 0)
  (func (;26;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 7
    i32.store offset=4
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load
    i32.sub
    i32.const 4
    i32.shr_s
    i64.extend_i32_u
    local.set 5
    local.get 0
    i32.load offset=4
    local.set 6
    local.get 0
    i32.const 8
    i32.add
    local.set 3
    loop  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.set 4
      local.get 7
      local.get 5
      i64.const 7
      i64.shr_u
      local.tee 5
      i64.const 0
      i64.ne
      local.tee 2
      i32.const 7
      i32.shl
      local.get 4
      i32.const 127
      i32.and
      i32.or
      i32.store8 offset=15
      local.get 3
      i32.load
      local.get 6
      i32.sub
      i32.const 0
      i32.gt_s
      i32.const 160
      call 3
      local.get 0
      i32.const 4
      i32.add
      local.tee 4
      i32.load
      local.get 7
      i32.const 15
      i32.add
      i32.const 1
      call 4
      drop
      local.get 4
      local.get 4
      i32.load
      i32.const 1
      i32.add
      local.tee 6
      i32.store
      local.get 2
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      local.set 3
      loop  ;; label = @2
        local.get 3
        i32.load
        local.get 6
        i32.sub
        i32.const 1
        i32.gt_s
        i32.const 160
        call 3
        local.get 0
        i32.const 4
        i32.add
        local.tee 6
        i32.load
        local.get 4
        i32.const 2
        call 4
        drop
        local.get 6
        local.get 6
        i32.load
        i32.const 2
        i32.add
        i32.store
        local.get 0
        local.get 4
        i32.const 4
        i32.add
        call 27
        drop
        local.get 4
        i32.const 16
        i32.add
        local.tee 4
        local.get 2
        i32.eq
        br_if 1 (;@1;)
        local.get 6
        i32.load
        local.set 6
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.get 7
    i32.const 16
    i32.add
    i32.store offset=4
    local.get 0)
  (func (;27;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 8
    i32.store offset=4
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load
    i32.sub
    i64.extend_i32_u
    local.set 7
    local.get 0
    i32.load offset=4
    local.set 6
    local.get 0
    i32.const 8
    i32.add
    local.set 4
    local.get 0
    i32.const 4
    i32.add
    local.set 5
    loop  ;; label = @1
      local.get 7
      i32.wrap_i64
      local.set 2
      local.get 8
      local.get 7
      i64.const 7
      i64.shr_u
      local.tee 7
      i64.const 0
      i64.ne
      local.tee 3
      i32.const 7
      i32.shl
      local.get 2
      i32.const 127
      i32.and
      i32.or
      i32.store8 offset=15
      local.get 4
      i32.load
      local.get 6
      i32.sub
      i32.const 0
      i32.gt_s
      i32.const 160
      call 3
      local.get 5
      i32.load
      local.get 8
      i32.const 15
      i32.add
      i32.const 1
      call 4
      drop
      local.get 5
      local.get 5
      i32.load
      i32.const 1
      i32.add
      local.tee 6
      i32.store
      local.get 3
      br_if 0 (;@1;)
    end
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.get 6
    i32.sub
    local.get 1
    i32.const 4
    i32.add
    i32.load
    local.get 1
    i32.load
    local.tee 2
    i32.sub
    local.tee 5
    i32.ge_s
    i32.const 160
    call 3
    local.get 0
    i32.const 4
    i32.add
    local.tee 6
    i32.load
    local.get 2
    local.get 5
    call 4
    drop
    local.get 6
    local.get 6
    i32.load
    local.get 5
    i32.add
    i32.store
    i32.const 0
    local.get 8
    i32.const 16
    i32.add
    i32.store offset=4
    local.get 0)
  (func (;28;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 7
    i32.store offset=4
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load
    i32.sub
    i32.const 4
    i32.shr_s
    i64.extend_i32_u
    local.set 4
    local.get 0
    i32.load offset=4
    local.set 5
    local.get 0
    i32.const 8
    i32.add
    local.set 2
    loop  ;; label = @1
      local.get 4
      i32.wrap_i64
      local.set 3
      local.get 7
      local.get 4
      i64.const 7
      i64.shr_u
      local.tee 4
      i64.const 0
      i64.ne
      local.tee 6
      i32.const 7
      i32.shl
      local.get 3
      i32.const 127
      i32.and
      i32.or
      i32.store8 offset=15
      local.get 2
      i32.load
      local.get 5
      i32.sub
      i32.const 0
      i32.gt_s
      i32.const 160
      call 3
      local.get 0
      i32.const 4
      i32.add
      local.tee 3
      i32.load
      local.get 7
      i32.const 15
      i32.add
      i32.const 1
      call 4
      drop
      local.get 3
      local.get 3
      i32.load
      i32.const 1
      i32.add
      local.tee 5
      i32.store
      local.get 6
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
      local.tee 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      local.set 3
      loop  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.tee 2
        i32.load
        local.get 5
        i32.sub
        i32.const 7
        i32.gt_s
        i32.const 160
        call 3
        local.get 3
        i32.load
        local.get 6
        i32.const 8
        call 4
        drop
        local.get 3
        local.get 3
        i32.load
        i32.const 8
        i32.add
        local.tee 5
        i32.store
        local.get 2
        i32.load
        local.get 5
        i32.sub
        i32.const 7
        i32.gt_s
        i32.const 160
        call 3
        local.get 3
        i32.load
        local.get 6
        i32.const 8
        i32.add
        i32.const 8
        call 4
        drop
        local.get 3
        local.get 3
        i32.load
        i32.const 8
        i32.add
        local.tee 5
        i32.store
        local.get 6
        i32.const 16
        i32.add
        local.tee 6
        local.get 1
        i32.ne
        br_if 0 (;@2;)
      end
    end
    i32.const 0
    local.get 7
    i32.const 16
    i32.add
    i32.store offset=4
    local.get 0)
  (func (;29;) (type 12) (param i32) (result i32)
    i32.const 168
    local.get 0
    call 30)
  (func (;30;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=8384
        local.tee 13
        br_if 0 (;@2;)
        i32.const 16
        local.set 13
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
      local.tee 2
      i32.sub
      local.get 1
      local.get 2
      select
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=8388
            local.tee 10
            local.get 13
            i32.ge_u
            br_if 0 (;@4;)
            local.get 0
            local.get 10
            i32.const 12
            i32.mul
            i32.add
            i32.const 8192
            i32.add
            local.set 1
            block  ;; label = @5
              local.get 10
              br_if 0 (;@5;)
              local.get 0
              i32.const 8196
              i32.add
              local.tee 13
              i32.load
              br_if 0 (;@5;)
              local.get 1
              i32.const 8192
              i32.store
              local.get 13
              local.get 0
              i32.store
            end
            local.get 2
            i32.const 4
            i32.add
            local.set 10
            loop  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load offset=8
                local.tee 13
                local.get 10
                i32.add
                local.get 1
                i32.load
                i32.gt_u
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=4
                local.get 13
                i32.add
                local.tee 13
                local.get 13
                i32.load
                i32.const -2147483648
                i32.and
                local.get 2
                i32.or
                i32.store
                local.get 1
                i32.const 8
                i32.add
                local.tee 1
                local.get 1
                i32.load
                local.get 10
                i32.add
                i32.store
                local.get 13
                local.get 13
                i32.load
                i32.const -2147483648
                i32.or
                i32.store
                local.get 13
                i32.const 4
                i32.add
                local.tee 1
                br_if 3 (;@3;)
              end
              local.get 0
              call 31
              local.tee 1
              br_if 0 (;@5;)
            end
          end
          i32.const 2147483644
          local.get 2
          i32.sub
          local.set 4
          local.get 0
          i32.const 8392
          i32.add
          local.set 11
          local.get 0
          i32.const 8384
          i32.add
          local.set 12
          local.get 0
          i32.load offset=8392
          local.tee 3
          local.set 13
          loop  ;; label = @4
            local.get 0
            local.get 13
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
            local.tee 5
            i32.load
            i32.eq
            i32.const 8576
            call 3
            local.get 1
            i32.const 8196
            i32.add
            i32.load
            local.tee 6
            i32.const 4
            i32.add
            local.set 13
            loop  ;; label = @5
              local.get 6
              local.get 5
              i32.load
              i32.add
              local.set 7
              local.get 13
              i32.const -4
              i32.add
              local.tee 8
              i32.load
              local.tee 9
              i32.const 2147483647
              i32.and
              local.set 1
              block  ;; label = @6
                local.get 9
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 1
                  local.get 2
                  i32.ge_u
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 13
                    local.get 1
                    i32.add
                    local.tee 10
                    local.get 7
                    i32.ge_u
                    br_if 1 (;@7;)
                    local.get 10
                    i32.load
                    local.tee 10
                    i32.const 0
                    i32.lt_s
                    br_if 1 (;@7;)
                    local.get 1
                    local.get 10
                    i32.const 2147483647
                    i32.and
                    i32.add
                    i32.const 4
                    i32.add
                    local.tee 1
                    local.get 2
                    i32.lt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 8
                local.get 1
                local.get 2
                local.get 1
                local.get 2
                i32.lt_u
                select
                local.get 9
                i32.const -2147483648
                i32.and
                i32.or
                i32.store
                block  ;; label = @7
                  local.get 1
                  local.get 2
                  i32.le_u
                  br_if 0 (;@7;)
                  local.get 13
                  local.get 2
                  i32.add
                  local.get 4
                  local.get 1
                  i32.add
                  i32.const 2147483647
                  i32.and
                  i32.store
                end
                local.get 1
                local.get 2
                i32.ge_u
                br_if 4 (;@2;)
              end
              local.get 13
              local.get 1
              i32.add
              i32.const 4
              i32.add
              local.tee 13
              local.get 7
              i32.lt_u
              br_if 0 (;@5;)
            end
            i32.const 0
            local.set 1
            local.get 11
            i32.const 0
            local.get 11
            i32.load
            i32.const 1
            i32.add
            local.tee 13
            local.get 13
            local.get 12
            i32.load
            i32.eq
            select
            local.tee 13
            i32.store
            local.get 13
            local.get 3
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 1
        return
      end
      local.get 8
      local.get 8
      i32.load
      i32.const -2147483648
      i32.or
      i32.store
      local.get 13
      return
    end
    i32.const 0)
  (func (;31;) (type 12) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8388
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=8662
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=8664
        local.set 7
        br 1 (;@1;)
      end
      memory.size
      local.set 7
      i32.const 0
      i32.const 1
      i32.store8 offset=8662
      i32.const 0
      local.get 7
      i32.const 16
      i32.shl
      local.tee 7
      i32.store offset=8664
    end
    local.get 7
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 7
            i32.const 65535
            i32.add
            i32.const 16
            i32.shr_u
            local.tee 2
            memory.size
            local.tee 8
            i32.le_u
            br_if 0 (;@4;)
            local.get 2
            local.get 8
            i32.sub
            memory.grow
            drop
            i32.const 0
            local.set 8
            local.get 2
            memory.size
            i32.ne
            br_if 1 (;@3;)
            i32.const 0
            i32.load offset=8664
            local.set 3
          end
          i32.const 0
          local.set 8
          i32.const 0
          local.get 3
          i32.store offset=8664
          local.get 7
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.const 12
          i32.mul
          i32.add
          local.set 2
          local.get 7
          i32.const 65536
          i32.const 131072
          local.get 7
          i32.const 65535
          i32.and
          local.tee 8
          i32.const 64513
          i32.lt_u
          local.tee 6
          select
          i32.add
          local.get 8
          local.get 7
          i32.const 131071
          i32.and
          local.get 6
          select
          i32.sub
          local.get 7
          i32.sub
          local.set 7
          block  ;; label = @4
            i32.const 0
            i32.load8_u offset=8662
            br_if 0 (;@4;)
            memory.size
            local.set 3
            i32.const 0
            i32.const 1
            i32.store8 offset=8662
            i32.const 0
            local.get 3
            i32.const 16
            i32.shl
            local.tee 3
            i32.store offset=8664
          end
          local.get 2
          i32.const 8192
          i32.add
          local.set 2
          local.get 7
          i32.const 0
          i32.lt_s
          br_if 1 (;@2;)
          local.get 3
          local.set 6
          block  ;; label = @4
            local.get 7
            i32.const 7
            i32.add
            i32.const -8
            i32.and
            local.tee 5
            local.get 3
            i32.add
            i32.const 65535
            i32.add
            i32.const 16
            i32.shr_u
            local.tee 8
            memory.size
            local.tee 4
            i32.le_u
            br_if 0 (;@4;)
            local.get 8
            local.get 4
            i32.sub
            memory.grow
            drop
            local.get 8
            memory.size
            i32.ne
            br_if 2 (;@2;)
            i32.const 0
            i32.load offset=8664
            local.set 6
          end
          i32.const 0
          local.get 6
          local.get 5
          i32.add
          i32.store offset=8664
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
          local.get 2
          i32.load
          local.tee 8
          i32.add
          local.get 3
          i32.eq
          br_if 2 (;@1;)
          block  ;; label = @4
            local.get 8
            local.get 1
            i32.const 8200
            i32.add
            local.tee 5
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
            local.get 8
            i32.add
            i32.or
            i32.store
            local.get 5
            local.get 2
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
          local.tee 2
          local.get 2
          i32.load
          i32.const 1
          i32.add
          local.tee 2
          i32.store
          local.get 0
          local.get 2
          i32.const 12
          i32.mul
          i32.add
          local.tee 0
          i32.const 8196
          i32.add
          local.get 3
          i32.store
          local.get 0
          i32.const 8192
          i32.add
          local.tee 8
          local.get 7
          i32.store
        end
        local.get 8
        return
      end
      block  ;; label = @2
        local.get 2
        i32.load
        local.tee 8
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
        local.tee 7
        i32.eq
        br_if 0 (;@2;)
        local.get 3
        i32.const 8196
        i32.add
        i32.load
        local.get 7
        i32.add
        local.tee 3
        local.get 3
        i32.load
        i32.const -2147483648
        i32.and
        i32.const -4
        local.get 7
        i32.sub
        local.get 8
        i32.add
        i32.or
        i32.store
        local.get 1
        local.get 2
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
      local.tee 7
      i32.load
      i32.const 1
      i32.add
      local.tee 3
      i32.store offset=8384
      local.get 7
      local.get 3
      i32.store
      i32.const 0
      return
    end
    local.get 2
    local.get 8
    local.get 7
    i32.add
    i32.store
    local.get 2)
  (func (;32;) (type 9) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=8552
        local.tee 2
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 8360
        local.set 3
        local.get 2
        i32.const 12
        i32.mul
        i32.const 8360
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 3
          i32.const 4
          i32.add
          i32.load
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 2
            i32.const 4
            i32.add
            local.get 0
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 3
            i32.load
            i32.add
            local.get 0
            i32.gt_u
            br_if 3 (;@1;)
          end
          local.get 3
          i32.const 12
          i32.add
          local.tee 3
          local.get 1
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      return
    end
    local.get 0
    i32.const -4
    i32.add
    local.tee 3
    local.get 3
    i32.load
    i32.const 2147483647
    i32.and
    i32.store)
  (func (;33;) (type 12) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      local.get 0
      select
      local.tee 1
      call 29
      local.tee 0
      br_if 0 (;@1;)
      loop  ;; label = @2
        i32.const 0
        local.set 0
        i32.const 0
        i32.load offset=8668
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call_indirect (type 1)
        local.get 1
        call 29
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;34;) (type 9) (param i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 32
    end)
  (func (;35;) (type 9) (param i32)
    call 0
    unreachable)
  (func (;36;) (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 5
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 3
          local.get 1
          i32.load8_u
          local.tee 4
          i32.ne
          br_if 1 (;@2;)
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 3
      local.get 4
      i32.sub
      local.set 5
    end
    local.get 5)
  (func (;37;) (type 1)
    unreachable)
  (table (;0;) 3 3 funcref)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "_ZeqRK11checksum256S1_" (func 9))
  (export "_ZeqRK11checksum160S1_" (func 10))
  (export "_ZneRK11checksum160S1_" (func 11))
  (export "now" (func 12))
  (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func 13))
  (export "apply" (func 14))
  (export "malloc" (func 29))
  (export "free" (func 32))
  (export "memcmp" (func 36))
  (elem (;0;) (i32.const 0) func 37 15 17)
  (data (;0;) (i32.const 4) "\e0a\00\00")
  (data (;1;) (i32.const 16) "onerror\00")
  (data (;2;) (i32.const 32) "eosio\00")
  (data (;3;) (i32.const 48) "onerror action's are only valid from the \22eosio\22 system account\00")
  (data (;4;) (i32.const 112) "read\00")
  (data (;5;) (i32.const 128) "active\00")
  (data (;6;) (i32.const 144) "test1\00")
  (data (;7;) (i32.const 160) "write\00")
  (data (;8;) (i32.const 8576) "malloc_from_freed was designed to only be called after _heap was completely allocated\00"))
