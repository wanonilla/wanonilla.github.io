(module
  (type (;0;) (func (param i32 i64 i32 i64)))
  (type (;1;) (func (param i32 i64 i32)))
  (type (;2;) (func (param i32 i64 i64 i32 i32)))
  (type (;3;) (func))
  (type (;4;) (func (result i64)))
  (type (;5;) (func (param i64 i64)))
  (type (;6;) (func (param i32 i32)))
  (type (;7;) (func (result i32)))
  (type (;8;) (func (param i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32) (result i32)))
  (type (;10;) (func (param i64)))
  (type (;11;) (func (param i64 i64 i64 i64) (result i32)))
  (type (;12;) (func (param i32 i64 i32 i32)))
  (type (;13;) (func (param i64 i64 i64 i64 i32 i32) (result i32)))
  (type (;14;) (func (param i32)))
  (type (;15;) (func (param i64 i64 i64)))
  (type (;16;) (func (param i32 i32 i64 i32)))
  (type (;17;) (func (param i32 i32 i32 i32)))
  (type (;18;) (func (param i32) (result i32)))
  (import "env" "abort" (func (;0;) (type 3)))
  (import "env" "action_data_size" (func (;1;) (type 7)))
  (import "env" "current_receiver" (func (;2;) (type 4)))
  (import "env" "current_time" (func (;3;) (type 4)))
  (import "env" "db_find_i64" (func (;4;) (type 11)))
  (import "env" "db_get_i64" (func (;5;) (type 9)))
  (import "env" "db_store_i64" (func (;6;) (type 13)))
  (import "env" "db_update_i64" (func (;7;) (type 12)))
  (import "env" "eosio_assert" (func (;8;) (type 6)))
  (import "env" "memcpy" (func (;9;) (type 9)))
  (import "env" "read_action_data" (func (;10;) (type 8)))
  (import "env" "require_auth" (func (;11;) (type 10)))
  (import "env" "require_auth2" (func (;12;) (type 5)))
  (func (;13;) (type 8) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 32
    call 48
    i32.eqz)
  (func (;14;) (type 8) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 32
    call 48
    i32.eqz)
  (func (;15;) (type 8) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 32
    call 48
    i32.const 0
    i32.ne)
  (func (;16;) (type 7) (result i32)
    call 3
    i64.const 1000000
    i64.div_u
    i32.wrap_i64)
  (func (;17;) (type 14) (param i32)
    local.get 0
    i64.load
    local.get 0
    i64.load offset=8
    call 12)
  (func (;18;) (type 15) (param i64 i64 i64)
    (local i32 i32 i64 i64 i64 i64 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 64
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
      call 8
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
        i32.const 112
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
                    i64.const 7
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
      i64.store offset=56
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i64.const -8281838239757631488
          i64.eq
          br_if 0 (;@3;)
          local.get 2
          i64.const -3106564276286914560
          i64.eq
          br_if 1 (;@2;)
          local.get 2
          i64.const -3617168760277827584
          i64.ne
          br_if 2 (;@1;)
          local.get 9
          i32.const 0
          i32.store offset=52
          local.get 9
          i32.const 1
          i32.store offset=48
          local.get 9
          local.get 9
          i64.load offset=48
          i64.store offset=8 align=4
          local.get 9
          i32.const 56
          i32.add
          local.get 9
          i32.const 8
          i32.add
          call 20
          drop
          br 2 (;@1;)
        end
        local.get 9
        i32.const 0
        i32.store offset=44
        local.get 9
        i32.const 2
        i32.store offset=40
        local.get 9
        local.get 9
        i64.load offset=40
        i64.store offset=16 align=4
        local.get 9
        i32.const 56
        i32.add
        local.get 9
        i32.const 16
        i32.add
        call 22
        drop
        br 1 (;@1;)
      end
      local.get 9
      i32.const 0
      i32.store offset=36
      local.get 9
      i32.const 3
      i32.store offset=32
      local.get 9
      local.get 9
      i64.load offset=32
      i64.store offset=24 align=4
      local.get 9
      i32.const 56
      i32.add
      local.get 9
      i32.const 24
      i32.add
      call 24
      drop
    end
    i32.const 0
    local.get 9
    i32.const 64
    i32.add
    i32.store offset=4)
  (func (;19;) (type 2) (param i32 i64 i64 i32 i32)
    (local i32 i64 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 48
    i32.sub
    local.tee 8
    i32.store offset=4
    local.get 1
    call 11
    local.get 8
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 8
    local.get 1
    i64.store offset=16
    local.get 8
    i64.const -1
    i64.store offset=24
    local.get 8
    i64.const 0
    i64.store offset=32
    local.get 8
    local.get 0
    i64.load
    local.tee 6
    i64.store offset=8
    block  ;; label = @1
      local.get 6
      local.get 1
      i64.const -8281823585329217536
      local.get 3
      i64.load offset=8
      i64.const 8
      i64.shr_u
      call 4
      local.tee 3
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 8
      i32.const 8
      i32.add
      local.get 3
      call 25
      local.tee 3
      i32.load offset=32
      local.get 8
      i32.const 8
      i32.add
      i32.eq
      i32.const 240
      call 8
      local.get 3
      i32.load8_u offset=8
      i32.eqz
      i32.const 800
      call 8
      local.get 3
      i64.load offset=24
      call 3
      i64.le_u
      i32.const 832
      call 8
      local.get 8
      i32.load offset=32
      local.tee 5
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 8
          i32.const 36
          i32.add
          local.tee 7
          i32.load
          local.tee 3
          local.get 5
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 3
            i32.const -24
            i32.add
            local.tee 3
            i32.load
            local.set 0
            local.get 3
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 0
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              call 43
            end
            local.get 5
            local.get 3
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 8
          i32.const 32
          i32.add
          i32.load
          local.set 3
          br 1 (;@2;)
        end
        local.get 5
        local.set 3
      end
      local.get 7
      local.get 5
      i32.store
      local.get 3
      call 43
    end
    i32.const 0
    local.get 8
    i32.const 48
    i32.add
    i32.store offset=4)
  (func (;20;) (type 8) (param i32 i32) (result i32)
    (local i32 i64 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 96
    i32.sub
    local.tee 4
    i32.store offset=4
    local.get 4
    local.tee 5
    local.get 0
    i32.store offset=60
    local.get 5
    local.get 1
    i32.load
    i32.store offset=48
    local.get 5
    local.get 1
    i32.load offset=4
    i32.store offset=52
    i32.const 0
    local.set 1
    i32.const 0
    local.set 0
    block  ;; label = @1
      call 1
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 513
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          call 38
          local.set 0
          br 1 (;@2;)
        end
        i32.const 0
        local.get 4
        local.get 2
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 0
        i32.store offset=4
      end
      local.get 0
      local.get 2
      call 10
      drop
    end
    local.get 5
    i32.const 24
    i32.add
    i64.const 1397703940
    i64.store
    local.get 5
    i64.const 0
    i64.store offset=8
    local.get 5
    i64.const 0
    i64.store
    local.get 5
    i64.const 0
    i64.store offset=16
    i32.const 1
    i32.const 128
    call 8
    i64.const 5459781
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.wrap_i64
          i32.const 24
          i32.shl
          i32.const -1073741825
          i32.add
          i32.const 452984830
          i32.gt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 3
            i64.const 8
            i64.shr_u
            local.tee 3
            i64.const 255
            i64.and
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 3
              i64.const 8
              i64.shr_u
              local.tee 3
              i64.const 255
              i64.and
              i64.const 0
              i64.ne
              br_if 3 (;@2;)
              local.get 1
              i32.const 1
              i32.add
              local.tee 1
              i32.const 7
              i32.lt_s
              br_if 0 (;@5;)
            end
          end
          i32.const 1
          local.set 4
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.const 7
          i32.lt_s
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      local.set 4
    end
    local.get 4
    i32.const 192
    call 8
    local.get 5
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 5
    i64.const 0
    i64.store offset=32
    local.get 5
    local.get 0
    i32.store offset=68
    local.get 5
    local.get 0
    i32.store offset=64
    local.get 5
    local.get 0
    local.get 2
    i32.add
    i32.store offset=72
    local.get 5
    local.get 5
    i32.const 64
    i32.add
    i32.store offset=80
    local.get 5
    local.get 5
    i32.store offset=88
    local.get 5
    i32.const 88
    i32.add
    local.get 5
    i32.const 80
    i32.add
    call 33
    block  ;; label = @1
      local.get 2
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      call 41
    end
    local.get 5
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=68
    local.get 5
    local.get 5
    i32.const 60
    i32.add
    i32.store offset=64
    local.get 5
    i32.const 64
    i32.add
    local.get 5
    call 34
    block  ;; label = @1
      local.get 5
      i32.load8_u offset=32
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.const 40
      i32.add
      i32.load
      call 43
    end
    i32.const 0
    local.get 5
    i32.const 96
    i32.add
    i32.store offset=4
    i32.const 1)
  (func (;21;) (type 0) (param i32 i64 i32 i64)
    (local i32 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 64
    i32.sub
    local.tee 6
    i32.store offset=4
    local.get 6
    local.get 3
    i64.store offset=56
    local.get 1
    call 11
    local.get 6
    i32.const 48
    i32.add
    i32.const 0
    i32.store
    local.get 6
    local.get 1
    i64.store offset=24
    local.get 6
    i64.const -1
    i64.store offset=32
    local.get 6
    i64.const 0
    i64.store offset=40
    local.get 6
    local.get 0
    i64.load
    local.tee 3
    i64.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          local.get 1
          i64.const -8281823585329217536
          local.get 2
          i64.load offset=8
          i64.const 8
          i64.shr_u
          call 4
          local.tee 4
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 6
          i32.const 16
          i32.add
          local.get 4
          call 25
          local.tee 2
          i32.load offset=32
          local.get 6
          i32.const 16
          i32.add
          i32.eq
          i32.const 240
          call 8
          block  ;; label = @4
            local.get 2
            i32.load8_u offset=8
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i64.load offset=56
            local.get 2
            i64.load offset=16
            i64.gt_u
            i32.const 656
            call 8
          end
          local.get 0
          i64.load
          local.set 1
          local.get 6
          local.get 6
          i32.const 56
          i32.add
          i32.store offset=8
          i32.const 1
          i32.const 384
          call 8
          local.get 6
          i32.const 16
          i32.add
          local.get 2
          local.get 1
          local.get 6
          i32.const 8
          i32.add
          call 31
          local.get 6
          i32.load offset=40
          local.tee 4
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i64.load
        local.set 1
        local.get 6
        local.get 2
        i32.store offset=8
        local.get 6
        local.get 6
        i32.const 56
        i32.add
        i32.store offset=12
        local.get 6
        local.get 6
        i32.const 16
        i32.add
        local.get 1
        local.get 6
        i32.const 8
        i32.add
        call 30
        local.get 6
        i32.load offset=40
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 44
          i32.add
          local.tee 5
          i32.load
          local.tee 0
          local.get 4
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 0
            i32.const -24
            i32.add
            local.tee 0
            i32.load
            local.set 2
            local.get 0
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              call 43
            end
            local.get 4
            local.get 0
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 6
          i32.const 40
          i32.add
          i32.load
          local.set 0
          br 1 (;@2;)
        end
        local.get 4
        local.set 0
      end
      local.get 5
      local.get 4
      i32.store
      local.get 0
      call 43
    end
    i32.const 0
    local.get 6
    i32.const 64
    i32.add
    i32.store offset=4)
  (func (;22;) (type 8) (param i32 i32) (result i32)
    (local i32 i32 i64 i64 i32 i64 i32 i32 i32)
    i32.const 0
    i32.load offset=4
    i32.const 96
    i32.sub
    local.tee 8
    local.set 10
    i32.const 0
    local.get 8
    i32.store offset=4
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 9
    i32.const 0
    local.set 1
    i32.const 0
    local.set 6
    block  ;; label = @1
      call 1
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 513
          i32.lt_u
          br_if 0 (;@3;)
          local.get 3
          call 38
          local.set 6
          br 1 (;@2;)
        end
        i32.const 0
        local.get 8
        local.get 3
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 6
        i32.store offset=4
      end
      local.get 6
      local.get 3
      call 10
      drop
    end
    local.get 10
    i32.const 32
    i32.add
    i64.const 1397703940
    i64.store
    local.get 10
    i64.const 0
    i64.store offset=24
    local.get 10
    i64.const 0
    i64.store offset=16
    i32.const 1
    i32.const 128
    call 8
    i64.const 5459781
    local.set 7
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 8
        local.get 7
        i32.wrap_i64
        i32.const 24
        i32.shl
        i32.const -1073741825
        i32.add
        i32.const 452984830
        i32.gt_u
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 7
          i64.const 8
          i64.shr_u
          local.tee 7
          i64.const 255
          i64.and
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 7
            i64.const 8
            i64.shr_u
            local.tee 7
            i64.const 255
            i64.and
            i64.const 0
            i64.ne
            br_if 3 (;@1;)
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.const 7
            i32.lt_s
            br_if 0 (;@4;)
          end
        end
        i32.const 1
        local.set 8
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.const 7
        i32.lt_s
        br_if 0 (;@2;)
      end
    end
    local.get 8
    i32.const 192
    call 8
    local.get 10
    i64.const 0
    i64.store offset=40
    local.get 10
    local.get 6
    i32.store offset=84
    local.get 10
    local.get 6
    i32.store offset=80
    local.get 10
    local.get 6
    local.get 3
    i32.add
    i32.store offset=88
    local.get 10
    local.get 10
    i32.const 80
    i32.add
    i32.store offset=48
    local.get 10
    local.get 10
    i32.const 16
    i32.add
    i32.store offset=64
    local.get 10
    i32.const 64
    i32.add
    local.get 10
    i32.const 48
    i32.add
    call 29
    block  ;; label = @1
      local.get 3
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 6
      call 41
    end
    local.get 10
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.tee 1
    local.get 10
    i32.const 32
    i32.add
    i64.load
    i64.store
    local.get 10
    i64.load offset=16
    local.set 7
    local.get 10
    local.get 10
    i64.load offset=24
    i64.store offset=48
    local.get 10
    i32.const 40
    i32.add
    i64.load
    local.set 4
    local.get 10
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i64.load
    i64.store
    local.get 10
    local.get 10
    i64.load offset=48
    i64.store offset=64
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
      local.get 9
      i32.add
      i32.load
      local.set 9
    end
    local.get 10
    i32.const 80
    i32.add
    i32.const 8
    i32.add
    local.get 10
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    i64.load
    local.tee 5
    i64.store
    local.get 10
    i32.const 8
    i32.add
    local.get 5
    i64.store
    local.get 10
    local.get 10
    i64.load offset=64
    local.tee 5
    i64.store offset=80
    local.get 10
    local.get 5
    i64.store
    local.get 1
    local.get 7
    local.get 10
    local.get 4
    local.get 9
    call_indirect (type 0)
    i32.const 0
    local.get 10
    i32.const 96
    i32.add
    i32.store offset=4
    i32.const 1)
  (func (;23;) (type 1) (param i32 i64 i32)
    (local i64 i32 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 48
    i32.sub
    local.tee 6
    i32.store offset=4
    local.get 1
    call 11
    local.get 6
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 6
    local.get 1
    i64.store offset=16
    local.get 6
    i64.const -1
    i64.store offset=24
    local.get 6
    i64.const 0
    i64.store offset=32
    local.get 6
    local.get 0
    i64.load
    local.tee 3
    i64.store offset=8
    i32.const 0
    local.set 5
    block  ;; label = @1
      local.get 3
      local.get 1
      i64.const -8281823585329217536
      local.get 2
      i64.load offset=8
      i64.const 8
      i64.shr_u
      call 4
      local.tee 2
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 6
      i32.const 8
      i32.add
      local.get 2
      call 25
      local.tee 5
      i32.load offset=32
      local.get 6
      i32.const 8
      i32.add
      i32.eq
      i32.const 240
      call 8
    end
    local.get 5
    i32.const 0
    i32.ne
    local.tee 2
    i32.const 304
    call 8
    local.get 5
    i32.load8_u offset=8
    i32.const 336
    call 8
    local.get 0
    i64.load
    local.set 1
    local.get 2
    i32.const 384
    call 8
    local.get 6
    i32.const 8
    i32.add
    local.get 5
    local.get 1
    local.get 6
    call 26
    block  ;; label = @1
      local.get 6
      i32.load offset=32
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 36
          i32.add
          local.tee 4
          i32.load
          local.tee 5
          local.get 2
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 5
            i32.const -24
            i32.add
            local.tee 5
            i32.load
            local.set 0
            local.get 5
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 0
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              call 43
            end
            local.get 2
            local.get 5
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 6
          i32.const 32
          i32.add
          i32.load
          local.set 5
          br 1 (;@2;)
        end
        local.get 2
        local.set 5
      end
      local.get 4
      local.get 2
      i32.store
      local.get 5
      call 43
    end
    i32.const 0
    local.get 6
    i32.const 48
    i32.add
    i32.store offset=4)
  (func (;24;) (type 8) (param i32 i32) (result i32)
    (local i32 i32 i64 i32 i64 i32 i32 i32)
    i32.const 0
    i32.load offset=4
    i32.const 96
    i32.sub
    local.tee 7
    local.set 9
    i32.const 0
    local.get 7
    i32.store offset=4
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 8
    i32.const 0
    local.set 1
    i32.const 0
    local.set 5
    block  ;; label = @1
      call 1
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 513
          i32.lt_u
          br_if 0 (;@3;)
          local.get 3
          call 38
          local.set 5
          br 1 (;@2;)
        end
        i32.const 0
        local.get 7
        local.get 3
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 5
        i32.store offset=4
      end
      local.get 5
      local.get 3
      call 10
      drop
    end
    local.get 9
    i32.const 40
    i32.add
    i64.const 1397703940
    i64.store
    local.get 9
    i64.const 0
    i64.store offset=32
    local.get 9
    i64.const 0
    i64.store offset=24
    i32.const 1
    i32.const 128
    call 8
    i64.const 5459781
    local.set 6
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 7
        local.get 6
        i32.wrap_i64
        i32.const 24
        i32.shl
        i32.const -1073741825
        i32.add
        i32.const 452984830
        i32.gt_u
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 6
          i64.const 8
          i64.shr_u
          local.tee 6
          i64.const 255
          i64.and
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 6
            i64.const 8
            i64.shr_u
            local.tee 6
            i64.const 255
            i64.and
            i64.const 0
            i64.ne
            br_if 3 (;@1;)
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.const 7
            i32.lt_s
            br_if 0 (;@4;)
          end
        end
        i32.const 1
        local.set 7
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.const 7
        i32.lt_s
        br_if 0 (;@2;)
      end
    end
    local.get 7
    i32.const 192
    call 8
    local.get 3
    i32.const 7
    i32.gt_u
    i32.const 224
    call 8
    local.get 9
    i32.const 24
    i32.add
    local.get 5
    i32.const 8
    call 9
    drop
    local.get 3
    i32.const -8
    i32.and
    local.tee 7
    i32.const 8
    i32.ne
    i32.const 224
    call 8
    local.get 9
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.tee 1
    local.get 5
    i32.const 8
    i32.add
    i32.const 8
    call 9
    drop
    local.get 7
    i32.const 16
    i32.ne
    i32.const 224
    call 8
    local.get 9
    i32.const 24
    i32.add
    i32.const 16
    i32.add
    local.get 5
    i32.const 16
    i32.add
    i32.const 8
    call 9
    drop
    block  ;; label = @1
      local.get 3
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 5
      call 41
    end
    local.get 9
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.tee 7
    local.get 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 9
    i64.load offset=24
    local.set 6
    local.get 9
    local.get 1
    i64.load
    i64.store offset=48
    local.get 9
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    local.get 7
    i64.load
    i64.store
    local.get 9
    local.get 9
    i64.load offset=48
    i64.store offset=64
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
      local.get 8
      i32.add
      i32.load
      local.set 8
    end
    local.get 9
    i32.const 80
    i32.add
    i32.const 8
    i32.add
    local.get 9
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    i64.load
    local.tee 4
    i64.store
    local.get 9
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 4
    i64.store
    local.get 9
    local.get 9
    i64.load offset=64
    local.tee 4
    i64.store offset=80
    local.get 9
    local.get 4
    i64.store offset=8
    local.get 1
    local.get 6
    local.get 9
    i32.const 8
    i32.add
    local.get 8
    call_indirect (type 1)
    i32.const 0
    local.get 9
    i32.const 96
    i32.add
    i32.store offset=4
    i32.const 1)
  (func (;25;) (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32 i32 i32)
    i32.const 0
    i32.load offset=4
    i32.const 48
    i32.sub
    local.tee 9
    local.set 8
    i32.const 0
    local.get 9
    i32.store offset=4
    block  ;; label = @1
      local.get 0
      i32.const 28
      i32.add
      i32.load
      local.tee 7
      local.get 0
      i32.load offset=24
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      local.get 2
      i32.sub
      local.set 3
      local.get 7
      i32.const -24
      i32.add
      local.set 6
      loop  ;; label = @2
        local.get 6
        i32.const 16
        i32.add
        i32.load
        local.get 1
        i32.eq
        br_if 1 (;@1;)
        local.get 6
        local.set 7
        local.get 6
        i32.const -24
        i32.add
        local.tee 4
        local.set 6
        local.get 4
        local.get 3
        i32.add
        i32.const -24
        i32.ne
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 7
        local.get 2
        i32.eq
        br_if 0 (;@2;)
        local.get 7
        i32.const -24
        i32.add
        i32.load
        local.set 6
        br 1 (;@1;)
      end
      local.get 1
      i32.const 0
      i32.const 0
      call 5
      local.tee 6
      i32.const 31
      i32.shr_u
      i32.const 1
      i32.xor
      i32.const 624
      call 8
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 513
          i32.lt_u
          br_if 0 (;@3;)
          local.get 6
          call 38
          local.set 4
          br 1 (;@2;)
        end
        i32.const 0
        local.get 9
        local.get 6
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 4
        i32.store offset=4
      end
      local.get 1
      local.get 4
      local.get 6
      call 5
      drop
      local.get 8
      local.get 4
      i32.store offset=36
      local.get 8
      local.get 4
      i32.store offset=32
      local.get 8
      local.get 4
      local.get 6
      i32.add
      i32.store offset=40
      block  ;; label = @2
        local.get 6
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        call 41
      end
      i32.const 48
      call 42
      local.tee 6
      i64.const 0
      i64.store offset=16
      local.get 6
      i32.const 0
      i32.store8 offset=8
      local.get 6
      i64.const 0
      i64.store offset=24
      local.get 6
      local.get 0
      i32.store offset=32
      local.get 8
      i32.const 32
      i32.add
      local.get 6
      call 27
      drop
      local.get 6
      local.get 1
      i32.store offset=36
      local.get 8
      local.get 6
      i32.store offset=24
      local.get 8
      local.get 6
      i64.load
      local.tee 5
      i64.store offset=16
      local.get 8
      local.get 6
      i32.load offset=36
      local.tee 7
      i32.store offset=12
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 28
          i32.add
          local.tee 1
          i32.load
          local.tee 4
          local.get 0
          i32.const 32
          i32.add
          i32.load
          i32.ge_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i64.store offset=8
          local.get 4
          local.get 7
          i32.store offset=16
          local.get 8
          i32.const 0
          i32.store offset=24
          local.get 4
          local.get 6
          i32.store
          local.get 1
          local.get 4
          i32.const 24
          i32.add
          i32.store
          br 1 (;@2;)
        end
        local.get 0
        i32.const 24
        i32.add
        local.get 8
        i32.const 24
        i32.add
        local.get 8
        i32.const 16
        i32.add
        local.get 8
        i32.const 12
        i32.add
        call 28
      end
      local.get 8
      i32.load offset=24
      local.set 4
      local.get 8
      i32.const 0
      i32.store offset=24
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      call 43
    end
    i32.const 0
    local.get 8
    i32.const 48
    i32.add
    i32.store offset=4
    local.get 6)
  (func (;26;) (type 16) (param i32 i32 i64 i32)
    (local i64 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 32
    i32.sub
    local.tee 5
    i32.store offset=4
    local.get 1
    i32.load offset=32
    local.get 0
    i32.eq
    i32.const 432
    call 8
    local.get 0
    i64.load
    call 2
    i64.eq
    i32.const 480
    call 8
    local.get 1
    i32.const 0
    i32.store8 offset=8
    local.get 1
    i64.load
    local.set 4
    local.get 1
    call 3
    local.get 1
    i64.load offset=16
    i64.const 1000000
    i64.mul
    i64.add
    i64.store offset=24
    local.get 4
    local.get 1
    i64.load
    i64.eq
    i32.const 544
    call 8
    i32.const 1
    i32.const 608
    call 8
    local.get 5
    local.get 1
    i32.const 8
    call 9
    drop
    i32.const 1
    i32.const 608
    call 8
    local.get 5
    i32.const 8
    i32.or
    local.get 1
    i32.const 8
    i32.add
    i32.const 1
    call 9
    drop
    i32.const 1
    i32.const 608
    call 8
    local.get 5
    i32.const 9
    i32.or
    local.get 1
    i32.const 16
    i32.add
    i32.const 8
    call 9
    drop
    i32.const 1
    i32.const 608
    call 8
    local.get 5
    i32.const 17
    i32.add
    local.get 1
    i32.const 24
    i32.add
    i32.const 8
    call 9
    drop
    local.get 1
    i32.load offset=36
    local.get 2
    local.get 5
    i32.const 25
    call 7
    block  ;; label = @1
      local.get 4
      local.get 0
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      i64.const -2
      local.get 4
      i64.const 1
      i64.add
      local.get 4
      i64.const -3
      i64.gt_u
      select
      i64.store
    end
    i32.const 0
    local.get 5
    i32.const 32
    i32.add
    i32.store offset=4)
  (func (;27;) (type 8) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 224
    call 8
    local.get 1
    local.get 0
    i32.load offset=4
    i32.const 8
    call 9
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 8
    i32.add
    local.tee 2
    i32.store offset=4
    local.get 0
    i32.load offset=8
    local.get 2
    i32.ne
    i32.const 224
    call 8
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 1
    call 9
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.add
    local.tee 2
    i32.store offset=4
    local.get 0
    i32.load offset=8
    local.get 2
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 224
    call 8
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 8
    call 9
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 8
    i32.add
    local.tee 2
    i32.store offset=4
    local.get 0
    i32.load offset=8
    local.get 2
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 224
    call 8
    local.get 1
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 8
    call 9
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 0)
  (func (;28;) (type 17) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.get 0
        i32.load
        local.tee 6
        i32.sub
        i32.const 24
        i32.div_s
        local.tee 4
        i32.const 1
        i32.add
        local.tee 5
        i32.const 178956971
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 178956970
        local.set 7
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.get 6
            i32.sub
            i32.const 24
            i32.div_s
            local.tee 6
            i32.const 89478484
            i32.gt_u
            br_if 0 (;@4;)
            local.get 5
            local.get 6
            i32.const 1
            i32.shl
            local.tee 7
            local.get 7
            local.get 5
            i32.lt_u
            select
            local.tee 7
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 7
          i32.const 24
          i32.mul
          call 42
          local.set 6
          br 2 (;@1;)
        end
        i32.const 0
        local.set 7
        i32.const 0
        local.set 6
        br 1 (;@1;)
      end
      local.get 0
      call 46
      unreachable
    end
    local.get 1
    i32.load
    local.set 5
    local.get 1
    i32.const 0
    i32.store
    local.get 6
    local.get 4
    i32.const 24
    i32.mul
    i32.add
    local.tee 1
    local.get 5
    i32.store
    local.get 1
    local.get 2
    i64.load
    i64.store offset=8
    local.get 1
    local.get 3
    i32.load
    i32.store offset=16
    local.get 6
    local.get 7
    i32.const 24
    i32.mul
    i32.add
    local.set 4
    local.get 1
    i32.const 24
    i32.add
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 6
        local.get 0
        i32.load
        local.tee 7
        i32.eq
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 6
          i32.const -24
          i32.add
          local.tee 2
          i32.load
          local.set 3
          local.get 2
          i32.const 0
          i32.store
          local.get 1
          i32.const -24
          i32.add
          local.get 3
          i32.store
          local.get 1
          i32.const -8
          i32.add
          local.get 6
          i32.const -8
          i32.add
          i32.load
          i32.store
          local.get 1
          i32.const -12
          i32.add
          local.get 6
          i32.const -12
          i32.add
          i32.load
          i32.store
          local.get 1
          i32.const -16
          i32.add
          local.get 6
          i32.const -16
          i32.add
          i32.load
          i32.store
          local.get 1
          i32.const -24
          i32.add
          local.set 1
          local.get 2
          local.set 6
          local.get 7
          local.get 2
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 7
        local.get 0
        i32.load
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      local.set 6
    end
    local.get 0
    local.get 1
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
      local.get 7
      local.get 6
      i32.eq
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 7
        i32.const -24
        i32.add
        local.tee 7
        i32.load
        local.set 1
        local.get 7
        i32.const 0
        i32.store
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          call 43
        end
        local.get 6
        local.get 7
        i32.ne
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      call 43
    end)
  (func (;29;) (type 6) (param i32 i32)
    (local i32 i32)
    local.get 0
    i32.load
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 224
    call 8
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 8
    call 9
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 0
    i32.load
    local.set 0
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 224
    call 8
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.load offset=4
    i32.const 8
    call 9
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 8
    i32.add
    local.tee 2
    i32.store offset=4
    local.get 3
    i32.load offset=8
    local.get 2
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 224
    call 8
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    i32.load offset=4
    i32.const 8
    call 9
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 224
    call 8
    local.get 0
    i32.const 24
    i32.add
    local.get 3
    i32.load offset=4
    i32.const 8
    call 9
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4)
  (func (;30;) (type 16) (param i32 i32 i64 i32)
    (local i32 i32 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 48
    i32.sub
    local.tee 7
    i32.store offset=4
    local.get 7
    local.get 2
    i64.store offset=40
    local.get 1
    i64.load
    call 2
    i64.eq
    i32.const 720
    call 8
    local.get 7
    local.get 3
    i32.store offset=20
    local.get 7
    local.get 1
    i32.store offset=16
    local.get 7
    local.get 7
    i32.const 40
    i32.add
    i32.store offset=24
    i32.const 48
    call 42
    local.tee 3
    i64.const 0
    i64.store offset=16
    local.get 3
    i32.const 0
    i32.store8 offset=8
    local.get 3
    i64.const 0
    i64.store offset=24
    local.get 3
    local.get 1
    i32.store offset=32
    local.get 7
    i32.const 16
    i32.add
    local.get 3
    call 32
    local.get 7
    local.get 3
    i32.store offset=32
    local.get 7
    local.get 3
    i64.load
    local.tee 2
    i64.store offset=16
    local.get 7
    local.get 3
    i32.load offset=36
    local.tee 4
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 28
        i32.add
        local.tee 6
        i32.load
        local.tee 5
        local.get 1
        i32.const 32
        i32.add
        i32.load
        i32.ge_u
        br_if 0 (;@2;)
        local.get 5
        local.get 2
        i64.store offset=8
        local.get 5
        local.get 4
        i32.store offset=16
        local.get 7
        i32.const 0
        i32.store offset=32
        local.get 5
        local.get 3
        i32.store
        local.get 6
        local.get 5
        i32.const 24
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 1
      i32.const 24
      i32.add
      local.get 7
      i32.const 32
      i32.add
      local.get 7
      i32.const 16
      i32.add
      local.get 7
      i32.const 12
      i32.add
      call 28
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 7
    i32.load offset=32
    local.set 3
    local.get 7
    i32.const 0
    i32.store offset=32
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call 43
    end
    i32.const 0
    local.get 7
    i32.const 48
    i32.add
    i32.store offset=4)
  (func (;31;) (type 16) (param i32 i32 i64 i32)
    (local i64 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 32
    i32.sub
    local.tee 5
    i32.store offset=4
    local.get 1
    i32.load offset=32
    local.get 0
    i32.eq
    i32.const 432
    call 8
    local.get 0
    i64.load
    call 2
    i64.eq
    i32.const 480
    call 8
    local.get 1
    i32.const 1
    i32.store8 offset=8
    local.get 1
    i64.const 0
    i64.store offset=24
    local.get 1
    local.get 3
    i32.load
    i64.load
    i64.store offset=16
    local.get 1
    i64.load
    local.set 4
    i32.const 1
    i32.const 544
    call 8
    i32.const 1
    i32.const 608
    call 8
    local.get 5
    local.get 1
    i32.const 8
    call 9
    drop
    i32.const 1
    i32.const 608
    call 8
    local.get 5
    i32.const 8
    i32.or
    local.get 1
    i32.const 8
    i32.add
    i32.const 1
    call 9
    drop
    i32.const 1
    i32.const 608
    call 8
    local.get 5
    i32.const 9
    i32.or
    local.get 1
    i32.const 16
    i32.add
    i32.const 8
    call 9
    drop
    i32.const 1
    i32.const 608
    call 8
    local.get 5
    i32.const 17
    i32.add
    local.get 1
    i32.const 24
    i32.add
    i32.const 8
    call 9
    drop
    local.get 1
    i32.load offset=36
    local.get 2
    local.get 5
    i32.const 25
    call 7
    block  ;; label = @1
      local.get 4
      local.get 0
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      i64.const -2
      local.get 4
      i64.const 1
      i64.add
      local.get 4
      i64.const -3
      i64.gt_u
      select
      i64.store
    end
    i32.const 0
    local.get 5
    i32.const 32
    i32.add
    i32.store offset=4)
  (func (;32;) (type 6) (param i32 i32)
    (local i32 i64 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 32
    i32.sub
    local.tee 5
    i32.store offset=4
    local.get 0
    i32.load offset=4
    local.tee 4
    i32.load
    local.set 2
    local.get 1
    i32.const 1
    i32.store8 offset=8
    local.get 1
    i64.const 0
    i64.store offset=24
    local.get 1
    local.get 2
    i64.load offset=8
    i64.const 8
    i64.shr_u
    i64.store
    local.get 0
    i32.load
    local.set 2
    local.get 1
    local.get 4
    i32.load offset=4
    i64.load
    i64.store offset=16
    i32.const 1
    i32.const 608
    call 8
    local.get 5
    local.get 1
    i32.const 8
    call 9
    drop
    i32.const 1
    i32.const 608
    call 8
    local.get 5
    i32.const 8
    i32.or
    local.get 1
    i32.const 8
    i32.add
    i32.const 1
    call 9
    drop
    i32.const 1
    i32.const 608
    call 8
    local.get 5
    i32.const 9
    i32.or
    local.get 1
    i32.const 16
    i32.add
    i32.const 8
    call 9
    drop
    i32.const 1
    i32.const 608
    call 8
    local.get 5
    i32.const 17
    i32.add
    local.get 1
    i32.const 24
    i32.add
    i32.const 8
    call 9
    drop
    local.get 1
    local.get 2
    i64.load offset=8
    i64.const -8281823585329217536
    local.get 0
    i32.load offset=8
    i64.load
    local.get 1
    i64.load
    local.tee 3
    local.get 5
    i32.const 25
    call 6
    i32.store offset=36
    block  ;; label = @1
      local.get 3
      local.get 2
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 16
      i32.add
      i64.const -2
      local.get 3
      i64.const 1
      i64.add
      local.get 3
      i64.const -3
      i64.gt_u
      select
      i64.store
    end
    i32.const 0
    local.get 5
    i32.const 32
    i32.add
    i32.store offset=4)
  (func (;33;) (type 6) (param i32 i32)
    (local i32 i32)
    local.get 0
    i32.load
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 224
    call 8
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 8
    call 9
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 0
    i32.load
    local.set 0
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 224
    call 8
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.load offset=4
    i32.const 8
    call 9
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 224
    call 8
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    i32.load offset=4
    i32.const 8
    call 9
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 8
    i32.add
    local.tee 2
    i32.store offset=4
    local.get 3
    i32.load offset=8
    local.get 2
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 224
    call 8
    local.get 0
    i32.const 24
    i32.add
    local.get 3
    i32.load offset=4
    i32.const 8
    call 9
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 1
    i32.load
    local.get 0
    i32.const 32
    i32.add
    call 35
    drop)
  (func (;34;) (type 6) (param i32 i32)
    (local i64 i64 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 96
    i32.sub
    local.tee 5
    i32.store offset=4
    local.get 5
    i32.const 44
    i32.add
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.store
    local.get 5
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.tee 4
    local.get 1
    i32.const 24
    i32.add
    i32.load
    i32.store
    local.get 5
    local.get 1
    i32.load offset=16
    i32.store offset=32
    local.get 5
    local.get 1
    i32.const 20
    i32.add
    i32.load
    i32.store offset=36
    local.get 1
    i64.load offset=8
    local.set 3
    local.get 1
    i64.load
    local.set 2
    local.get 5
    i32.const 16
    i32.add
    local.get 1
    i32.const 32
    i32.add
    call 47
    drop
    local.get 5
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.get 4
    i64.load
    i64.store
    local.get 5
    local.get 5
    i64.load offset=32
    i64.store offset=48
    local.get 0
    i32.load
    i32.load
    local.get 0
    i32.load offset=4
    local.tee 1
    i32.load offset=4
    local.tee 4
    i32.const 1
    i32.shr_s
    i32.add
    local.set 0
    local.get 1
    i32.load
    local.set 1
    block  ;; label = @1
      local.get 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 1
      i32.add
      i32.load
      local.set 1
    end
    local.get 5
    i32.const 80
    i32.add
    i32.const 8
    i32.add
    local.tee 4
    local.get 5
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 5
    local.get 5
    i64.load offset=48
    i64.store offset=80
    local.get 5
    i32.const 64
    i32.add
    local.get 5
    i32.const 16
    i32.add
    call 47
    drop
    local.get 5
    i32.const 8
    i32.add
    local.get 4
    i64.load
    i64.store
    local.get 5
    local.get 5
    i64.load offset=80
    i64.store
    local.get 0
    local.get 2
    local.get 3
    local.get 5
    local.get 5
    i32.const 64
    i32.add
    local.get 1
    call_indirect (type 2)
    block  ;; label = @1
      local.get 5
      i32.load8_u offset=64
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=72
      call 43
    end
    block  ;; label = @1
      local.get 5
      i32.load8_u offset=16
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=24
      call 43
    end
    i32.const 0
    local.get 5
    i32.const 96
    i32.add
    i32.store offset=4)
  (func (;35;) (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 32
    i32.sub
    local.tee 7
    i32.store offset=4
    local.get 7
    i32.const 0
    i32.store offset=24
    local.get 7
    i64.const 0
    i64.store offset=16
    local.get 0
    local.get 7
    i32.const 16
    i32.add
    call 36
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 7
                      i32.load offset=20
                      local.tee 5
                      local.get 7
                      i32.load offset=16
                      local.tee 4
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load8_u
                      i32.const 1
                      i32.and
                      br_if 1 (;@8;)
                      local.get 1
                      i32.const 0
                      i32.store16
                      local.get 1
                      i32.const 8
                      i32.add
                      local.set 4
                      br 2 (;@7;)
                    end
                    local.get 7
                    i32.const 8
                    i32.add
                    i32.const 0
                    i32.store
                    local.get 7
                    i64.const 0
                    i64.store
                    local.get 5
                    local.get 4
                    i32.sub
                    local.tee 2
                    i32.const -16
                    i32.ge_u
                    br_if 7 (;@1;)
                    local.get 2
                    i32.const 11
                    i32.ge_u
                    br_if 2 (;@6;)
                    local.get 7
                    local.get 2
                    i32.const 1
                    i32.shl
                    i32.store8
                    local.get 7
                    i32.const 1
                    i32.or
                    local.set 6
                    local.get 2
                    br_if 3 (;@5;)
                    br 4 (;@4;)
                  end
                  local.get 1
                  i32.load offset=8
                  i32.const 0
                  i32.store8
                  local.get 1
                  i32.const 0
                  i32.store offset=4
                  local.get 1
                  i32.const 8
                  i32.add
                  local.set 4
                end
                local.get 1
                i32.const 0
                call 45
                local.get 4
                i32.const 0
                i32.store
                local.get 1
                i64.const 0
                i64.store align=4
                local.get 7
                i32.load offset=16
                local.tee 4
                br_if 3 (;@3;)
                br 4 (;@2;)
              end
              local.get 2
              i32.const 16
              i32.add
              i32.const -16
              i32.and
              local.tee 5
              call 42
              local.set 6
              local.get 7
              local.get 5
              i32.const 1
              i32.or
              i32.store
              local.get 7
              local.get 6
              i32.store offset=8
              local.get 7
              local.get 2
              i32.store offset=4
            end
            local.get 2
            local.set 3
            local.get 6
            local.set 5
            loop  ;; label = @5
              local.get 5
              local.get 4
              i32.load8_u
              i32.store8
              local.get 5
              i32.const 1
              i32.add
              local.set 5
              local.get 4
              i32.const 1
              i32.add
              local.set 4
              local.get 3
              i32.const -1
              i32.add
              local.tee 3
              br_if 0 (;@5;)
            end
            local.get 6
            local.get 2
            i32.add
            local.set 6
          end
          local.get 6
          i32.const 0
          i32.store8
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load8_u
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 1
              i32.const 0
              i32.store16
              br 1 (;@4;)
            end
            local.get 1
            i32.load offset=8
            i32.const 0
            i32.store8
            local.get 1
            i32.const 0
            i32.store offset=4
          end
          local.get 1
          i32.const 0
          call 45
          local.get 1
          i32.const 8
          i32.add
          local.get 7
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 1
          local.get 7
          i64.load
          i64.store align=4
          local.get 7
          i32.load offset=16
          local.tee 4
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 7
        local.get 4
        i32.store offset=20
        local.get 4
        call 43
      end
      i32.const 0
      local.get 7
      i32.const 32
      i32.add
      i32.store offset=4
      local.get 0
      return
    end
    local.get 7
    call 44
    unreachable)
  (func (;36;) (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i64 i32)
    local.get 0
    i32.load offset=4
    local.set 5
    i32.const 0
    local.set 7
    i64.const 0
    local.set 6
    local.get 0
    i32.const 8
    i32.add
    local.set 2
    local.get 0
    i32.const 4
    i32.add
    local.set 3
    loop  ;; label = @1
      local.get 5
      local.get 2
      i32.load
      i32.lt_u
      i32.const 784
      call 8
      local.get 3
      i32.load
      local.tee 5
      i32.load8_u
      local.set 4
      local.get 3
      local.get 5
      i32.const 1
      i32.add
      local.tee 5
      i32.store
      local.get 4
      i32.const 127
      i32.and
      local.get 7
      i32.const 255
      i32.and
      local.tee 7
      i32.shl
      i64.extend_i32_u
      local.get 6
      i64.or
      local.set 6
      local.get 7
      i32.const 7
      i32.add
      local.set 7
      local.get 4
      i32.const 7
      i32.shr_u
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.wrap_i64
        local.tee 3
        local.get 1
        i32.load offset=4
        local.tee 7
        local.get 1
        i32.load
        local.tee 4
        i32.sub
        local.tee 2
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        local.get 2
        i32.sub
        call 37
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 5
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.set 7
        local.get 1
        i32.load
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 4
      i32.add
      local.get 4
      local.get 3
      i32.add
      local.tee 7
      i32.store
    end
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.get 5
    i32.sub
    local.get 7
    local.get 4
    i32.sub
    local.tee 5
    i32.ge_u
    i32.const 224
    call 8
    local.get 4
    local.get 0
    i32.const 4
    i32.add
    local.tee 7
    i32.load
    local.get 5
    call 9
    drop
    local.get 7
    local.get 7
    i32.load
    local.get 5
    i32.add
    i32.store
    local.get 0)
  (func (;37;) (type 6) (param i32 i32)
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
              call 42
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
        call 46
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
        call 9
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
      call 43
      return
    end)
  (func (;38;) (type 18) (param i32) (result i32)
    i32.const 880
    local.get 0
    call 39)
  (func (;39;) (type 8) (param i32 i32) (result i32)
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
              call 40
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
            i32.const 9280
            call 8
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
  (func (;40;) (type 18) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8388
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=9366
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=9368
        local.set 7
        br 1 (;@1;)
      end
      memory.size
      local.set 7
      i32.const 0
      i32.const 1
      i32.store8 offset=9366
      i32.const 0
      local.get 7
      i32.const 16
      i32.shl
      local.tee 7
      i32.store offset=9368
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
            i32.load offset=9368
            local.set 3
          end
          i32.const 0
          local.set 8
          i32.const 0
          local.get 3
          i32.store offset=9368
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
            i32.load8_u offset=9366
            br_if 0 (;@4;)
            memory.size
            local.set 3
            i32.const 0
            i32.const 1
            i32.store8 offset=9366
            i32.const 0
            local.get 3
            i32.const 16
            i32.shl
            local.tee 3
            i32.store offset=9368
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
            i32.load offset=9368
            local.set 6
          end
          i32.const 0
          local.get 6
          local.get 5
          i32.add
          i32.store offset=9368
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
  (func (;41;) (type 14) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=9264
        local.tee 2
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 9072
        local.set 3
        local.get 2
        i32.const 12
        i32.mul
        i32.const 9072
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
  (func (;42;) (type 18) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      local.get 0
      select
      local.tee 1
      call 38
      local.tee 0
      br_if 0 (;@1;)
      loop  ;; label = @2
        i32.const 0
        local.set 0
        i32.const 0
        i32.load offset=9372
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call_indirect (type 3)
        local.get 1
        call 38
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;43;) (type 14) (param i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 41
    end)
  (func (;44;) (type 14) (param i32)
    call 0
    unreachable)
  (func (;45;) (type 6) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const -16
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 10
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.load8_u
        local.tee 5
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.tee 5
        i32.const -2
        i32.and
        i32.const -1
        i32.add
        local.set 2
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 5
          i32.const 254
          i32.and
          i32.const 1
          i32.shr_u
          local.set 3
          br 1 (;@2;)
        end
        local.get 0
        i32.load offset=4
        local.set 3
      end
      i32.const 10
      local.set 4
      block  ;; label = @2
        local.get 3
        local.get 1
        local.get 3
        local.get 1
        i32.gt_u
        select
        local.tee 1
        i32.const 11
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 16
        i32.add
        i32.const -16
        i32.and
        i32.const -1
        i32.add
        local.set 4
      end
      block  ;; label = @2
        local.get 4
        local.get 2
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 10
            i32.ne
            br_if 0 (;@4;)
            i32.const 1
            local.set 6
            local.get 0
            i32.const 1
            i32.add
            local.set 1
            local.get 0
            i32.load offset=8
            local.set 2
            i32.const 0
            local.set 7
            br 1 (;@3;)
          end
          local.get 4
          i32.const 1
          i32.add
          call 42
          local.set 1
          block  ;; label = @4
            local.get 4
            local.get 2
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.eqz
            br_if 2 (;@2;)
          end
          block  ;; label = @4
            local.get 0
            i32.load8_u
            local.tee 5
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            i32.const 1
            local.set 7
            local.get 0
            i32.const 1
            i32.add
            local.set 2
            i32.const 0
            local.set 6
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=8
          local.set 2
          i32.const 1
          local.set 6
          i32.const 1
          local.set 7
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 5
            i32.const 254
            i32.and
            i32.const 1
            i32.shr_u
            local.set 5
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=4
          local.set 5
        end
        block  ;; label = @3
          local.get 5
          i32.const 1
          i32.add
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          local.get 5
          call 9
          drop
        end
        block  ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          call 43
        end
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.store offset=4
          local.get 0
          local.get 1
          i32.store offset=8
          local.get 0
          local.get 4
          i32.const 1
          i32.add
          i32.const 1
          i32.or
          i32.store
          return
        end
        local.get 0
        local.get 3
        i32.const 1
        i32.shl
        i32.store8
      end
      return
    end
    call 0
    unreachable)
  (func (;46;) (type 14) (param i32)
    call 0
    unreachable)
  (func (;47;) (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i64.const 0
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.tee 3
    i32.const 0
    i32.store
    block  ;; label = @1
      local.get 1
      i32.load8_u
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i64.load align=4
      i64.store align=4
      local.get 3
      local.get 1
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 0
      return
    end
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      local.tee 3
      i32.const -16
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=8
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 11
            i32.ge_u
            br_if 0 (;@4;)
            local.get 0
            local.get 3
            i32.const 1
            i32.shl
            i32.store8
            local.get 0
            i32.const 1
            i32.add
            local.set 1
            local.get 3
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 3
          i32.const 16
          i32.add
          i32.const -16
          i32.and
          local.tee 4
          call 42
          local.set 1
          local.get 0
          local.get 4
          i32.const 1
          i32.or
          i32.store
          local.get 0
          local.get 1
          i32.store offset=8
          local.get 0
          local.get 3
          i32.store offset=4
        end
        local.get 1
        local.get 2
        local.get 3
        call 9
        drop
      end
      local.get 1
      local.get 3
      i32.add
      i32.const 0
      i32.store8
      local.get 0
      return
    end
    call 0
    unreachable)
  (func (;48;) (type 9) (param i32 i32 i32) (result i32)
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
  (func (;49;) (type 3)
    unreachable)
  (table (;0;) 4 4 funcref)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "_ZeqRK11checksum256S1_" (func 13))
  (export "_ZeqRK11checksum160S1_" (func 14))
  (export "_ZneRK11checksum160S1_" (func 15))
  (export "now" (func 16))
  (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func 17))
  (export "apply" (func 18))
  (export "malloc" (func 38))
  (export "free" (func 41))
  (export "memcmp" (func 48))
  (elem (;0;) (i32.const 0) func 49 19 21 23)
  (data (;0;) (i32.const 4) "\a0d\00\00")
  (data (;1;) (i32.const 16) "onerror\00")
  (data (;2;) (i32.const 32) "eosio\00")
  (data (;3;) (i32.const 48) "onerror action's are only valid from the \22eosio\22 system account\00")
  (data (;4;) (i32.const 112) "transfer\00")
  (data (;5;) (i32.const 128) "magnitude of asset amount must be less than 2^62\00")
  (data (;6;) (i32.const 192) "invalid symbol name\00")
  (data (;7;) (i32.const 224) "read\00")
  (data (;8;) (i32.const 240) "object passed to iterator_to is not in multi_index\00")
  (data (;9;) (i32.const 304) "Token is not managed\00")
  (data (;10;) (i32.const 336) "Token is not locked, cannot unlock\00")
  (data (;11;) (i32.const 384) "cannot pass end iterator to modify\00")
  (data (;12;) (i32.const 432) "object passed to modify is not in multi_index\00")
  (data (;13;) (i32.const 480) "cannot modify objects in table of another contract\00")
  (data (;14;) (i32.const 544) "updater cannot change primary key when modifying an object\00")
  (data (;15;) (i32.const 608) "write\00")
  (data (;16;) (i32.const 624) "error reading iterator\00")
  (data (;17;) (i32.const 656) "Cannot decrease the lock time while locked, unlock first\00")
  (data (;18;) (i32.const 720) "cannot create objects in table of another contract\00")
  (data (;19;) (i32.const 784) "get\00")
  (data (;20;) (i32.const 800) "Tokens are locked\00")
  (data (;21;) (i32.const 832) "Tokens have not finished their unlocking period\00")
  (data (;22;) (i32.const 9280) "malloc_from_freed was designed to only be called after _heap was completely allocated\00"))
