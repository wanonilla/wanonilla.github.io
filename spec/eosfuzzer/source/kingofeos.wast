(module
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func))
  (type (;3;) (func (result i64)))
  (type (;4;) (func (param i64 i64)))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i64 i64 i64) (result i32)))
  (type (;8;) (func (param i32 i32) (result i32)))
  (type (;9;) (func (param i64 i64 i64 i64 i32 i32) (result i32)))
  (type (;10;) (func (param i64)))
  (type (;11;) (func (param i64 i64 i64 i64) (result i32)))
  (type (;12;) (func (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32)))
  (type (;14;) (func (param i32) (result i32)))
  (type (;15;) (func (param i32 i32 i32)))
  (type (;16;) (func (param i32 i64 i64)))
  (type (;17;) (func (param i64 i64 i64)))
  (type (;18;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;19;) (func (param f64 f64) (result f64)))
  (type (;20;) (func (param f64) (result f64)))
  (type (;21;) (func (param f64 i32) (result f64)))
  (import "env" "abort" (func (;0;) (type 2)))
  (import "env" "action_data_size" (func (;1;) (type 12)))
  (import "env" "current_receiver" (func (;2;) (type 3)))
  (import "env" "current_time" (func (;3;) (type 3)))
  (import "env" "db_end_i64" (func (;4;) (type 7)))
  (import "env" "db_get_i64" (func (;5;) (type 6)))
  (import "env" "db_lowerbound_i64" (func (;6;) (type 11)))
  (import "env" "db_previous_i64" (func (;7;) (type 8)))
  (import "env" "db_store_i64" (func (;8;) (type 9)))
  (import "env" "eosio_assert" (func (;9;) (type 5)))
  (import "env" "eosio_exit" (func (;10;) (type 1)))
  (import "env" "memcpy" (func (;11;) (type 6)))
  (import "env" "memmove" (func (;12;) (type 6)))
  (import "env" "read_action_data" (func (;13;) (type 8)))
  (import "env" "require_auth" (func (;14;) (type 10)))
  (import "env" "require_auth2" (func (;15;) (type 4)))
  (import "env" "send_inline" (func (;16;) (type 5)))
  (func (;17;) (type 8) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 32
    call 66
    i32.eqz)
  (func (;18;) (type 8) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 32
    call 66
    i32.eqz)
  (func (;19;) (type 8) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 32
    call 66
    i32.const 0
    i32.ne)
  (func (;20;) (type 12) (result i32)
    call 3
    i64.const 1000000
    i64.div_u
    i32.wrap_i64)
  (func (;21;) (type 1) (param i32)
    local.get 0
    i64.load
    local.get 0
    i64.load offset=8
    call 15)
  (func (;22;) (type 1) (param i32)
    local.get 0
    i64.load
    i64.const 2048
    i64.lt_u
    i32.const 16
    call 9)
  (func (;23;) (type 5) (param i32 i32)
    (local i32 i32 i64 i64 i64 i32 f64 i32 i64 i64 i64 i64 i64 i64 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 272
    i32.sub
    local.tee 16
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i64.load offset=8
        local.tee 11
        local.get 0
        i64.load
        i64.ne
        br_if 0 (;@2;)
        local.get 1
        i64.load
        local.get 11
        i64.ne
        i32.const 48
        call 9
        local.get 1
        i32.const 24
        i32.add
        i64.load
        i64.const 1397703940
        i64.eq
        i32.const 496
        call 9
        local.get 16
        i32.const 0
        i32.store offset=244
        local.get 16
        local.get 0
        i32.const 8
        i32.add
        local.tee 7
        i32.store offset=240
        local.get 16
        i32.const 240
        i32.add
        call 29
        drop
        local.get 16
        i32.load offset=244
        i32.const 0
        i32.ne
        i32.const 528
        call 9
        local.get 16
        i32.const 192
        i32.add
        i32.const 8
        i32.add
        local.get 16
        i32.load offset=244
        local.tee 3
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 16
        local.get 3
        i64.load
        i64.store offset=192
        local.get 16
        local.get 3
        i64.load offset=16
        i64.store offset=208
        local.get 16
        i32.const 192
        i32.add
        i32.const 24
        i32.add
        local.get 3
        i32.const 24
        i32.add
        call 61
        drop
        local.get 16
        i32.const 192
        i32.add
        i32.const 36
        i32.add
        local.get 3
        i32.const 36
        i32.add
        call 61
        drop
        local.get 16
        local.get 16
        i64.load offset=192
        local.tee 11
        i64.const 8
        i64.shr_u
        i64.store offset=184
        local.get 16
        local.get 11
        i64.store8 offset=183
        local.get 11
        i64.const 2048
        i64.lt_u
        i32.const 16
        call 9
        f64.const 0x1.599999999999ap+0 (;=1.35;)
        local.get 16
        i32.load8_u offset=183
        i32.const 1
        i32.add
        i32.const 255
        i32.and
        f64.convert_i32_u
        call 62
        local.set 8
        local.get 1
        i64.load offset=16
        local.get 8
        f64.const 0x1.388p+13 (;=10000;)
        f64.mul
        i64.trunc_f64_u
        local.tee 13
        i64.eq
        i32.const 560
        call 9
        local.get 16
        i32.const 0
        i32.store offset=176
        local.get 16
        i64.const 0
        i64.store offset=168
        local.get 16
        i32.const 152
        i32.add
        local.get 1
        i32.const 32
        i32.add
        call 61
        drop
        local.get 16
        i32.const 168
        i32.add
        local.get 16
        i32.const 152
        i32.add
        call 30
        block  ;; label = @3
          local.get 16
          i32.load8_u offset=152
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 16
          i32.load offset=160
          call 55
        end
        local.get 16
        i32.load offset=172
        local.get 16
        i32.load offset=168
        i32.sub
        i32.const 12
        i32.div_s
        i32.const 1
        i32.gt_u
        i32.const 112
        call 9
        block  ;; label = @3
          block  ;; label = @4
            local.get 16
            i32.load offset=168
            local.tee 2
            i32.load8_u
            local.tee 3
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 3
            i32.const 1
            i32.shr_u
            local.set 9
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=4
          local.set 9
        end
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 9
          i32.const 100
          i32.gt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.load8_u offset=12
                    local.tee 3
                    i32.const 1
                    i32.and
                    local.tee 9
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 1
                    i32.shr_u
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                  local.get 2
                  i32.const 16
                  i32.add
                  i32.load
                  i32.eqz
                  br_if 1 (;@6;)
                end
                local.get 9
                br_if 1 (;@5;)
                local.get 3
                i32.const 1
                i32.shr_u
                local.set 3
                br 2 (;@4;)
              end
              i32.const 1
              local.set 3
              br 2 (;@3;)
            end
            local.get 2
            i32.const 16
            i32.add
            i32.load
            local.set 3
          end
          local.get 3
          i32.const 36
          i32.eq
          local.set 3
        end
        local.get 3
        i32.const 176
        call 9
        local.get 1
        i64.load
        local.set 11
        local.get 16
        i32.const 104
        i32.add
        local.get 16
        i32.load offset=168
        call 61
        drop
        local.get 16
        i32.const 88
        i32.add
        local.get 16
        i32.load offset=168
        i32.const 12
        i32.add
        call 61
        drop
        local.get 16
        local.get 11
        i64.store offset=120
        local.get 16
        i32.const 128
        i32.add
        local.get 16
        i32.const 104
        i32.add
        call 61
        drop
        local.get 16
        i32.const 140
        i32.add
        local.get 16
        i32.const 88
        i32.add
        call 61
        drop
        block  ;; label = @3
          local.get 16
          i32.load8_u offset=88
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 16
          i32.load offset=96
          call 55
        end
        block  ;; label = @3
          local.get 16
          i32.load8_u offset=104
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 16
          i32.load offset=112
          call 55
        end
        local.get 0
        i64.load
        local.set 11
        local.get 16
        local.get 16
        i32.const 183
        i32.add
        i32.store offset=52
        local.get 16
        local.get 16
        i32.const 184
        i32.add
        i32.store offset=48
        local.get 16
        local.get 16
        i32.const 120
        i32.add
        i32.store offset=56
        local.get 16
        local.get 11
        i64.store offset=248
        local.get 0
        i32.const 8
        i32.add
        i64.load
        call 2
        i64.eq
        i32.const 224
        call 9
        local.get 16
        local.get 7
        i32.store
        local.get 16
        local.get 16
        i32.const 48
        i32.add
        i32.store offset=4
        local.get 16
        local.get 16
        i32.const 248
        i32.add
        i32.store offset=8
        i32.const 64
        call 54
        local.tee 3
        i64.const 0
        i64.store offset=24 align=4
        local.get 3
        i64.const 0
        i64.store offset=32 align=4
        local.get 3
        i64.const 0
        i64.store offset=40 align=4
        local.get 3
        local.get 7
        i32.store offset=48
        local.get 16
        local.get 3
        call 24
        local.get 16
        local.get 3
        i32.store offset=264
        local.get 16
        local.get 3
        i64.load
        local.tee 11
        i64.store
        local.get 16
        local.get 3
        i32.load offset=52
        local.tee 2
        i32.store offset=260
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 36
            i32.add
            local.tee 9
            i32.load
            local.tee 7
            local.get 0
            i32.const 40
            i32.add
            i32.load
            i32.ge_u
            br_if 0 (;@4;)
            local.get 7
            local.get 11
            i64.store offset=8
            local.get 7
            local.get 2
            i32.store offset=16
            local.get 16
            i32.const 0
            i32.store offset=264
            local.get 7
            local.get 3
            i32.store
            local.get 9
            local.get 7
            i32.const 24
            i32.add
            i32.store
            br 1 (;@3;)
          end
          local.get 0
          i32.const 32
          i32.add
          local.get 16
          i32.const 264
          i32.add
          local.get 16
          local.get 16
          i32.const 260
          i32.add
          call 25
        end
        local.get 16
        i32.load offset=264
        local.set 3
        local.get 16
        i32.const 0
        i32.store offset=264
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 3
            i32.const 36
            i32.add
            i32.load8_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.const 44
            i32.add
            i32.load
            call 55
          end
          block  ;; label = @4
            local.get 3
            i32.const 24
            i32.add
            i32.load8_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.const 32
            i32.add
            i32.load
            call 55
          end
          local.get 3
          call 55
        end
        block  ;; label = @3
          local.get 16
          i32.const 208
          i32.add
          i64.load
          local.get 0
          i64.load
          i64.eq
          br_if 0 (;@3;)
          local.get 1
          i32.const 24
          i32.add
          i64.load
          local.set 5
          local.get 13
          f64.convert_i64_u
          f64.const 0x1.ed097b425ed09p-1 (;=0.962963;)
          f64.mul
          i64.trunc_f64_s
          local.tee 4
          i64.const 4611686018427387903
          i64.add
          i64.const 9223372036854775807
          i64.lt_u
          i32.const 288
          call 9
          local.get 5
          i64.const 8
          i64.shr_u
          local.set 11
          i32.const 0
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 11
                i32.wrap_i64
                i32.const 24
                i32.shl
                i32.const -1073741825
                i32.add
                i32.const 452984830
                i32.gt_u
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 11
                  i64.const 8
                  i64.shr_u
                  local.tee 11
                  i64.const 255
                  i64.and
                  i64.const 0
                  i64.ne
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 11
                    i64.const 8
                    i64.shr_u
                    local.tee 11
                    i64.const 255
                    i64.and
                    i64.const 0
                    i64.ne
                    br_if 3 (;@5;)
                    local.get 1
                    i32.const 1
                    i32.add
                    local.tee 1
                    i32.const 7
                    i32.lt_s
                    br_if 0 (;@8;)
                  end
                end
                i32.const 1
                local.set 3
                local.get 1
                i32.const 1
                i32.add
                local.tee 1
                i32.const 7
                i32.lt_s
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            i32.const 0
            local.set 3
          end
          local.get 3
          i32.const 352
          call 9
          local.get 0
          i64.load
          local.set 6
          i64.const 0
          local.set 11
          i64.const 59
          local.set 10
          i32.const 384
          local.set 1
          i64.const 0
          local.set 12
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 11
                      i64.const 5
                      i64.gt_u
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load8_s
                      local.tee 0
                      i32.const -97
                      i32.add
                      i32.const 255
                      i32.and
                      i32.const 25
                      i32.gt_u
                      br_if 1 (;@8;)
                      local.get 0
                      i32.const 165
                      i32.add
                      local.set 0
                      br 2 (;@7;)
                    end
                    i64.const 0
                    local.set 13
                    local.get 11
                    i64.const 11
                    i64.le_u
                    br_if 2 (;@6;)
                    br 3 (;@5;)
                  end
                  local.get 0
                  i32.const 208
                  i32.add
                  i32.const 0
                  local.get 0
                  i32.const -49
                  i32.add
                  i32.const 255
                  i32.and
                  i32.const 5
                  i32.lt_u
                  select
                  local.set 0
                end
                local.get 0
                i64.extend_i32_u
                i64.const 56
                i64.shl
                i64.const 56
                i64.shr_s
                local.set 13
              end
              local.get 13
              i64.const 31
              i64.and
              local.get 10
              i64.const 4294967295
              i64.and
              i64.shl
              local.set 13
            end
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 11
            i64.const 1
            i64.add
            local.set 11
            local.get 13
            local.get 12
            i64.or
            local.set 12
            local.get 10
            i64.const -5
            i64.add
            local.tee 10
            i64.const -6
            i64.ne
            br_if 0 (;@4;)
          end
          i64.const 0
          local.set 11
          i64.const 59
          local.set 10
          i32.const 400
          local.set 1
          i64.const 0
          local.set 14
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 11
                      i64.const 10
                      i64.gt_u
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load8_s
                      local.tee 0
                      i32.const -97
                      i32.add
                      i32.const 255
                      i32.and
                      i32.const 25
                      i32.gt_u
                      br_if 1 (;@8;)
                      local.get 0
                      i32.const 165
                      i32.add
                      local.set 0
                      br 2 (;@7;)
                    end
                    i64.const 0
                    local.set 13
                    local.get 11
                    i64.const 11
                    i64.eq
                    br_if 2 (;@6;)
                    br 3 (;@5;)
                  end
                  local.get 0
                  i32.const 208
                  i32.add
                  i32.const 0
                  local.get 0
                  i32.const -49
                  i32.add
                  i32.const 255
                  i32.and
                  i32.const 5
                  i32.lt_u
                  select
                  local.set 0
                end
                local.get 0
                i64.extend_i32_u
                i64.const 56
                i64.shl
                i64.const 56
                i64.shr_s
                local.set 13
              end
              local.get 13
              i64.const 31
              i64.and
              local.get 10
              i64.const 4294967295
              i64.and
              i64.shl
              local.set 13
            end
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 10
            i64.const -5
            i64.add
            local.set 10
            local.get 13
            local.get 14
            i64.or
            local.set 14
            local.get 11
            i64.const 1
            i64.add
            local.tee 11
            i64.const 13
            i64.ne
            br_if 0 (;@4;)
          end
          i64.const 0
          local.set 11
          i64.const 59
          local.set 10
          i32.const 416
          local.set 1
          i64.const 0
          local.set 15
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 11
                      i64.const 7
                      i64.gt_u
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load8_s
                      local.tee 0
                      i32.const -97
                      i32.add
                      i32.const 255
                      i32.and
                      i32.const 25
                      i32.gt_u
                      br_if 1 (;@8;)
                      local.get 0
                      i32.const 165
                      i32.add
                      local.set 0
                      br 2 (;@7;)
                    end
                    i64.const 0
                    local.set 13
                    local.get 11
                    i64.const 11
                    i64.le_u
                    br_if 2 (;@6;)
                    br 3 (;@5;)
                  end
                  local.get 0
                  i32.const 208
                  i32.add
                  i32.const 0
                  local.get 0
                  i32.const -49
                  i32.add
                  i32.const 255
                  i32.and
                  i32.const 5
                  i32.lt_u
                  select
                  local.set 0
                end
                local.get 0
                i64.extend_i32_u
                i64.const 56
                i64.shl
                i64.const 56
                i64.shr_s
                local.set 13
              end
              local.get 13
              i64.const 31
              i64.and
              local.get 10
              i64.const 4294967295
              i64.and
              i64.shl
              local.set 13
            end
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 11
            i64.const 1
            i64.add
            local.set 11
            local.get 13
            local.get 15
            i64.or
            local.set 15
            local.get 10
            i64.const -5
            i64.add
            local.tee 10
            i64.const -6
            i64.ne
            br_if 0 (;@4;)
          end
          local.get 16
          i32.const 24
          i32.add
          local.get 5
          i64.store
          local.get 16
          i32.const 36
          i32.add
          i64.const 0
          i64.store align=4
          local.get 16
          local.get 6
          i64.store
          local.get 16
          i32.const 0
          i32.store offset=32
          local.get 16
          i32.const 208
          i32.add
          i64.load
          local.set 11
          local.get 16
          local.get 4
          i64.store offset=16
          local.get 16
          local.get 11
          i64.store offset=8
          local.get 16
          i32.const 32
          i32.add
          local.set 0
          i32.const 432
          call 67
          local.tee 1
          i32.const -16
          i32.ge_u
          br_if 2 (;@1;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 11
                i32.ge_u
                br_if 0 (;@6;)
                local.get 16
                i32.const 32
                i32.add
                local.get 1
                i32.const 1
                i32.shl
                i32.store8
                local.get 0
                i32.const 1
                i32.add
                local.set 0
                local.get 1
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              local.get 1
              i32.const 16
              i32.add
              i32.const -16
              i32.and
              local.tee 3
              call 54
              local.set 0
              local.get 16
              i32.const 32
              i32.add
              local.get 3
              i32.const 1
              i32.or
              i32.store
              local.get 16
              i32.const 40
              i32.add
              local.get 0
              i32.store
              local.get 16
              i32.const 36
              i32.add
              local.get 1
              i32.store
            end
            local.get 0
            i32.const 432
            local.get 1
            call 11
            drop
          end
          local.get 0
          local.get 1
          i32.add
          i32.const 0
          i32.store8
          local.get 16
          local.get 15
          i64.store offset=56
          local.get 16
          local.get 14
          i64.store offset=48
          i32.const 16
          call 54
          local.tee 1
          local.get 6
          i64.store
          local.get 1
          local.get 12
          i64.store offset=8
          local.get 16
          i32.const 48
          i32.add
          i32.const 32
          i32.add
          i32.const 0
          i32.store
          local.get 16
          i32.const 72
          i32.add
          local.get 1
          i32.const 16
          i32.add
          local.tee 0
          i32.store
          local.get 16
          i32.const 68
          i32.add
          local.get 0
          i32.store
          local.get 16
          local.get 1
          i32.store offset=64
          local.get 16
          i32.const 0
          i32.store offset=76
          local.get 16
          i32.const 48
          i32.add
          i32.const 36
          i32.add
          i32.const 0
          i32.store
          local.get 16
          i32.const 36
          i32.add
          i32.load
          local.get 16
          i32.const 32
          i32.add
          i32.load8_u
          local.tee 1
          i32.const 1
          i32.shr_u
          local.get 1
          i32.const 1
          i32.and
          select
          local.tee 0
          i32.const 32
          i32.add
          local.set 1
          local.get 0
          i64.extend_i32_u
          local.set 11
          local.get 16
          i32.const 76
          i32.add
          local.set 0
          loop  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 11
            i64.const 7
            i64.shr_u
            local.tee 11
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.get 1
              call 26
              local.get 16
              i32.const 80
              i32.add
              i32.load
              local.set 0
              local.get 16
              i32.const 76
              i32.add
              i32.load
              local.set 1
              br 1 (;@4;)
            end
            i32.const 0
            local.set 0
            i32.const 0
            local.set 1
          end
          local.get 16
          local.get 1
          i32.store offset=252
          local.get 16
          local.get 1
          i32.store offset=248
          local.get 16
          local.get 0
          i32.store offset=256
          local.get 16
          i32.const 248
          i32.add
          local.get 16
          call 27
          drop
          local.get 16
          i32.const 248
          i32.add
          local.get 16
          i32.const 48
          i32.add
          call 28
          local.get 16
          i32.load offset=248
          local.tee 1
          local.get 16
          i32.load offset=252
          local.get 1
          i32.sub
          call 16
          block  ;; label = @4
            local.get 16
            i32.load offset=248
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 16
            local.get 1
            i32.store offset=252
            local.get 1
            call 55
          end
          block  ;; label = @4
            local.get 16
            i32.load offset=76
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 16
            i32.const 80
            i32.add
            local.get 1
            i32.store
            local.get 1
            call 55
          end
          block  ;; label = @4
            local.get 16
            i32.load offset=64
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 16
            i32.const 68
            i32.add
            local.get 1
            i32.store
            local.get 1
            call 55
          end
          local.get 16
          i32.const 32
          i32.add
          i32.load8_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 16
          i32.const 40
          i32.add
          i32.load
          call 55
        end
        block  ;; label = @3
          local.get 16
          i32.const 140
          i32.add
          i32.load8_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 16
          i32.const 148
          i32.add
          i32.load
          call 55
        end
        block  ;; label = @3
          local.get 16
          i32.const 128
          i32.add
          i32.load8_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 16
          i32.const 136
          i32.add
          i32.load
          call 55
        end
        block  ;; label = @3
          local.get 16
          i32.load offset=168
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 16
              i32.load offset=172
              local.tee 1
              local.get 3
              i32.eq
              br_if 0 (;@5;)
              i32.const 0
              local.get 3
              i32.sub
              local.set 0
              local.get 1
              i32.const -12
              i32.add
              local.set 1
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load8_u
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 1
                  i32.const 8
                  i32.add
                  i32.load
                  call 55
                end
                local.get 1
                i32.const -12
                i32.add
                local.tee 1
                local.get 0
                i32.add
                i32.const -12
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 16
              i32.load offset=168
              local.set 1
              br 1 (;@4;)
            end
            local.get 3
            local.set 1
          end
          local.get 16
          local.get 3
          i32.store offset=172
          local.get 1
          call 55
        end
        block  ;; label = @3
          local.get 16
          i32.const 228
          i32.add
          i32.load8_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 16
          i32.const 236
          i32.add
          i32.load
          call 55
        end
        local.get 16
        i32.const 216
        i32.add
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 16
        i32.const 224
        i32.add
        i32.load
        call 55
      end
      i32.const 0
      local.get 16
      i32.const 272
      i32.add
      i32.store offset=4
      return
    end
    local.get 0
    call 56
    unreachable)
  (func (;24;) (type 5) (param i32 i32)
    (local i32 i32 i64 i32 i32 i32)
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 6
    local.set 7
    i32.const 0
    local.get 6
    i32.store offset=4
    local.get 1
    local.get 0
    i32.load offset=4
    local.tee 5
    i32.load offset=4
    i64.load8_u
    i64.const 1
    i64.add
    i64.const 255
    i64.and
    local.get 5
    i32.load
    i64.load
    i64.const 8
    i64.shl
    i64.or
    i64.store
    local.get 0
    i32.load
    local.set 2
    local.get 1
    call 3
    i64.const 1000000
    i64.div_u
    i64.store32 offset=8
    local.get 1
    local.get 5
    i32.load offset=8
    local.tee 5
    i64.load
    i64.store offset=16
    local.get 1
    i32.const 24
    i32.add
    local.tee 3
    local.get 5
    i32.const 8
    i32.add
    call 57
    drop
    local.get 1
    i32.const 36
    i32.add
    local.get 5
    i32.const 20
    i32.add
    call 57
    drop
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.get 3
    i32.load8_u
    local.tee 5
    i32.const 1
    i32.shr_u
    local.get 5
    i32.const 1
    i32.and
    select
    local.tee 3
    i32.const 20
    i32.add
    local.set 5
    local.get 3
    i64.extend_i32_u
    local.set 4
    loop  ;; label = @1
      local.get 5
      i32.const 1
      i32.add
      local.set 5
      local.get 4
      i64.const 7
      i64.shr_u
      local.tee 4
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 40
    i32.add
    i32.load
    local.get 1
    i32.const 36
    i32.add
    i32.load8_u
    local.tee 3
    i32.const 1
    i32.shr_u
    local.get 3
    i32.const 1
    i32.and
    select
    local.tee 3
    local.get 5
    i32.add
    local.set 5
    local.get 3
    i64.extend_i32_u
    local.set 4
    loop  ;; label = @1
      local.get 5
      i32.const 1
      i32.add
      local.set 5
      local.get 4
      i64.const 7
      i64.shr_u
      local.tee 4
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 5
        call 50
        local.set 6
        br 1 (;@1;)
      end
      i32.const 0
      local.get 6
      local.get 5
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 6
      i32.store offset=4
    end
    local.get 7
    local.get 6
    i32.store offset=4
    local.get 7
    local.get 6
    i32.store
    local.get 7
    local.get 6
    local.get 5
    i32.add
    i32.store offset=8
    local.get 7
    local.get 1
    call 39
    drop
    local.get 1
    local.get 2
    i64.load offset=8
    i64.const 4921565091335241728
    local.get 0
    i32.load offset=8
    i64.load
    local.get 1
    i64.load
    local.tee 4
    local.get 6
    local.get 5
    call 8
    i32.store offset=52
    block  ;; label = @1
      local.get 5
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 6
      call 53
    end
    block  ;; label = @1
      local.get 4
      local.get 2
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 2
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
    local.get 7
    i32.const 16
    i32.add
    i32.store offset=4)
  (func (;25;) (type 13) (param i32 i32 i32 i32)
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
          call 54
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
      call 60
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
          block  ;; label = @4
            local.get 1
            i32.const 36
            i32.add
            i32.load8_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 44
            i32.add
            i32.load
            call 55
          end
          block  ;; label = @4
            local.get 1
            i32.const 24
            i32.add
            i32.load8_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 32
            i32.add
            i32.load
            call 55
          end
          local.get 1
          call 55
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
      call 55
    end)
  (func (;26;) (type 5) (param i32 i32)
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
              call 54
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
        call 60
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
        call 11
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
      call 55
      return
    end)
  (func (;27;) (type 8) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_s
    i32.const 768
    call 9
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 8
    call 11
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
    i32.gt_s
    i32.const 768
    call 9
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call 11
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
    i32.gt_s
    i32.const 768
    call 9
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 16
    i32.add
    i32.const 8
    call 11
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
    i32.gt_s
    i32.const 768
    call 9
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 24
    i32.add
    i32.const 8
    call 11
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 32
    i32.add
    call 38)
  (func (;28;) (type 5) (param i32 i32)
    (local i32 i32 i32 i32 i64 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 8
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i64.const 0
    i64.store align=4
    i32.const 16
    local.set 5
    local.get 1
    i32.const 16
    i32.add
    local.set 2
    local.get 1
    i32.const 20
    i32.add
    i32.load
    local.tee 7
    local.get 1
    i32.load offset=16
    local.tee 3
    i32.sub
    local.tee 4
    i32.const 4
    i32.shr_s
    i64.extend_i32_u
    local.set 6
    loop  ;; label = @1
      local.get 5
      i32.const 1
      i32.add
      local.set 5
      local.get 6
      i64.const 7
      i64.shr_u
      local.tee 6
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 3
      local.get 7
      i32.eq
      br_if 0 (;@1;)
      local.get 4
      i32.const -16
      i32.and
      local.get 5
      i32.add
      local.set 5
    end
    local.get 1
    i32.load offset=28
    local.tee 7
    local.get 5
    i32.sub
    local.get 1
    i32.const 32
    i32.add
    i32.load
    local.tee 3
    i32.sub
    local.set 5
    local.get 1
    i32.const 28
    i32.add
    local.set 4
    local.get 3
    local.get 7
    i32.sub
    i64.extend_i32_u
    local.set 6
    loop  ;; label = @1
      local.get 5
      i32.const -1
      i32.add
      local.set 5
      local.get 6
      i64.const 7
      i64.shr_u
      local.tee 6
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        local.get 5
        i32.sub
        call 26
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 7
        local.get 0
        i32.load
        local.set 5
        br 1 (;@1;)
      end
      i32.const 0
      local.set 5
    end
    local.get 8
    local.get 5
    i32.store
    local.get 8
    local.get 7
    i32.store offset=8
    local.get 7
    local.get 5
    i32.sub
    i32.const 7
    i32.gt_s
    i32.const 768
    call 9
    local.get 5
    local.get 1
    i32.const 8
    call 11
    drop
    local.get 7
    local.get 5
    i32.const 8
    i32.add
    local.tee 0
    i32.sub
    i32.const 7
    i32.gt_s
    i32.const 768
    call 9
    local.get 0
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call 11
    drop
    local.get 8
    local.get 5
    i32.const 16
    i32.add
    i32.store offset=4
    local.get 8
    local.get 2
    call 36
    local.get 4
    call 37
    drop
    i32.const 0
    local.get 8
    i32.const 16
    i32.add
    i32.store offset=4)
  (func (;29;) (type 14) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 2
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=52
        local.get 2
        i32.const 8
        i32.add
        call 7
        local.tee 1
        i32.const 31
        i32.shr_u
        i32.const 1
        i32.xor
        i32.const 656
        call 9
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.tee 1
      i64.load
      local.get 1
      i64.load offset=8
      i64.const 4921565091335241728
      call 4
      local.tee 1
      i32.const -1
      i32.ne
      i32.const 592
      call 9
      local.get 1
      local.get 2
      i32.const 8
      i32.add
      call 7
      local.tee 1
      i32.const 31
      i32.shr_u
      i32.const 1
      i32.xor
      i32.const 592
      call 9
    end
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.load
    local.get 1
    call 32
    i32.store
    i32.const 0
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=4
    local.get 0)
  (func (;30;) (type 5) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 32
    i32.sub
    local.tee 9
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load8_u
        local.tee 8
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 9
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        local.get 8
        i32.const 1
        i32.shr_u
        i32.add
        local.tee 8
        i32.store offset=24
        br 1 (;@1;)
      end
      local.get 9
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=4
      i32.add
      local.tee 8
      i32.store offset=24
      local.get 1
      i32.load offset=8
      local.set 1
    end
    local.get 9
    local.get 1
    i32.store offset=16
    local.get 9
    local.get 1
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 8
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          i32.const 8
          i32.add
          local.set 4
          local.get 0
          i32.const 4
          i32.add
          local.set 5
          local.get 1
          local.set 2
          loop  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load8_u
              i32.const 59
              i32.ne
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 5
                        i32.load
                        local.tee 8
                        local.get 4
                        i32.load
                        i32.ge_u
                        br_if 0 (;@10;)
                        local.get 8
                        i64.const 0
                        i64.store align=4
                        local.get 8
                        i32.const 8
                        i32.add
                        i32.const 0
                        i32.store
                        local.get 2
                        local.get 1
                        i32.sub
                        local.tee 3
                        i32.const -16
                        i32.ge_u
                        br_if 8 (;@2;)
                        local.get 3
                        i32.const 10
                        i32.gt_u
                        br_if 1 (;@9;)
                        local.get 8
                        local.get 3
                        i32.const 1
                        i32.shl
                        i32.store8
                        local.get 8
                        i32.const 1
                        i32.add
                        local.set 7
                        local.get 1
                        local.get 2
                        i32.ne
                        br_if 2 (;@8;)
                        br 3 (;@7;)
                      end
                      local.get 0
                      local.get 9
                      i32.const 16
                      i32.add
                      local.get 9
                      i32.const 8
                      i32.add
                      call 31
                      br 3 (;@6;)
                    end
                    local.get 3
                    i32.const 16
                    i32.add
                    i32.const -16
                    i32.and
                    local.tee 6
                    call 54
                    local.set 7
                    local.get 8
                    local.get 6
                    i32.const 1
                    i32.or
                    i32.store
                    local.get 8
                    local.get 7
                    i32.store offset=8
                    local.get 8
                    local.get 3
                    i32.store offset=4
                    local.get 1
                    local.get 2
                    i32.eq
                    br_if 1 (;@7;)
                  end
                  local.get 7
                  local.set 8
                  loop  ;; label = @8
                    local.get 8
                    local.get 1
                    i32.load8_u
                    i32.store8
                    local.get 8
                    i32.const 1
                    i32.add
                    local.set 8
                    local.get 2
                    local.get 1
                    i32.const 1
                    i32.add
                    local.tee 1
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 7
                  local.get 3
                  i32.add
                  local.set 7
                end
                local.get 7
                i32.const 0
                i32.store8
                local.get 5
                local.get 5
                i32.load
                i32.const 12
                i32.add
                i32.store
              end
              local.get 9
              local.get 9
              i32.load offset=8
              local.tee 2
              i32.const 1
              i32.add
              local.tee 1
              i32.store offset=16
              local.get 9
              i32.load offset=24
              local.set 8
            end
            local.get 9
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            i32.store offset=8
            local.get 2
            local.get 8
            i32.ne
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 1
          local.get 8
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 2
                local.get 0
                i32.load offset=8
                i32.ge_u
                br_if 0 (;@6;)
                local.get 2
                i64.const 0
                i64.store align=4
                local.get 2
                i32.const 8
                i32.add
                i32.const 0
                i32.store
                local.get 8
                local.get 1
                i32.sub
                local.tee 7
                i32.const -16
                i32.ge_u
                br_if 5 (;@1;)
                local.get 7
                i32.const 10
                i32.gt_u
                br_if 1 (;@5;)
                local.get 2
                local.get 7
                i32.const 1
                i32.shl
                i32.store8
                local.get 2
                i32.const 1
                i32.add
                local.set 5
                br 2 (;@4;)
              end
              local.get 0
              local.get 9
              i32.const 16
              i32.add
              local.get 9
              i32.const 24
              i32.add
              call 31
              br 2 (;@3;)
            end
            local.get 7
            i32.const 16
            i32.add
            i32.const -16
            i32.and
            local.tee 3
            call 54
            local.set 5
            local.get 2
            local.get 3
            i32.const 1
            i32.or
            i32.store
            local.get 2
            local.get 5
            i32.store offset=8
            local.get 2
            local.get 7
            i32.store offset=4
          end
          local.get 5
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.get 1
            i32.load8_u
            i32.store8
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 8
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 5
          local.get 7
          i32.add
          i32.const 0
          i32.store8
          local.get 0
          i32.const 4
          i32.add
          local.tee 1
          local.get 1
          i32.load
          i32.const 12
          i32.add
          i32.store
        end
        i32.const 0
        local.get 9
        i32.const 32
        i32.add
        i32.store offset=4
        return
      end
      local.get 8
      call 56
      unreachable
    end
    local.get 2
    call 56
    unreachable)
  (func (;31;) (type 15) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.get 0
        i32.load
        local.tee 9
        i32.sub
        i32.const 12
        i32.div_s
        local.tee 3
        i32.const 1
        i32.add
        local.tee 7
        i32.const 357913942
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 357913941
        local.set 8
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.get 9
            i32.sub
            i32.const 12
            i32.div_s
            local.tee 9
            i32.const 178956969
            i32.gt_u
            br_if 0 (;@4;)
            local.get 7
            local.get 9
            i32.const 1
            i32.shl
            local.tee 9
            local.get 9
            local.get 7
            i32.lt_u
            select
            local.tee 8
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 8
          i32.const 12
          i32.mul
          call 54
          local.set 6
          br 2 (;@1;)
        end
        i32.const 0
        local.set 8
        i32.const 0
        local.set 6
        br 1 (;@1;)
      end
      local.get 0
      call 60
      unreachable
    end
    local.get 6
    local.get 3
    i32.const 12
    i32.mul
    i32.add
    local.tee 9
    i32.const 0
    i32.store
    local.get 9
    i32.const 4
    i32.add
    i64.const 0
    i64.store align=4
    block  ;; label = @1
      local.get 2
      i32.load
      local.tee 2
      local.get 1
      i32.load
      local.tee 1
      i32.sub
      local.tee 4
      i32.const -16
      i32.ge_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 10
          i32.gt_u
          br_if 0 (;@3;)
          local.get 9
          local.get 4
          i32.const 1
          i32.shl
          i32.store8
          local.get 9
          i32.const 1
          i32.add
          local.set 7
          br 1 (;@2;)
        end
        local.get 4
        i32.const 16
        i32.add
        i32.const -16
        i32.and
        local.tee 5
        call 54
        local.set 7
        local.get 9
        local.get 5
        i32.const 1
        i32.or
        i32.store
        local.get 6
        local.get 3
        i32.const 12
        i32.mul
        i32.add
        local.tee 3
        local.get 7
        i32.store offset=8
        local.get 3
        local.get 4
        i32.store offset=4
      end
      local.get 8
      i32.const 12
      i32.mul
      local.set 3
      block  ;; label = @2
        local.get 1
        local.get 2
        i32.eq
        br_if 0 (;@2;)
        local.get 7
        local.set 8
        loop  ;; label = @3
          local.get 8
          local.get 1
          i32.load8_u
          i32.store8
          local.get 8
          i32.const 1
          i32.add
          local.set 8
          local.get 2
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 7
        local.get 4
        i32.add
        local.set 7
      end
      local.get 6
      local.get 3
      i32.add
      local.set 4
      local.get 7
      i32.const 0
      i32.store8
      local.get 9
      i32.const 12
      i32.add
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 8
          local.get 0
          i32.load
          local.tee 1
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          local.get 1
          i32.sub
          local.set 2
          local.get 8
          i32.const -12
          i32.add
          local.set 1
          loop  ;; label = @4
            local.get 9
            i32.const -12
            i32.add
            local.get 1
            i64.load align=4
            i64.store align=4
            local.get 9
            i32.const -4
            i32.add
            local.get 1
            i32.const 8
            i32.add
            local.tee 8
            i32.load
            i32.store
            local.get 1
            i32.const 0
            i32.store
            local.get 1
            i32.const 4
            i32.add
            i32.const 0
            i32.store
            local.get 8
            i32.const 0
            i32.store
            local.get 9
            i32.const -12
            i32.add
            local.set 9
            local.get 1
            i32.const -12
            i32.add
            local.tee 1
            local.get 2
            i32.add
            i32.const -12
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.set 1
          local.get 0
          i32.load
          local.set 8
          br 1 (;@2;)
        end
        local.get 1
        local.set 8
      end
      local.get 0
      local.get 9
      i32.store
      local.get 0
      i32.const 4
      i32.add
      local.get 7
      i32.store
      local.get 0
      i32.const 8
      i32.add
      local.get 4
      i32.store
      block  ;; label = @2
        local.get 1
        local.get 8
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        local.get 8
        i32.sub
        local.set 9
        local.get 1
        i32.const -12
        i32.add
        local.set 1
        loop  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load8_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 8
            i32.add
            i32.load
            call 55
          end
          local.get 1
          i32.const -12
          i32.add
          local.tee 1
          local.get 9
          i32.add
          i32.const -12
          i32.ne
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        call 55
      end
      return
    end
    local.get 9
    call 56
    unreachable)
  (func (;32;) (type 8) (param i32 i32) (result i32)
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
      i32.const 704
      call 9
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 513
          i32.lt_u
          br_if 0 (;@3;)
          local.get 6
          call 50
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
        call 53
      end
      i32.const 64
      call 54
      local.tee 6
      i64.const 0
      i64.store offset=24 align=4
      local.get 6
      i64.const 0
      i64.store offset=32 align=4
      local.get 6
      i64.const 0
      i64.store offset=40 align=4
      local.get 6
      local.get 0
      i32.store offset=48
      local.get 8
      i32.const 32
      i32.add
      local.get 6
      call 33
      drop
      local.get 6
      local.get 1
      i32.store offset=52
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
      i32.load offset=52
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
        call 25
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
      block  ;; label = @2
        local.get 4
        i32.const 36
        i32.add
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.const 44
        i32.add
        i32.load
        call 55
      end
      block  ;; label = @2
        local.get 4
        i32.const 24
        i32.add
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.const 32
        i32.add
        i32.load
        call 55
      end
      local.get 4
      call 55
    end
    i32.const 0
    local.get 8
    i32.const 48
    i32.add
    i32.store offset=4
    local.get 6)
  (func (;33;) (type 8) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 736
    call 9
    local.get 1
    local.get 0
    i32.load offset=4
    i32.const 8
    call 11
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
    i32.const 3
    i32.gt_u
    i32.const 736
    call 9
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 4
    call 11
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 4
    i32.add
    local.tee 2
    i32.store offset=4
    local.get 0
    i32.load offset=8
    local.get 2
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 736
    call 9
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 8
    call 11
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 24
    i32.add
    call 34
    local.get 1
    i32.const 36
    i32.add
    call 34)
  (func (;34;) (type 8) (param i32 i32) (result i32)
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
    call 35
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
                call 59
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
              call 54
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
          call 59
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
        call 55
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
    call 56
    unreachable)
  (func (;35;) (type 8) (param i32 i32) (result i32)
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
      i32.const 752
      call 9
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
        call 26
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
    i32.const 736
    call 9
    local.get 4
    local.get 0
    i32.const 4
    i32.add
    local.tee 7
    i32.load
    local.get 5
    call 11
    drop
    local.get 7
    local.get 7
    i32.load
    local.get 5
    i32.add
    i32.store
    local.get 0)
  (func (;36;) (type 8) (param i32 i32) (result i32)
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
      i32.const 768
      call 9
      local.get 0
      i32.const 4
      i32.add
      local.tee 3
      i32.load
      local.get 7
      i32.const 15
      i32.add
      i32.const 1
      call 11
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
        i32.const 768
        call 9
        local.get 3
        i32.load
        local.get 6
        i32.const 8
        call 11
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
        i32.const 768
        call 9
        local.get 3
        i32.load
        local.get 6
        i32.const 8
        i32.add
        i32.const 8
        call 11
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
  (func (;37;) (type 8) (param i32 i32) (result i32)
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
      i32.const 768
      call 9
      local.get 5
      i32.load
      local.get 8
      i32.const 15
      i32.add
      i32.const 1
      call 11
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
    i32.const 768
    call 9
    local.get 0
    i32.const 4
    i32.add
    local.tee 6
    i32.load
    local.get 2
    local.get 5
    call 11
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
  (func (;38;) (type 8) (param i32 i32) (result i32)
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
    i32.load8_u
    local.tee 5
    i32.const 1
    i32.shr_u
    local.get 5
    i32.const 1
    i32.and
    select
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
      i32.const 768
      call 9
      local.get 5
      i32.load
      local.get 8
      i32.const 15
      i32.add
      i32.const 1
      call 11
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
    block  ;; label = @1
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.get 1
      i32.load8_u
      local.tee 5
      i32.const 1
      i32.shr_u
      local.get 5
      i32.const 1
      i32.and
      local.tee 2
      select
      local.tee 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=8
      local.set 3
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.get 6
      i32.sub
      local.get 5
      i32.ge_s
      i32.const 768
      call 9
      local.get 0
      i32.const 4
      i32.add
      local.tee 6
      i32.load
      local.get 3
      local.get 1
      i32.const 1
      i32.add
      local.get 2
      select
      local.get 5
      call 11
      drop
      local.get 6
      local.get 6
      i32.load
      local.get 5
      i32.add
      i32.store
    end
    i32.const 0
    local.get 8
    i32.const 16
    i32.add
    i32.store offset=4
    local.get 0)
  (func (;39;) (type 8) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_s
    i32.const 768
    call 9
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 8
    call 11
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
    i32.const 3
    i32.gt_s
    i32.const 768
    call 9
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 8
    i32.add
    i32.const 4
    call 11
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 4
    i32.add
    local.tee 2
    i32.store offset=4
    local.get 0
    i32.load offset=8
    local.get 2
    i32.sub
    i32.const 7
    i32.gt_s
    i32.const 768
    call 9
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 16
    i32.add
    i32.const 8
    call 11
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 24
    i32.add
    call 38
    local.get 1
    i32.const 36
    i32.add
    call 38)
  (func (;40;) (type 1) (param i32)
    (local i32 i32 i32 i64 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 64
    i32.sub
    local.tee 6
    i32.store offset=4
    local.get 6
    local.get 0
    i32.const 8
    i32.add
    local.tee 3
    i32.store offset=16
    local.get 6
    i32.const 0
    i32.store offset=20
    local.get 6
    i32.const 16
    i32.add
    call 29
    drop
    local.get 6
    i32.load offset=20
    i32.const 0
    i32.ne
    i32.const 528
    call 9
    local.get 6
    i32.load offset=20
    i64.load
    i64.const 2048
    i64.lt_u
    i32.const 16
    call 9
    local.get 6
    i32.load offset=20
    i32.load offset=8
    local.set 1
    call 3
    i64.const 1000000
    i64.div_u
    i32.wrap_i64
    local.get 1
    i32.const 604800
    i32.add
    i32.gt_u
    i32.const 784
    call 9
    local.get 6
    local.get 6
    i32.load offset=20
    i64.load
    i64.const 8
    i64.shr_u
    i64.store offset=8
    local.get 0
    i64.load
    local.set 4
    local.get 6
    local.get 0
    i32.store offset=4
    local.get 6
    local.get 6
    i32.const 8
    i32.add
    i32.store
    local.get 6
    local.get 4
    i64.store offset=56
    local.get 0
    i64.load offset=8
    call 2
    i64.eq
    i32.const 224
    call 9
    local.get 6
    local.get 3
    i32.store offset=32
    local.get 6
    local.get 6
    i32.store offset=36
    local.get 6
    local.get 6
    i32.const 56
    i32.add
    i32.store offset=40
    i32.const 64
    call 54
    local.tee 1
    i64.const 0
    i64.store offset=24 align=4
    local.get 1
    i64.const 0
    i64.store offset=32 align=4
    local.get 1
    i64.const 0
    i64.store offset=40 align=4
    local.get 1
    local.get 3
    i32.store offset=48
    local.get 6
    i32.const 32
    i32.add
    local.get 1
    call 41
    local.get 6
    local.get 1
    i32.store offset=48
    local.get 6
    local.get 1
    i64.load
    local.tee 4
    i64.store offset=32
    local.get 6
    local.get 1
    i32.load offset=52
    local.tee 2
    i32.store offset=28
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 36
        i32.add
        local.tee 5
        i32.load
        local.tee 3
        local.get 0
        i32.const 40
        i32.add
        i32.load
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        local.get 4
        i64.store offset=8
        local.get 3
        local.get 2
        i32.store offset=16
        local.get 6
        i32.const 0
        i32.store offset=48
        local.get 3
        local.get 1
        i32.store
        local.get 5
        local.get 3
        i32.const 24
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      i32.const 32
      i32.add
      local.get 6
      i32.const 48
      i32.add
      local.get 6
      i32.const 32
      i32.add
      local.get 6
      i32.const 28
      i32.add
      call 25
    end
    local.get 6
    i32.load offset=48
    local.set 1
    local.get 6
    i32.const 0
    i32.store offset=48
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 36
        i32.add
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 44
        i32.add
        i32.load
        call 55
      end
      block  ;; label = @2
        local.get 1
        i32.const 24
        i32.add
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 32
        i32.add
        i32.load
        call 55
      end
      local.get 1
      call 55
    end
    i32.const 0
    local.get 6
    i32.const 64
    i32.add
    i32.store offset=4)
  (func (;41;) (type 5) (param i32 i32)
    (local i32 i32 i32 i64 i32 i32)
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 6
    local.set 7
    i32.const 0
    local.get 6
    i32.store offset=4
    local.get 1
    local.get 0
    i32.load offset=4
    local.tee 4
    i32.load
    i64.load
    i64.const 8
    i64.shl
    i64.const 256
    i64.add
    i64.store
    local.get 0
    i32.load
    local.set 2
    local.get 4
    i32.load offset=4
    local.set 4
    local.get 1
    call 3
    i64.const 1000000
    i64.div_u
    i64.store32 offset=8
    local.get 1
    local.get 4
    i64.load
    i64.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 24
        i32.add
        local.tee 4
        i32.load8_u
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 4
        i32.const 0
        i32.store16
        local.get 1
        i32.const 32
        i32.add
        local.set 3
        br 1 (;@1;)
      end
      local.get 1
      i32.const 32
      i32.add
      local.tee 3
      i32.load
      i32.const 0
      i32.store8
      local.get 1
      i32.const 28
      i32.add
      i32.const 0
      i32.store
    end
    local.get 4
    i32.const 0
    call 59
    local.get 3
    i32.const 0
    i32.store
    local.get 1
    i32.const 24
    i32.add
    i64.const 0
    i64.store align=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 36
        i32.add
        local.tee 4
        i32.load8_u
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 4
        i32.const 0
        i32.store16
        local.get 1
        i32.const 44
        i32.add
        local.set 3
        br 1 (;@1;)
      end
      local.get 1
      i32.const 44
      i32.add
      local.tee 3
      i32.load
      i32.const 0
      i32.store8
      local.get 1
      i32.const 40
      i32.add
      i32.const 0
      i32.store
    end
    local.get 4
    i32.const 0
    call 59
    local.get 3
    i32.const 0
    i32.store
    local.get 1
    i32.const 36
    i32.add
    i64.const 0
    i64.store align=4
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.get 1
    i32.const 24
    i32.add
    i32.load8_u
    local.tee 4
    i32.const 1
    i32.shr_u
    local.get 4
    i32.const 1
    i32.and
    select
    local.tee 3
    i32.const 21
    i32.add
    local.set 4
    local.get 3
    i64.extend_i32_u
    local.set 5
    loop  ;; label = @1
      local.get 4
      i32.const 1
      i32.add
      local.set 4
      local.get 5
      i64.const 7
      i64.shr_u
      local.tee 5
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        call 50
        local.set 6
        br 1 (;@1;)
      end
      i32.const 0
      local.get 6
      local.get 4
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 6
      i32.store offset=4
    end
    local.get 7
    local.get 6
    i32.store offset=4
    local.get 7
    local.get 6
    i32.store
    local.get 7
    local.get 6
    local.get 4
    i32.add
    i32.store offset=8
    local.get 7
    local.get 1
    call 39
    drop
    local.get 1
    local.get 2
    i64.load offset=8
    i64.const 4921565091335241728
    local.get 0
    i32.load offset=8
    i64.load
    local.get 1
    i64.load
    local.tee 5
    local.get 6
    local.get 4
    call 8
    i32.store offset=52
    block  ;; label = @1
      local.get 4
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 6
      call 53
    end
    block  ;; label = @1
      local.get 5
      local.get 2
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 16
      i32.add
      i64.const -2
      local.get 5
      i64.const 1
      i64.add
      local.get 5
      i64.const -3
      i64.gt_u
      select
      i64.store
    end
    i32.const 0
    local.get 7
    i32.const 16
    i32.add
    i32.store offset=4)
  (func (;42;) (type 0) (param i32 i64)
    (local i32 i32 i32 i64 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 48
    i32.sub
    local.tee 7
    i32.store offset=4
    local.get 0
    i64.load
    call 14
    local.get 0
    i32.const 8
    i32.add
    local.set 2
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.load offset=8
        local.get 0
        i32.const 16
        i32.add
        i64.load
        i64.const 4921565091335241728
        i64.const 0
        call 6
        local.tee 3
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        call 32
        drop
        br 1 (;@1;)
      end
      i32.const 1
      local.set 4
    end
    local.get 4
    i32.const 832
    call 9
    local.get 0
    i64.load
    local.set 5
    local.get 7
    local.get 0
    i32.store offset=8
    local.get 7
    local.get 5
    i64.store offset=40
    local.get 2
    i64.load
    call 2
    i64.eq
    i32.const 224
    call 9
    local.get 7
    local.get 2
    i32.store offset=16
    local.get 7
    local.get 7
    i32.const 8
    i32.add
    i32.store offset=20
    local.get 7
    local.get 7
    i32.const 40
    i32.add
    i32.store offset=24
    i32.const 64
    call 54
    local.tee 4
    i64.const 0
    i64.store offset=24 align=4
    local.get 4
    i64.const 0
    i64.store offset=32 align=4
    local.get 4
    i64.const 0
    i64.store offset=40 align=4
    local.get 4
    local.get 2
    i32.store offset=48
    local.get 7
    i32.const 16
    i32.add
    local.get 4
    call 43
    local.get 7
    local.get 4
    i32.store offset=32
    local.get 7
    local.get 4
    i64.load
    local.tee 5
    i64.store offset=16
    local.get 7
    local.get 4
    i32.load offset=52
    local.tee 3
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 36
        i32.add
        local.tee 6
        i32.load
        local.tee 2
        local.get 0
        i32.const 40
        i32.add
        i32.load
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        local.get 5
        i64.store offset=8
        local.get 2
        local.get 3
        i32.store offset=16
        local.get 7
        i32.const 0
        i32.store offset=32
        local.get 2
        local.get 4
        i32.store
        local.get 6
        local.get 2
        i32.const 24
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      i32.const 32
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
      call 25
    end
    local.get 7
    i32.load offset=32
    local.set 0
    local.get 7
    i32.const 0
    i32.store offset=32
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const 36
        i32.add
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 44
        i32.add
        i32.load
        call 55
      end
      block  ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 32
        i32.add
        i32.load
        call 55
      end
      local.get 0
      call 55
    end
    i32.const 0
    local.get 7
    i32.const 48
    i32.add
    i32.store offset=4)
  (func (;43;) (type 5) (param i32 i32)
    (local i32 i32 i32 i64 i32 i32)
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 6
    local.set 7
    i32.const 0
    local.get 6
    i32.store offset=4
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 1
    i64.const 0
    i64.store
    local.get 0
    i32.load
    local.set 2
    local.get 4
    i32.load
    local.set 4
    local.get 1
    call 3
    i64.const 1000000
    i64.div_u
    i64.store32 offset=8
    local.get 1
    local.get 4
    i64.load
    i64.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 24
        i32.add
        local.tee 4
        i32.load8_u
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 4
        i32.const 0
        i32.store16
        local.get 1
        i32.const 32
        i32.add
        local.set 3
        br 1 (;@1;)
      end
      local.get 1
      i32.const 32
      i32.add
      local.tee 3
      i32.load
      i32.const 0
      i32.store8
      local.get 1
      i32.const 28
      i32.add
      i32.const 0
      i32.store
    end
    local.get 4
    i32.const 0
    call 59
    local.get 3
    i32.const 0
    i32.store
    local.get 1
    i32.const 24
    i32.add
    i64.const 0
    i64.store align=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 36
        i32.add
        local.tee 4
        i32.load8_u
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 4
        i32.const 0
        i32.store16
        local.get 1
        i32.const 44
        i32.add
        local.set 3
        br 1 (;@1;)
      end
      local.get 1
      i32.const 44
      i32.add
      local.tee 3
      i32.load
      i32.const 0
      i32.store8
      local.get 1
      i32.const 40
      i32.add
      i32.const 0
      i32.store
    end
    local.get 4
    i32.const 0
    call 59
    local.get 3
    i32.const 0
    i32.store
    local.get 1
    i32.const 36
    i32.add
    i64.const 0
    i64.store align=4
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.get 1
    i32.const 24
    i32.add
    i32.load8_u
    local.tee 4
    i32.const 1
    i32.shr_u
    local.get 4
    i32.const 1
    i32.and
    select
    local.tee 3
    i32.const 21
    i32.add
    local.set 4
    local.get 3
    i64.extend_i32_u
    local.set 5
    loop  ;; label = @1
      local.get 4
      i32.const 1
      i32.add
      local.set 4
      local.get 5
      i64.const 7
      i64.shr_u
      local.tee 5
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        call 50
        local.set 6
        br 1 (;@1;)
      end
      i32.const 0
      local.get 6
      local.get 4
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 6
      i32.store offset=4
    end
    local.get 7
    local.get 6
    i32.store offset=4
    local.get 7
    local.get 6
    i32.store
    local.get 7
    local.get 6
    local.get 4
    i32.add
    i32.store offset=8
    local.get 7
    local.get 1
    call 39
    drop
    local.get 1
    local.get 2
    i64.load offset=8
    i64.const 4921565091335241728
    local.get 0
    i32.load offset=8
    i64.load
    local.get 1
    i64.load
    local.tee 5
    local.get 6
    local.get 4
    call 8
    i32.store offset=52
    block  ;; label = @1
      local.get 4
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 6
      call 53
    end
    block  ;; label = @1
      local.get 5
      local.get 2
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 16
      i32.add
      i64.const -2
      local.get 5
      i64.const 1
      i64.add
      local.get 5
      i64.const -3
      i64.gt_u
      select
      i64.store
    end
    i32.const 0
    local.get 7
    i32.const 16
    i32.add
    i32.store offset=4)
  (func (;44;) (type 16) (param i32 i64 i64)
    (local i32 i32 i64 i64 i64 i64 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 80
    i32.sub
    local.tee 9
    i32.store offset=4
    i64.const 0
    local.set 6
    i64.const 59
    local.set 5
    i32.const 400
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
                i64.const 10
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
              i64.eq
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
      local.get 5
      i64.const -5
      i64.add
      local.set 5
      local.get 8
      local.get 7
      i64.or
      local.set 7
      local.get 6
      i64.const 1
      i64.add
      local.tee 6
      i64.const 13
      i64.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 7
        local.get 1
        i64.ne
        br_if 0 (;@2;)
        i64.const 0
        local.set 6
        i64.const 59
        local.set 5
        i32.const 416
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
        br_if 0 (;@2;)
        local.get 9
        i32.const 32
        i32.add
        call 45
        local.get 0
        local.get 9
        i32.const 32
        i32.add
        call 23
        local.get 9
        i32.load8_u offset=64
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 9
        i32.const 72
        i32.add
        i32.load
        call 55
        br 1 (;@1;)
      end
      local.get 0
      i64.load
      local.get 1
      i64.ne
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i64.const 6111947644295184384
        i64.eq
        br_if 0 (;@2;)
        local.get 2
        i64.const 8421045207927095296
        i64.ne
        br_if 1 (;@1;)
        local.get 9
        i32.const 0
        i32.store offset=28
        local.get 9
        i32.const 1
        i32.store offset=24
        local.get 9
        local.get 9
        i64.load offset=24
        i64.store align=4
        local.get 0
        local.get 9
        call 46
        drop
        br 1 (;@1;)
      end
      local.get 9
      i32.const 0
      i32.store offset=20
      local.get 9
      i32.const 2
      i32.store offset=16
      local.get 9
      local.get 9
      i64.load offset=16
      i64.store offset=8 align=4
      local.get 0
      local.get 9
      i32.const 8
      i32.add
      call 47
      drop
    end
    i32.const 0
    local.get 9
    i32.const 80
    i32.add
    i32.store offset=4)
  (func (;45;) (type 1) (param i32)
    (local i32 i32 i64 i32 i32 i32)
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 4
    local.set 6
    i32.const 0
    local.get 4
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        call 1
        local.tee 1
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        call 50
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.get 4
      local.get 1
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 2
      i32.store offset=4
    end
    local.get 2
    local.get 1
    call 13
    drop
    local.get 0
    i32.const 24
    i32.add
    i64.const 1398362884
    i64.store
    local.get 0
    i64.const 0
    i64.store offset=16
    i32.const 1
    i32.const 288
    call 9
    i64.const 5462355
    local.set 3
    i32.const 0
    local.set 4
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
              local.get 4
              i32.const 1
              i32.add
              local.tee 4
              i32.const 7
              i32.lt_s
              br_if 0 (;@5;)
            end
          end
          i32.const 1
          local.set 5
          local.get 4
          i32.const 1
          i32.add
          local.tee 4
          i32.const 7
          i32.lt_s
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      local.set 5
    end
    local.get 5
    i32.const 352
    call 9
    local.get 0
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i64.const 0
    i64.store offset=32 align=4
    local.get 6
    local.get 2
    i32.store offset=4
    local.get 6
    local.get 2
    i32.store
    local.get 6
    local.get 2
    local.get 1
    i32.add
    i32.store offset=8
    local.get 6
    local.get 0
    call 48
    drop
    block  ;; label = @1
      local.get 1
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      call 53
    end
    i32.const 0
    local.get 6
    i32.const 16
    i32.add
    i32.store offset=4)
  (func (;46;) (type 8) (param i32 i32) (result i32)
    (local i32 i64 i32 i32 i32)
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 4
    local.set 6
    i32.const 0
    local.get 4
    i32.store offset=4
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            call 1
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 513
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            call 50
            local.set 4
            br 2 (;@2;)
          end
          i32.const 0
          local.set 4
          br 2 (;@1;)
        end
        i32.const 0
        local.get 4
        local.get 1
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 4
        i32.store offset=4
      end
      local.get 4
      local.get 1
      call 13
      drop
    end
    local.get 6
    i64.const 0
    i64.store offset=8
    local.get 1
    i32.const 7
    i32.gt_u
    i32.const 736
    call 9
    local.get 6
    i32.const 8
    i32.add
    local.get 4
    i32.const 8
    call 11
    drop
    local.get 6
    i64.load offset=8
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 4
      call 53
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
      local.get 5
      i32.add
      i32.load
      local.set 5
    end
    local.get 1
    local.get 3
    local.get 5
    call_indirect (type 0)
    i32.const 0
    local.get 6
    i32.const 16
    i32.add
    i32.store offset=4
    i32.const 1)
  (func (;47;) (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    i32.const 0
    i32.load offset=4
    local.tee 5
    local.set 4
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 1
    block  ;; label = @1
      call 1
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        i32.const 512
        i32.le_u
        br_if 0 (;@2;)
        local.get 3
        call 50
        local.tee 5
        local.get 3
        call 13
        drop
        local.get 5
        call 53
        br 1 (;@1;)
      end
      i32.const 0
      local.get 5
      local.get 3
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 5
      i32.store offset=4
      local.get 5
      local.get 3
      call 13
      drop
    end
    local.get 0
    local.get 2
    i32.const 1
    i32.shr_s
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load
      local.get 1
      i32.add
      i32.load
      local.set 1
    end
    local.get 3
    local.get 1
    call_indirect (type 1)
    i32.const 0
    local.get 4
    i32.store offset=4
    i32.const 1)
  (func (;48;) (type 8) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 736
    call 9
    local.get 1
    local.get 0
    i32.load offset=4
    i32.const 8
    call 11
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
    i32.const 736
    call 9
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 8
    call 11
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
    i32.const 736
    call 9
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 8
    call 11
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
    i32.const 736
    call 9
    local.get 1
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 8
    call 11
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 32
    i32.add
    call 34)
  (func (;49;) (type 17) (param i64 i64 i64)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 48
    i32.sub
    local.tee 3
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    local.get 0
    i64.store
    local.get 3
    i32.const 24
    i32.add
    i64.const -1
    i64.store
    local.get 3
    i32.const 32
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 3
    local.get 0
    i64.store offset=8
    local.get 3
    local.get 0
    i64.store
    local.get 3
    local.get 1
    local.get 2
    call 44
    i32.const 0
    call 10
    unreachable)
  (func (;50;) (type 14) (param i32) (result i32)
    i32.const 852
    local.get 0
    call 51)
  (func (;51;) (type 8) (param i32 i32) (result i32)
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
              call 52
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
            i32.const 9248
            call 9
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
  (func (;52;) (type 14) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8388
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=9334
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=9336
        local.set 7
        br 1 (;@1;)
      end
      memory.size
      local.set 7
      i32.const 0
      i32.const 1
      i32.store8 offset=9334
      i32.const 0
      local.get 7
      i32.const 16
      i32.shl
      local.tee 7
      i32.store offset=9336
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
            i32.load offset=9336
            local.set 3
          end
          i32.const 0
          local.set 8
          i32.const 0
          local.get 3
          i32.store offset=9336
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
            i32.load8_u offset=9334
            br_if 0 (;@4;)
            memory.size
            local.set 3
            i32.const 0
            i32.const 1
            i32.store8 offset=9334
            i32.const 0
            local.get 3
            i32.const 16
            i32.shl
            local.tee 3
            i32.store offset=9336
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
            i32.load offset=9336
            local.set 6
          end
          i32.const 0
          local.get 6
          local.get 5
          i32.add
          i32.store offset=9336
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
  (func (;53;) (type 1) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=9236
        local.tee 2
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 9044
        local.set 3
        local.get 2
        i32.const 12
        i32.mul
        i32.const 9044
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
  (func (;54;) (type 14) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      local.get 0
      select
      local.tee 1
      call 50
      local.tee 0
      br_if 0 (;@1;)
      loop  ;; label = @2
        i32.const 0
        local.set 0
        i32.const 0
        i32.load offset=9340
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call_indirect (type 2)
        local.get 1
        call 50
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;55;) (type 1) (param i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 53
    end)
  (func (;56;) (type 1) (param i32)
    call 0
    unreachable)
  (func (;57;) (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=4
            local.get 1
            i32.load8_u
            local.tee 2
            i32.const 1
            i32.shr_u
            local.get 2
            i32.const 1
            i32.and
            local.tee 4
            select
            local.set 2
            local.get 1
            i32.const 1
            i32.add
            local.set 5
            local.get 1
            i32.load offset=8
            local.set 6
            i32.const 10
            local.set 1
            block  ;; label = @5
              local.get 0
              i32.load8_u
              local.tee 3
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.tee 3
              i32.const -2
              i32.and
              i32.const -1
              i32.add
              local.set 1
            end
            local.get 6
            local.get 5
            local.get 4
            select
            local.set 5
            local.get 3
            i32.const 1
            i32.and
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.le_u
                  br_if 0 (;@7;)
                  local.get 4
                  br_if 1 (;@6;)
                  local.get 3
                  i32.const 254
                  i32.and
                  i32.const 1
                  i32.shr_u
                  local.set 3
                  br 2 (;@5;)
                end
                local.get 4
                br_if 3 (;@3;)
                local.get 0
                i32.const 1
                i32.add
                local.set 1
                local.get 2
                br_if 4 (;@2;)
                br 5 (;@1;)
              end
              local.get 0
              i32.load offset=4
              local.set 3
            end
            local.get 0
            local.get 1
            local.get 2
            local.get 1
            i32.sub
            local.get 3
            i32.const 0
            local.get 3
            local.get 2
            local.get 5
            call 58
          end
          local.get 0
          return
        end
        local.get 0
        i32.load offset=8
        local.set 1
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      local.get 5
      local.get 2
      call 12
      drop
    end
    local.get 1
    local.get 2
    i32.add
    i32.const 0
    i32.store8
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 1
      i32.shl
      i32.store8
      local.get 0
      return
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0)
  (func (;58;) (type 18) (param i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      i32.const -18
      local.get 1
      i32.sub
      local.get 2
      i32.lt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 0
          i32.const 1
          i32.add
          local.set 9
          br 1 (;@2;)
        end
        local.get 0
        i32.load offset=8
        local.set 9
      end
      i32.const -17
      local.set 10
      block  ;; label = @2
        local.get 1
        i32.const 2147483622
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 11
        local.set 10
        local.get 1
        i32.const 1
        i32.shl
        local.tee 8
        local.get 2
        local.get 1
        i32.add
        local.tee 2
        local.get 2
        local.get 8
        i32.lt_u
        select
        local.tee 2
        i32.const 11
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 16
        i32.add
        i32.const -16
        i32.and
        local.set 10
      end
      local.get 10
      call 54
      local.set 2
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 9
        local.get 4
        call 11
        drop
      end
      block  ;; label = @2
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.add
        local.get 7
        local.get 6
        call 11
        drop
      end
      block  ;; label = @2
        local.get 3
        local.get 5
        i32.sub
        local.tee 3
        local.get 4
        i32.sub
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.add
        local.get 6
        i32.add
        local.get 9
        local.get 4
        i32.add
        local.get 5
        i32.add
        local.get 7
        call 11
        drop
      end
      block  ;; label = @2
        local.get 1
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 9
        call 55
      end
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 10
      i32.const 1
      i32.or
      i32.store
      local.get 0
      local.get 3
      local.get 6
      i32.add
      local.tee 4
      i32.store offset=4
      local.get 2
      local.get 4
      i32.add
      i32.const 0
      i32.store8
      return
    end
    call 0
    unreachable)
  (func (;59;) (type 5) (param i32 i32)
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
          call 54
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
          call 11
          drop
        end
        block  ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          call 55
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
  (func (;60;) (type 1) (param i32)
    call 0
    unreachable)
  (func (;61;) (type 8) (param i32 i32) (result i32)
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
          call 54
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
        call 11
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
  (func (;62;) (type 19) (param f64 f64) (result f64)
    (local i32 i32 i64 i32 i32 i32 i32 i32 f64 i64 f64 f64 f64 f64 f64 f64 f64 i32 f64 f64)
    f64.const 0x1p+0 (;=1;)
    local.set 21
    block  ;; label = @1
      local.get 1
      i64.reinterpret_f64
      local.tee 4
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee 5
      i32.const 2147483647
      i32.and
      local.tee 8
      local.get 4
      i32.wrap_i64
      local.tee 6
      i32.or
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i64.reinterpret_f64
      local.tee 11
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.set 2
      block  ;; label = @2
        local.get 11
        i32.wrap_i64
        local.tee 3
        br_if 0 (;@2;)
        local.get 2
        i32.const 1072693248
        i32.eq
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 2147483647
          i32.and
          local.tee 7
          i32.const 2146435072
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          i32.const 0
          i32.ne
          local.get 7
          i32.const 2146435072
          i32.eq
          i32.and
          br_if 0 (;@3;)
          local.get 8
          i32.const 2146435072
          i32.gt_u
          br_if 0 (;@3;)
          local.get 6
          i32.eqz
          br_if 1 (;@2;)
          local.get 8
          i32.const 2146435072
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 1
        f64.add
        return
      end
      i32.const 0
      local.set 19
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const -1
              i32.gt_s
              br_if 0 (;@5;)
              i32.const 2
              local.set 19
              local.get 8
              i32.const 1128267775
              i32.gt_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 19
              local.get 8
              i32.const 1072693248
              i32.lt_u
              br_if 0 (;@5;)
              local.get 8
              i32.const 20
              i32.shr_u
              local.tee 9
              i32.const -1023
              i32.add
              i32.const 21
              i32.lt_s
              br_if 1 (;@4;)
              i32.const 2
              local.get 6
              i32.const 1075
              local.get 9
              i32.sub
              local.tee 19
              i32.shr_u
              local.tee 9
              i32.const 1
              i32.and
              i32.sub
              i32.const 0
              local.get 9
              local.get 19
              i32.shl
              local.get 6
              i32.eq
              select
              local.set 19
            end
            local.get 6
            i32.eqz
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 0
          local.set 19
          local.get 6
          br_if 1 (;@2;)
          i32.const 2
          local.get 8
          i32.const 1043
          local.get 9
          i32.sub
          local.tee 6
          i32.shr_u
          local.tee 19
          i32.const 1
          i32.and
          i32.sub
          i32.const 0
          local.get 19
          local.get 6
          i32.shl
          local.get 8
          i32.eq
          select
          local.set 19
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 8
                i32.const 2146435072
                i32.ne
                br_if 0 (;@6;)
                local.get 7
                i32.const -1072693248
                i32.add
                local.get 3
                i32.or
                i32.eqz
                br_if 5 (;@1;)
                local.get 7
                i32.const 1072693248
                i32.lt_u
                br_if 1 (;@5;)
                local.get 1
                f64.const 0x0p+0 (;=0;)
                local.get 5
                i32.const -1
                i32.gt_s
                select
                return
              end
              block  ;; label = @6
                local.get 8
                i32.const 1072693248
                i32.ne
                br_if 0 (;@6;)
                local.get 5
                i32.const -1
                i32.le_s
                br_if 3 (;@3;)
                local.get 0
                return
              end
              local.get 5
              i32.const 1073741824
              i32.ne
              br_if 1 (;@4;)
              local.get 0
              local.get 0
              f64.mul
              return
            end
            f64.const 0x0p+0 (;=0;)
            local.get 1
            f64.neg
            local.get 5
            i32.const -1
            i32.gt_s
            select
            return
          end
          local.get 2
          i32.const 0
          i32.lt_s
          br_if 1 (;@2;)
          local.get 5
          i32.const 1071644672
          i32.ne
          br_if 1 (;@2;)
          local.get 0
          call 63
          return
        end
        f64.const 0x1p+0 (;=1;)
        local.get 0
        f64.div
        return
      end
      local.get 0
      call 64
      local.set 21
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                br_if 0 (;@6;)
                local.get 7
                i32.eqz
                br_if 1 (;@5;)
                local.get 7
                i32.const 1073741824
                i32.or
                i32.const 2146435072
                i32.eq
                br_if 1 (;@5;)
              end
              f64.const 0x1p+0 (;=1;)
              local.set 10
              local.get 2
              i32.const -1
              i32.gt_s
              br_if 3 (;@2;)
              local.get 19
              i32.const 1
              i32.eq
              br_if 1 (;@4;)
              local.get 19
              br_if 3 (;@2;)
              local.get 0
              local.get 0
              f64.sub
              local.tee 1
              local.get 1
              f64.div
              return
            end
            f64.const 0x1p+0 (;=1;)
            local.get 21
            f64.div
            local.get 21
            local.get 5
            i32.const 0
            i32.lt_s
            select
            local.set 21
            local.get 2
            i32.const -1
            i32.gt_s
            br_if 3 (;@1;)
            local.get 19
            local.get 7
            i32.const -1072693248
            i32.add
            i32.or
            i32.eqz
            br_if 1 (;@3;)
            local.get 21
            f64.neg
            local.get 21
            local.get 19
            i32.const 1
            i32.eq
            select
            return
          end
          f64.const -0x1p+0 (;=-1;)
          local.set 10
          br 1 (;@2;)
        end
        local.get 21
        local.get 21
        f64.sub
        local.tee 1
        local.get 1
        f64.div
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 8
                          i32.const 1105199105
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 8
                          i32.const 1139802113
                          i32.lt_u
                          br_if 1 (;@10;)
                          local.get 7
                          i32.const 1072693247
                          i32.gt_u
                          br_if 4 (;@7;)
                          f64.const inf (;=inf;)
                          f64.const 0x0p+0 (;=0;)
                          local.get 5
                          i32.const 0
                          i32.lt_s
                          select
                          return
                        end
                        i32.const 0
                        local.set 8
                        local.get 7
                        i32.const 1048575
                        i32.gt_u
                        br_if 1 (;@9;)
                        local.get 21
                        f64.const 0x1p+53 (;=9.0072e+15;)
                        f64.mul
                        local.tee 21
                        i64.reinterpret_f64
                        i64.const 32
                        i64.shr_u
                        i32.wrap_i64
                        local.set 7
                        i32.const -53
                        local.set 5
                        br 2 (;@8;)
                      end
                      local.get 7
                      i32.const 1072693246
                      i32.gt_u
                      br_if 3 (;@6;)
                      f64.const 0x1.7e43c8800759cp+996 (;=1e+300;)
                      f64.const 0x1.56e1fc2f8f359p-997 (;=1e-300;)
                      local.get 5
                      i32.const 0
                      i32.lt_s
                      select
                      local.tee 1
                      local.get 1
                      local.get 10
                      f64.mul
                      f64.mul
                      return
                    end
                    i32.const 0
                    local.set 5
                  end
                  local.get 7
                  i32.const 1048575
                  i32.and
                  local.tee 6
                  i32.const 1072693248
                  i32.or
                  local.set 2
                  local.get 7
                  i32.const 20
                  i32.shr_s
                  local.get 5
                  i32.add
                  i32.const -1023
                  i32.add
                  local.set 5
                  local.get 6
                  i32.const 235663
                  i32.lt_u
                  br_if 3 (;@4;)
                  local.get 6
                  i32.const 767610
                  i32.ge_u
                  br_if 2 (;@5;)
                  i32.const 1
                  local.set 8
                  br 3 (;@4;)
                end
                f64.const inf (;=inf;)
                f64.const 0x0p+0 (;=0;)
                local.get 5
                i32.const 0
                i32.gt_s
                select
                return
              end
              local.get 7
              i32.const 1072693249
              i32.lt_u
              br_if 2 (;@3;)
              f64.const 0x1.7e43c8800759cp+996 (;=1e+300;)
              f64.const 0x1.56e1fc2f8f359p-997 (;=1e-300;)
              local.get 5
              i32.const 0
              i32.gt_s
              select
              local.tee 1
              local.get 1
              local.get 10
              f64.mul
              f64.mul
              return
            end
            local.get 2
            i32.const -1048576
            i32.add
            local.set 2
            local.get 5
            i32.const 1
            i32.add
            local.set 5
          end
          local.get 5
          f64.convert_i32_s
          local.tee 20
          local.get 8
          i32.const 3
          i32.shl
          local.tee 6
          i32.const 9376
          i32.add
          f64.load
          local.tee 18
          local.get 2
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get 21
          i64.reinterpret_f64
          i64.const 4294967295
          i64.and
          i64.or
          f64.reinterpret_i64
          local.tee 12
          local.get 6
          i32.const 9344
          i32.add
          f64.load
          local.tee 13
          f64.sub
          local.tee 14
          f64.const 0x1p+0 (;=1;)
          local.get 13
          local.get 12
          f64.add
          f64.div
          local.tee 15
          f64.mul
          local.tee 21
          i64.reinterpret_f64
          i64.const -4294967296
          i64.and
          f64.reinterpret_i64
          local.tee 0
          local.get 0
          local.get 0
          f64.mul
          local.tee 17
          f64.const 0x1.8p+1 (;=3;)
          f64.add
          local.get 21
          local.get 0
          f64.add
          local.get 15
          local.get 14
          local.get 0
          local.get 2
          i32.const 1
          i32.shr_s
          i32.const 536870912
          i32.or
          local.get 8
          i32.const 18
          i32.shl
          i32.add
          i32.const 524288
          i32.add
          i64.extend_i32_u
          i64.const 32
          i64.shl
          f64.reinterpret_i64
          local.tee 16
          f64.mul
          f64.sub
          local.get 0
          local.get 12
          local.get 16
          local.get 13
          f64.sub
          f64.sub
          f64.mul
          f64.sub
          f64.mul
          local.tee 12
          f64.mul
          local.get 21
          local.get 21
          f64.mul
          local.tee 0
          local.get 0
          f64.mul
          local.get 0
          local.get 0
          local.get 0
          local.get 0
          local.get 0
          f64.const 0x1.a7e284a454eefp-3 (;=0.206975;)
          f64.mul
          f64.const 0x1.d864a93c9db65p-3 (;=0.230661;)
          f64.add
          f64.mul
          f64.const 0x1.17460a91d4101p-2 (;=0.272728;)
          f64.add
          f64.mul
          f64.const 0x1.55555518f264dp-2 (;=0.333333;)
          f64.add
          f64.mul
          f64.const 0x1.b6db6db6fabffp-2 (;=0.428571;)
          f64.add
          f64.mul
          f64.const 0x1.3333333333303p-1 (;=0.6;)
          f64.add
          f64.mul
          f64.add
          local.tee 13
          f64.add
          i64.reinterpret_f64
          i64.const -4294967296
          i64.and
          f64.reinterpret_i64
          local.tee 0
          f64.mul
          local.tee 14
          local.get 12
          local.get 0
          f64.mul
          local.get 21
          local.get 13
          local.get 0
          f64.const -0x1.8p+1 (;=-3;)
          f64.add
          local.get 17
          f64.sub
          f64.sub
          f64.mul
          f64.add
          local.tee 21
          f64.add
          i64.reinterpret_f64
          i64.const -4294967296
          i64.and
          f64.reinterpret_i64
          local.tee 0
          f64.const 0x1.ec709ep-1 (;=0.961797;)
          f64.mul
          local.tee 12
          local.get 6
          i32.const 9360
          i32.add
          f64.load
          local.get 21
          local.get 0
          local.get 14
          f64.sub
          f64.sub
          f64.const 0x1.ec709dc3a03fdp-1 (;=0.961797;)
          f64.mul
          local.get 0
          f64.const -0x1.e2fe0145b01f5p-28 (;=-7.02846e-09;)
          f64.mul
          f64.add
          f64.add
          local.tee 13
          f64.add
          f64.add
          f64.add
          i64.reinterpret_f64
          i64.const -4294967296
          i64.and
          f64.reinterpret_i64
          local.tee 0
          local.get 20
          f64.sub
          local.get 18
          f64.sub
          local.get 12
          f64.sub
          local.set 20
          br 1 (;@2;)
        end
        local.get 21
        f64.const -0x1p+0 (;=-1;)
        f64.add
        local.tee 0
        f64.const 0x1.715476p+0 (;=1.4427;)
        f64.mul
        local.tee 21
        local.get 0
        f64.const 0x1.4ae0bf85ddf44p-26 (;=1.92596e-08;)
        f64.mul
        local.get 0
        local.get 0
        f64.mul
        f64.const 0x1p-1 (;=0.5;)
        local.get 0
        local.get 0
        f64.const -0x1p-2 (;=-0.25;)
        f64.mul
        f64.const 0x1.5555555555555p-2 (;=0.333333;)
        f64.add
        f64.mul
        f64.sub
        f64.mul
        f64.const -0x1.71547652b82fep+0 (;=-1.4427;)
        f64.mul
        f64.add
        local.tee 13
        f64.add
        i64.reinterpret_f64
        i64.const -4294967296
        i64.and
        f64.reinterpret_i64
        local.tee 0
        local.get 21
        f64.sub
        local.set 20
      end
      local.get 4
      i64.const -4294967296
      i64.and
      f64.reinterpret_i64
      local.tee 12
      local.get 0
      f64.mul
      local.tee 21
      local.get 1
      local.get 12
      f64.sub
      local.get 0
      f64.mul
      local.get 13
      local.get 20
      f64.sub
      local.get 1
      f64.mul
      f64.add
      local.tee 1
      f64.add
      local.tee 0
      i64.reinterpret_f64
      local.tee 4
      i32.wrap_i64
      local.set 8
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i64.const 32
                i64.shr_u
                i32.wrap_i64
                local.tee 2
                i32.const 1083179008
                i32.lt_s
                br_if 0 (;@6;)
                local.get 2
                i32.const -1083179008
                i32.add
                local.get 8
                i32.or
                i32.eqz
                br_if 1 (;@5;)
                local.get 10
                f64.const 0x1.7e43c8800759cp+996 (;=1e+300;)
                f64.mul
                f64.const 0x1.7e43c8800759cp+996 (;=1e+300;)
                f64.mul
                return
              end
              local.get 2
              i32.const 2147482624
              i32.and
              i32.const 1083231232
              i32.lt_u
              br_if 2 (;@3;)
              local.get 2
              i32.const 1064252416
              i32.add
              local.get 8
              i32.or
              i32.eqz
              br_if 1 (;@4;)
              local.get 10
              f64.const 0x1.56e1fc2f8f359p-997 (;=1e-300;)
              f64.mul
              f64.const 0x1.56e1fc2f8f359p-997 (;=1e-300;)
              f64.mul
              return
            end
            local.get 1
            f64.const 0x1.71547652b82fep-54 (;=8.00857e-17;)
            f64.add
            local.tee 12
            local.get 0
            local.get 21
            f64.sub
            local.tee 0
            f64.le
            local.get 12
            local.get 12
            f64.ne
            local.get 0
            local.get 0
            f64.ne
            i32.or
            i32.or
            br_if 1 (;@3;)
            local.get 10
            f64.const 0x1.7e43c8800759cp+996 (;=1e+300;)
            f64.mul
            f64.const 0x1.7e43c8800759cp+996 (;=1e+300;)
            f64.mul
            return
          end
          local.get 1
          local.get 0
          local.get 21
          f64.sub
          local.tee 0
          f64.gt
          local.get 1
          local.get 1
          f64.ne
          local.get 0
          local.get 0
          f64.ne
          i32.or
          i32.or
          i32.eqz
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 2147483647
            i32.and
            local.tee 8
            i32.const 1071644673
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 0
            i32.const 1048576
            local.get 8
            i32.const 20
            i32.shr_u
            i32.const -1022
            i32.add
            i32.shr_u
            local.get 2
            i32.add
            local.tee 8
            i32.const 1048575
            i32.and
            i32.const 1048576
            i32.or
            i32.const 1043
            local.get 8
            i32.const 20
            i32.shr_u
            i32.const 2047
            i32.and
            local.tee 6
            i32.sub
            i32.shr_u
            local.tee 5
            i32.sub
            local.get 5
            local.get 2
            i32.const 0
            i32.lt_s
            select
            local.set 2
            local.get 21
            local.get 8
            i32.const 1048575
            local.get 6
            i32.const -1023
            i32.add
            i32.shr_u
            i32.const -1
            i32.xor
            i32.and
            i64.extend_i32_u
            i64.const 32
            i64.shl
            f64.reinterpret_i64
            f64.sub
            local.set 21
            br 1 (;@3;)
          end
          i32.const 0
          local.set 2
        end
        block  ;; label = @3
          f64.const 0x1p+0 (;=1;)
          local.get 1
          local.get 21
          f64.add
          i64.reinterpret_f64
          i64.const -4294967296
          i64.and
          f64.reinterpret_i64
          local.tee 0
          f64.const 0x1.62e43p-1 (;=0.693147;)
          f64.mul
          local.tee 12
          local.get 1
          local.get 0
          local.get 21
          f64.sub
          f64.sub
          f64.const 0x1.62e42fefa39efp-1 (;=0.693147;)
          f64.mul
          local.get 0
          f64.const -0x1.05c610ca86c39p-29 (;=-1.90465e-09;)
          f64.mul
          f64.add
          local.tee 21
          f64.add
          local.tee 1
          local.get 1
          local.get 1
          local.get 1
          f64.mul
          local.tee 0
          local.get 0
          local.get 0
          local.get 0
          local.get 0
          f64.const 0x1.6376972bea4dp-25 (;=4.13814e-08;)
          f64.mul
          f64.const -0x1.bbd41c5d26bf1p-20 (;=-1.65339e-06;)
          f64.add
          f64.mul
          f64.const 0x1.1566aaf25de2cp-14 (;=6.61376e-05;)
          f64.add
          f64.mul
          f64.const -0x1.6c16c16bebd93p-9 (;=-0.00277778;)
          f64.add
          f64.mul
          f64.const 0x1.555555555553ep-3 (;=0.166667;)
          f64.add
          f64.mul
          f64.sub
          local.tee 0
          f64.mul
          local.get 0
          f64.const -0x1p+1 (;=-2;)
          f64.add
          f64.div
          local.get 21
          local.get 1
          local.get 12
          f64.sub
          f64.sub
          local.tee 0
          local.get 1
          local.get 0
          f64.mul
          f64.add
          f64.sub
          local.get 1
          f64.sub
          f64.sub
          local.tee 1
          i64.reinterpret_f64
          local.tee 4
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          local.get 2
          i32.const 20
          i32.shl
          i32.add
          local.tee 8
          i32.const 20
          i32.shr_s
          i32.const 0
          i32.le_s
          br_if 0 (;@3;)
          local.get 10
          local.get 8
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get 4
          i64.const 4294967295
          i64.and
          i64.or
          f64.reinterpret_i64
          f64.mul
          return
        end
        local.get 10
        local.get 1
        local.get 2
        call 65
        f64.mul
        return
      end
      local.get 10
      f64.const 0x1.56e1fc2f8f359p-997 (;=1e-300;)
      f64.mul
      f64.const 0x1.56e1fc2f8f359p-997 (;=1e-300;)
      f64.mul
      return
    end
    local.get 21)
  (func (;63;) (type 20) (param f64) (result f64)
    (local i64 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i64.reinterpret_f64
      local.tee 1
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee 7
      i32.const 2146435072
      i32.and
      i32.const 2146435072
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      f64.mul
      local.get 0
      f64.add
      return
    end
    local.get 1
    i32.wrap_i64
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.const 0
              i32.le_s
              br_if 0 (;@5;)
              local.get 1
              i64.const 52
              i64.shr_u
              i32.wrap_i64
              local.tee 8
              br_if 2 (;@3;)
              i32.const 1
              local.set 8
              local.get 2
              local.set 9
              br 1 (;@4;)
            end
            local.get 7
            i32.const 2147483647
            i32.and
            local.get 2
            i32.or
            i32.eqz
            br_if 2 (;@2;)
            local.get 7
            i32.const 0
            i32.lt_s
            br_if 3 (;@1;)
            i32.const 1
            local.set 8
            loop  ;; label = @5
              local.get 8
              i32.const -21
              i32.add
              local.set 8
              local.get 2
              i32.const 11
              i32.shr_u
              local.set 7
              local.get 2
              i32.const 21
              i32.shl
              local.tee 9
              local.set 2
              local.get 7
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          i32.const 0
          local.set 5
          block  ;; label = @4
            local.get 7
            i32.const 1048576
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.set 5
            loop  ;; label = @5
              local.get 5
              i32.const 1
              i32.add
              local.set 5
              local.get 7
              i32.const 1
              i32.shl
              local.tee 7
              i32.const 1048576
              i32.and
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 9
          local.get 5
          i32.shl
          local.set 2
          local.get 8
          local.get 5
          i32.sub
          local.set 8
          local.get 9
          i32.const 32
          local.get 5
          i32.sub
          i32.shr_u
          local.get 7
          i32.or
          local.set 7
        end
        local.get 7
        i32.const 1048575
        i32.and
        i32.const 1048576
        i32.or
        local.set 7
        block  ;; label = @3
          local.get 8
          i32.const -1023
          i32.add
          local.tee 10
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const 1
          i32.shl
          local.get 2
          i32.const 31
          i32.shr_u
          i32.or
          local.set 7
          local.get 2
          i32.const 1
          i32.shl
          local.set 2
        end
        local.get 2
        i32.const 31
        i32.shr_u
        local.get 7
        i32.const 1
        i32.shl
        i32.or
        local.set 7
        local.get 2
        i32.const 1
        i32.shl
        local.set 5
        i32.const 0
        local.set 4
        i32.const 2097152
        local.set 9
        i32.const 0
        local.set 8
        loop  ;; label = @3
          local.get 5
          local.set 6
          block  ;; label = @4
            local.get 7
            local.get 9
            local.get 8
            i32.add
            local.tee 5
            i32.lt_s
            br_if 0 (;@4;)
            local.get 9
            local.get 4
            i32.add
            local.set 4
            local.get 7
            local.get 5
            i32.sub
            local.set 7
            local.get 5
            local.get 9
            i32.add
            local.set 8
          end
          local.get 7
          i32.const 1
          i32.shl
          local.get 2
          i32.const 30
          i32.shr_u
          i32.const 1
          i32.and
          i32.or
          local.set 7
          local.get 6
          i32.const 1
          i32.shl
          local.set 5
          local.get 6
          local.set 2
          local.get 9
          i32.const 1
          i32.shr_u
          local.tee 9
          br_if 0 (;@3;)
        end
        local.get 10
        i32.const 1
        i32.shr_u
        local.set 3
        i32.const -2147483648
        local.set 9
        i32.const 0
        local.set 10
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 2
          local.get 9
          i32.add
          local.set 6
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              local.get 8
              i32.gt_s
              br_if 0 (;@5;)
              local.get 7
              local.get 8
              i32.ne
              br_if 1 (;@4;)
              local.get 5
              local.get 6
              i32.lt_u
              br_if 1 (;@4;)
            end
            local.get 7
            local.get 8
            i32.sub
            i32.const -1
            i32.const 0
            local.get 5
            local.get 6
            i32.lt_u
            select
            i32.add
            local.set 7
            local.get 6
            i32.const 0
            i32.lt_s
            local.get 6
            local.get 9
            i32.add
            local.tee 2
            i32.const -1
            i32.gt_s
            i32.and
            local.get 8
            i32.add
            local.set 8
            local.get 10
            local.get 9
            i32.add
            local.set 10
            local.get 5
            local.get 6
            i32.sub
            local.set 5
          end
          local.get 5
          i32.const 31
          i32.shr_u
          local.get 7
          i32.const 1
          i32.shl
          i32.or
          local.set 7
          local.get 5
          i32.const 1
          i32.shl
          local.set 5
          local.get 9
          i32.const 1
          i32.shr_u
          local.tee 9
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 5
          local.get 7
          i32.or
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 10
            i32.const -1
            i32.eq
            br_if 0 (;@4;)
            local.get 10
            i32.const 1
            i32.and
            local.get 10
            i32.add
            local.set 10
            br 1 (;@3;)
          end
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          i32.const 0
          local.set 10
        end
        local.get 3
        i32.const 20
        i32.shl
        local.get 4
        i32.const 1
        i32.shr_s
        i32.add
        i32.const 1071644672
        i32.add
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.get 10
        i32.const 1
        i32.shr_u
        local.get 4
        i32.const 31
        i32.shl
        i32.or
        i64.extend_i32_u
        i64.or
        f64.reinterpret_i64
        local.set 0
      end
      local.get 0
      return
    end
    local.get 0
    local.get 0
    f64.sub
    local.tee 0
    local.get 0
    f64.div)
  (func (;64;) (type 20) (param f64) (result f64)
    local.get 0
    i64.reinterpret_f64
    i64.const 9223372036854775807
    i64.and
    f64.reinterpret_i64)
  (func (;65;) (type 21) (param f64 i32) (result f64)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 1024
            i32.lt_s
            br_if 0 (;@4;)
            local.get 0
            f64.const 0x1p+1023 (;=8.98847e+307;)
            f64.mul
            local.set 0
            local.get 1
            i32.const -1023
            i32.add
            local.tee 2
            i32.const 1024
            i32.lt_s
            br_if 1 (;@3;)
            local.get 1
            i32.const -2046
            i32.add
            local.tee 1
            i32.const 1023
            local.get 1
            i32.const 1023
            i32.lt_s
            select
            local.set 1
            local.get 0
            f64.const 0x1p+1023 (;=8.98847e+307;)
            f64.mul
            local.set 0
            br 3 (;@1;)
          end
          local.get 1
          i32.const -1023
          i32.gt_s
          br_if 2 (;@1;)
          local.get 0
          f64.const 0x1p-969 (;=2.00417e-292;)
          f64.mul
          local.set 0
          local.get 1
          i32.const 969
          i32.add
          local.tee 2
          i32.const -1023
          i32.gt_s
          br_if 1 (;@2;)
          local.get 1
          i32.const 1938
          i32.add
          local.tee 1
          i32.const -1022
          local.get 1
          i32.const -1022
          i32.gt_s
          select
          local.set 1
          local.get 0
          f64.const 0x1p-969 (;=2.00417e-292;)
          f64.mul
          local.set 0
          br 2 (;@1;)
        end
        local.get 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.set 1
    end
    local.get 0
    local.get 1
    i32.const 1023
    i32.add
    i64.extend_i32_u
    i64.const 52
    i64.shl
    f64.reinterpret_i64
    f64.mul)
  (func (;66;) (type 6) (param i32 i32 i32) (result i32)
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
  (func (;67;) (type 14) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        loop  ;; label = @3
          local.get 2
          i32.load8_u
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          i32.const 1
          i32.add
          local.tee 2
          i32.const 3
          i32.and
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.const -4
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        i32.load
        local.tee 1
        i32.const -1
        i32.xor
        local.get 1
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.load8_u
        br_if 0 (;@2;)
      end
    end
    local.get 2
    local.get 0
    i32.sub)
  (func (;68;) (type 2)
    unreachable)
  (table (;0;) 3 3 funcref)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "_ZeqRK11checksum256S1_" (func 17))
  (export "_ZeqRK11checksum160S1_" (func 18))
  (export "_ZneRK11checksum160S1_" (func 19))
  (export "now" (func 20))
  (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func 21))
  (export "_Z17assertNotGameOverRKN9kingofeos12claim_recordE" (func 22))
  (export "_ZN9kingofeos10onTransferERKN5eosio8currency8transferE" (func 23))
  (export "_ZN9kingofeos3endEv" (func 40))
  (export "_ZN9kingofeos4initEy" (func 42))
  (export "_ZN9kingofeos5applyEyy" (func 44))
  (export "apply" (func 49))
  (export "malloc" (func 50))
  (export "free" (func 53))
  (export "pow" (func 62))
  (export "sqrt" (func 63))
  (export "fabs" (func 64))
  (export "scalbn" (func 65))
  (export "memcmp" (func 66))
  (export "strlen" (func 67))
  (elem (;0;) (i32.const 0) func 68 42 40)
  (data (;0;) (i32.const 4) "\b0d\00\00")
  (data (;1;) (i32.const 16) "King of EOS is over\00")
  (data (;2;) (i32.const 48) "deployed contract may not take part in claiming the throne\00")
  (data (;3;) (i32.const 112) "transfer memo needs two arguments separated by ';'\00")
  (data (;4;) (i32.const 176) "kingdom arguments failed the size requirements\00")
  (data (;5;) (i32.const 224) "cannot create objects in table of another contract\00")
  (data (;6;) (i32.const 288) "magnitude of asset amount must be less than 2^62\00")
  (data (;7;) (i32.const 352) "invalid symbol name\00")
  (data (;8;) (i32.const 384) "active\00")
  (data (;9;) (i32.const 400) "eosio.token\00")
  (data (;10;) (i32.const 416) "transfer\00")
  (data (;11;) (i32.const 432) "You were dethroned! Here's your profit. - King of EOS\00")
  (data (;12;) (i32.const 496) "must pay with EOS token\00")
  (data (;13;) (i32.const 528) "no previous claim exists\00")
  (data (;14;) (i32.const 560) "wrong claim price \00")
  (data (;15;) (i32.const 592) "cannot decrement end iterator when the table is empty\00")
  (data (;16;) (i32.const 656) "cannot decrement iterator at beginning of table\00")
  (data (;17;) (i32.const 704) "error reading iterator\00")
  (data (;18;) (i32.const 736) "read\00")
  (data (;19;) (i32.const 752) "get\00")
  (data (;20;) (i32.const 768) "write\00")
  (data (;21;) (i32.const 784) "max coronation time not reached yet\00")
  (data (;22;) (i32.const 832) "already initialized\00")
  (data (;23;) (i32.const 9248) "malloc_from_freed was designed to only be called after _heap was completely allocated\00")
  (data (;24;) (i32.const 9344) "\00\00\00\00\00\00\f0?\00\00\00\00\00\00\f8?")
  (data (;25;) (i32.const 9360) "\00\00\00\00\00\00\00\00\06\d0\cfC\eb\fdL>")
  (data (;26;) (i32.const 9376) "\00\00\00\00\00\00\00\00\00\00\00@\03\b8\e2?"))
