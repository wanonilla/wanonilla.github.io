(module
  (type (;0;) (func (param i32 i64 i32 i32 i32 i32 i32)))
  (type (;1;) (func))
  (type (;2;) (func (result i64)))
  (type (;3;) (func (param i64 i64)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (result i32)))
  (type (;6;) (func (param i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (type (;8;) (func (param i64)))
  (type (;9;) (func (param i32 i32 i32)))
  (type (;10;) (func (param i64 i64 i64 i64) (result i32)))
  (type (;11;) (func (param i64 i64 i64 i64 i32 i32) (result i32)))
  (type (;12;) (func (param i64 i64 i64) (result i32)))
  (type (;13;) (func (param i64 i64 i64 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32)))
  (type (;15;) (func (param i64 i64 i64)))
  (type (;16;) (func (param i32 i32 i64 i32)))
  (type (;17;) (func (param i32 i32 i32 i32)))
  (type (;18;) (func (param i32) (result i32)))
  (import "env" "abort" (func (;0;) (type 1)))
  (import "env" "action_data_size" (func (;1;) (type 5)))
  (import "env" "current_receiver" (func (;2;) (type 2)))
  (import "env" "current_time" (func (;3;) (type 2)))
  (import "env" "db_end_i64" (func (;4;) (type 12)))
  (import "env" "db_find_i64" (func (;5;) (type 10)))
  (import "env" "db_get_i64" (func (;6;) (type 7)))
  (import "env" "db_idx256_lowerbound" (func (;7;) (type 13)))
  (import "env" "db_idx256_store" (func (;8;) (type 11)))
  (import "env" "db_lowerbound_i64" (func (;9;) (type 10)))
  (import "env" "db_previous_i64" (func (;10;) (type 6)))
  (import "env" "db_store_i64" (func (;11;) (type 11)))
  (import "env" "eosio_assert" (func (;12;) (type 4)))
  (import "env" "memcpy" (func (;13;) (type 7)))
  (import "env" "read_action_data" (func (;14;) (type 6)))
  (import "env" "read_transaction" (func (;15;) (type 6)))
  (import "env" "require_auth" (func (;16;) (type 8)))
  (import "env" "require_auth2" (func (;17;) (type 3)))
  (import "env" "sha256" (func (;18;) (type 9)))
  (func (;19;) (type 6) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 32
    call 50
    i32.eqz)
  (func (;20;) (type 6) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 32
    call 50
    i32.eqz)
  (func (;21;) (type 6) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 32
    call 50
    i32.const 0
    i32.ne)
  (func (;22;) (type 5) (result i32)
    call 3
    i64.const 1000000
    i64.div_u
    i32.wrap_i64)
  (func (;23;) (type 14) (param i32)
    local.get 0
    i64.load
    local.get 0
    i64.load offset=8
    call 17)
  (func (;24;) (type 15) (param i64 i64 i64)
    (local i32 i32 i32 i32 i64 i64 i64 i64 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 64
    i32.sub
    local.tee 11
    i32.store offset=4
    i64.const 0
    local.set 8
    i64.const 59
    local.set 7
    i32.const 16
    local.set 6
    i64.const 0
    local.set 9
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 8
                i64.const 6
                i64.gt_u
                br_if 0 (;@6;)
                local.get 6
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
              local.set 10
              local.get 8
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
          local.set 10
        end
        local.get 10
        i64.const 31
        i64.and
        local.get 7
        i64.const 4294967295
        i64.and
        i64.shl
        local.set 10
      end
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      local.get 8
      i64.const 1
      i64.add
      local.set 8
      local.get 10
      local.get 9
      i64.or
      local.set 9
      local.get 7
      i64.const -5
      i64.add
      local.tee 7
      i64.const -6
      i64.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 9
      local.get 2
      i64.ne
      br_if 0 (;@1;)
      i64.const 0
      local.set 8
      i64.const 59
      local.set 7
      i32.const 32
      local.set 6
      i64.const 0
      local.set 9
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 8
                  i64.const 4
                  i64.gt_u
                  br_if 0 (;@7;)
                  local.get 6
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
                local.set 10
                local.get 8
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
            local.set 10
          end
          local.get 10
          i64.const 31
          i64.and
          local.get 7
          i64.const 4294967295
          i64.and
          i64.shl
          local.set 10
        end
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        local.get 8
        i64.const 1
        i64.add
        local.set 8
        local.get 10
        local.get 9
        i64.or
        local.set 9
        local.get 7
        i64.const -5
        i64.add
        local.tee 7
        i64.const -6
        i64.ne
        br_if 0 (;@2;)
      end
      local.get 9
      local.get 1
      i64.eq
      i32.const 48
      call 12
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i64.eq
        br_if 0 (;@2;)
        i64.const 0
        local.set 8
        i64.const 59
        local.set 7
        i32.const 16
        local.set 6
        i64.const 0
        local.set 9
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    i64.const 6
                    i64.gt_u
                    br_if 0 (;@8;)
                    local.get 6
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
                  local.set 10
                  local.get 8
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
              local.set 10
            end
            local.get 10
            i64.const 31
            i64.and
            local.get 7
            i64.const 4294967295
            i64.and
            i64.shl
            local.set 10
          end
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 8
          i64.const 1
          i64.add
          local.set 8
          local.get 10
          local.get 9
          i64.or
          local.set 9
          local.get 7
          i64.const -5
          i64.add
          local.tee 7
          i64.const -6
          i64.ne
          br_if 0 (;@3;)
        end
        local.get 9
        local.get 2
        i64.ne
        br_if 1 (;@1;)
      end
      local.get 11
      i32.const 32
      i32.add
      local.get 0
      i64.store
      local.get 11
      i32.const 40
      i32.add
      i64.const -1
      i64.store
      local.get 11
      i32.const 48
      i32.add
      local.tee 6
      i64.const 0
      i64.store
      local.get 11
      i32.const 56
      i32.add
      i32.const 0
      i32.store
      local.get 11
      local.get 0
      i64.store offset=24
      local.get 11
      local.get 0
      i64.store offset=16
      local.get 11
      i32.const 60
      i32.add
      i32.const 0
      i32.store8
      local.get 2
      i64.const -4488224056767676416
      i64.ne
      br_if 0 (;@1;)
      local.get 11
      i32.const 0
      i32.store offset=12
      local.get 11
      i32.const 1
      i32.store offset=8
      local.get 11
      local.get 11
      i64.load offset=8
      i64.store align=4
      local.get 11
      i32.const 16
      i32.add
      local.get 11
      call 26
      drop
      local.get 6
      i32.load
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 11
          i32.const 52
          i32.add
          local.tee 5
          i32.load
          local.tee 6
          local.get 4
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 6
            i32.const -24
            i32.add
            local.tee 6
            i32.load
            local.set 3
            local.get 6
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              call 45
            end
            local.get 4
            local.get 6
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 11
          i32.const 48
          i32.add
          i32.load
          local.set 6
          br 1 (;@2;)
        end
        local.get 4
        local.set 6
      end
      local.get 5
      local.get 4
      i32.store
      local.get 6
      call 45
    end
    i32.const 0
    local.get 11
    i32.const 64
    i32.add
    i32.store offset=4)
  (func (;25;) (type 0) (param i32 i64 i32 i32 i32 i32 i32)
    (local i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 80
    i32.sub
    local.tee 8
    i32.store offset=4
    local.get 8
    local.get 1
    i64.store offset=72
    local.get 1
    call 16
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      call 32
      i32.const 1
      i32.xor
      i32.const 144
      call 12
      i32.const 0
      i32.const 0
      call 15
      local.tee 3
      call 40
      local.tee 7
      local.get 3
      call 15
      drop
      local.get 7
      local.get 3
      local.get 8
      i32.const 32
      i32.add
      call 18
      local.get 8
      local.get 0
      i32.store offset=16
      local.get 8
      local.get 2
      i32.store offset=24
      local.get 8
      local.get 8
      i32.const 72
      i32.add
      i32.store offset=20
      local.get 8
      local.get 8
      i32.const 32
      i32.add
      i32.store offset=28
      local.get 8
      i32.const 8
      i32.add
      local.get 0
      i32.const 8
      i32.add
      local.get 1
      local.get 8
      i32.const 16
      i32.add
      call 33
    end
    i32.const 0
    local.get 8
    i32.const 80
    i32.add
    i32.store offset=4)
  (func (;26;) (type 6) (param i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 144
    i32.sub
    local.tee 3
    i32.store offset=4
    local.get 3
    local.tee 2
    local.get 0
    i32.store offset=108
    local.get 2
    local.get 1
    i32.load
    i32.store offset=96
    local.get 2
    local.get 1
    i32.load offset=4
    i32.store offset=100
    i32.const 0
    local.set 1
    block  ;; label = @1
      call 1
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 513
          i32.lt_u
          br_if 0 (;@3;)
          local.get 0
          call 40
          local.set 1
          br 1 (;@2;)
        end
        i32.const 0
        local.get 3
        local.get 0
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 1
        i32.store offset=4
      end
      local.get 1
      local.get 0
      call 14
      drop
    end
    local.get 2
    i32.const 40
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i32.const 32
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=16
    local.get 2
    i64.const 0
    i64.store
    local.get 2
    i32.const 0
    i32.store8 offset=48
    local.get 2
    i32.const 0
    i32.store offset=52
    local.get 2
    i32.const 56
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i32.const 60
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i32.const 0
    i32.store offset=64
    local.get 2
    i32.const 68
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i32.const 72
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i32.const 0
    i32.store offset=76
    local.get 2
    i32.const 80
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i32.const 84
    i32.add
    i32.const 0
    i32.store
    local.get 2
    local.get 1
    i32.store offset=116
    local.get 2
    local.get 1
    i32.store offset=112
    local.get 2
    local.get 1
    local.get 0
    i32.add
    i32.store offset=120
    local.get 2
    local.get 2
    i32.const 112
    i32.add
    i32.store offset=128
    local.get 2
    local.get 2
    i32.store offset=136
    local.get 2
    i32.const 136
    i32.add
    local.get 2
    i32.const 128
    i32.add
    call 27
    block  ;; label = @1
      local.get 0
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      call 43
    end
    local.get 2
    local.get 2
    i32.const 96
    i32.add
    i32.store offset=116
    local.get 2
    local.get 2
    i32.const 108
    i32.add
    i32.store offset=112
    local.get 2
    i32.const 112
    i32.add
    local.get 2
    call 28
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=76
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 84
      i32.add
      i32.load
      call 45
    end
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=64
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 72
      i32.add
      i32.load
      call 45
    end
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=52
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 60
      i32.add
      i32.load
      call 45
    end
    i32.const 0
    local.get 2
    i32.const 144
    i32.add
    i32.store offset=4
    i32.const 1)
  (func (;27;) (type 4) (param i32 i32)
    (local i32 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 16
    i32.sub
    local.tee 4
    i32.store offset=4
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
    i32.const 112
    call 12
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 8
    call 13
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 0
    i32.load
    local.set 3
    local.get 1
    i32.load
    local.tee 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 31
    i32.gt_u
    i32.const 112
    call 12
    local.get 3
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 32
    call 13
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 32
    i32.add
    i32.store offset=4
    local.get 1
    i32.load
    local.tee 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.ne
    i32.const 112
    call 12
    local.get 4
    i32.const 15
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 1
    call 13
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 3
    local.get 4
    i32.load8_u offset=15
    i32.const 0
    i32.ne
    i32.store8 offset=48
    local.get 1
    i32.load
    local.get 3
    i32.const 52
    i32.add
    call 29
    drop
    local.get 1
    i32.load
    local.get 3
    i32.const 64
    i32.add
    call 29
    drop
    local.get 1
    i32.load
    local.get 3
    i32.const 76
    i32.add
    call 29
    drop
    i32.const 0
    local.get 4
    i32.const 16
    i32.add
    i32.store offset=4)
  (func (;28;) (type 4) (param i32 i32)
    (local i64 i32 i32 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 160
    i32.sub
    local.tee 6
    i32.store offset=4
    local.get 6
    i32.const 48
    i32.add
    i32.const 28
    i32.add
    local.get 1
    i32.const 44
    i32.add
    i32.load
    i32.store
    local.get 6
    i32.const 48
    i32.add
    i32.const 24
    i32.add
    local.tee 4
    local.get 1
    i32.const 40
    i32.add
    i32.load
    i32.store
    local.get 6
    i32.const 48
    i32.add
    i32.const 20
    i32.add
    local.get 1
    i32.const 36
    i32.add
    i32.load
    i32.store
    local.get 6
    i32.const 48
    i32.add
    i32.const 16
    i32.add
    local.tee 5
    local.get 1
    i32.const 32
    i32.add
    i32.load
    i32.store
    local.get 6
    local.get 1
    i32.load offset=16
    i32.store offset=48
    local.get 6
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.store offset=60
    local.get 6
    local.get 1
    i32.const 24
    i32.add
    i32.load
    i32.store offset=56
    local.get 6
    local.get 1
    i32.const 20
    i32.add
    i32.load
    i32.store offset=52
    local.get 1
    i64.load
    local.set 2
    local.get 1
    i32.load8_u offset=48
    local.set 3
    local.get 6
    i32.const 32
    i32.add
    local.get 1
    i32.const 52
    i32.add
    call 49
    drop
    local.get 6
    i32.const 16
    i32.add
    local.get 1
    i32.const 64
    i32.add
    call 49
    drop
    local.get 6
    local.get 1
    i32.const 76
    i32.add
    call 49
    drop
    local.get 6
    i32.const 80
    i32.add
    i32.const 24
    i32.add
    local.get 4
    i64.load
    i64.store
    local.get 6
    i32.const 80
    i32.add
    i32.const 16
    i32.add
    local.get 5
    i64.load
    i64.store
    local.get 6
    local.get 6
    i64.load offset=56
    i64.store offset=88
    local.get 6
    local.get 6
    i64.load offset=48
    i64.store offset=80
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
    local.get 6
    i32.const 144
    i32.add
    local.get 6
    i32.const 32
    i32.add
    call 49
    drop
    local.get 6
    i32.const 128
    i32.add
    local.get 6
    i32.const 16
    i32.add
    call 49
    drop
    local.get 6
    i32.const 112
    i32.add
    local.get 6
    call 49
    drop
    local.get 0
    local.get 2
    local.get 6
    i32.const 80
    i32.add
    local.get 3
    i32.const 255
    i32.and
    i32.const 0
    i32.ne
    local.get 6
    i32.const 144
    i32.add
    local.get 6
    i32.const 128
    i32.add
    local.get 6
    i32.const 112
    i32.add
    local.get 1
    call_indirect (type 0)
    block  ;; label = @1
      local.get 6
      i32.load8_u offset=112
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.load offset=120
      call 45
    end
    block  ;; label = @1
      local.get 6
      i32.load8_u offset=128
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.load offset=136
      call 45
    end
    block  ;; label = @1
      local.get 6
      i32.load8_u offset=144
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.load offset=152
      call 45
    end
    block  ;; label = @1
      local.get 6
      i32.load8_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.load offset=8
      call 45
    end
    block  ;; label = @1
      local.get 6
      i32.load8_u offset=16
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.load offset=24
      call 45
    end
    block  ;; label = @1
      local.get 6
      i32.load8_u offset=32
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.load offset=40
      call 45
    end
    i32.const 0
    local.get 6
    i32.const 160
    i32.add
    i32.store offset=4)
  (func (;29;) (type 6) (param i32 i32) (result i32)
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
    call 30
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
                call 47
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
              call 44
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
          call 47
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
        call 45
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
    call 46
    unreachable)
  (func (;30;) (type 6) (param i32 i32) (result i32)
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
      i32.const 128
      call 12
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
        call 31
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
    i32.const 112
    call 12
    local.get 4
    local.get 0
    i32.const 4
    i32.add
    local.tee 7
    i32.load
    local.get 5
    call 13
    drop
    local.get 7
    local.get 7
    i32.load
    local.get 5
    i32.add
    i32.store
    local.get 0)
  (func (;31;) (type 4) (param i32 i32)
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
              call 44
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
        call 48
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
        call 13
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
      call 45
      return
    end)
  (func (;32;) (type 6) (param i32 i32) (result i32)
    (local i64 i64 i64 i64 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 48
    i32.sub
    local.tee 6
    i32.store offset=4
    local.get 6
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=32
    local.get 1
    i64.load offset=24
    local.set 2
    local.get 1
    i64.load offset=16
    local.set 3
    local.get 1
    i64.load offset=8
    local.set 4
    local.get 1
    i64.load
    local.set 5
    i32.const 1
    i32.const 320
    call 12
    local.get 6
    local.get 5
    i64.store offset=8
    local.get 6
    local.get 4
    i64.store
    i32.const 1
    i32.const 320
    call 12
    local.get 6
    i32.const 24
    i32.add
    local.get 3
    i64.store
    local.get 6
    local.get 2
    i64.store offset=16
    local.get 6
    i32.const 40
    i32.add
    local.get 6
    i32.const 32
    i32.add
    local.get 6
    call 39
    i32.const 0
    local.set 0
    block  ;; label = @1
      local.get 6
      i32.load offset=44
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 40
      i32.add
      i64.load
      local.set 4
      local.get 1
      i32.const 32
      i32.add
      i64.load
      local.set 5
      local.get 1
      i32.const 24
      i32.add
      i64.load
      local.set 2
      local.get 1
      i64.load offset=16
      local.set 3
      i32.const 1
      i32.const 320
      call 12
      i32.const 1
      i32.const 320
      call 12
      local.get 2
      local.get 6
      i64.load
      i64.xor
      local.get 3
      local.get 6
      i64.load offset=8
      i64.xor
      i64.or
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 6
      i32.const 16
      i32.add
      i64.load
      local.get 4
      i64.xor
      local.get 6
      i32.const 24
      i32.add
      i64.load
      local.get 5
      i64.xor
      i64.or
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 6
      i32.load offset=44
      i32.const 0
      i32.ne
      local.set 0
    end
    i32.const 0
    local.get 6
    i32.const 48
    i32.add
    i32.store offset=4
    local.get 0)
  (func (;33;) (type 16) (param i32 i32 i64 i32)
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
    i32.const 176
    call 12
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
    i32.const 96
    call 44
    local.tee 3
    local.get 1
    i32.store offset=80
    local.get 7
    i32.const 16
    i32.add
    local.get 3
    call 34
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
    i32.load offset=84
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
      call 35
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 7
    i32.load offset=32
    local.set 1
    local.get 7
    i32.const 0
    i32.store offset=32
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call 45
    end
    i32.const 0
    local.get 7
    i32.const 48
    i32.add
    i32.store offset=4)
  (func (;34;) (type 4) (param i32 i32)
    (local i32 i32 i32 i64 i32 i32 i32 i64 i64 i64 i64 i64 i64 i32 i32)
    i32.const 0
    i32.load offset=4
    i32.const 32
    i32.sub
    local.tee 16
    local.set 15
    i32.const 0
    local.get 16
    i32.store offset=4
    local.get 0
    i32.load
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 3
      i32.load
      local.tee 7
      i32.const 24
      i32.add
      local.tee 6
      i64.load
      local.tee 5
      i64.const -1
      i64.ne
      br_if 0 (;@1;)
      i64.const 0
      local.set 5
      block  ;; label = @2
        local.get 7
        i32.const 8
        i32.add
        local.tee 8
        i64.load
        local.get 7
        i32.const 16
        i32.add
        i64.load
        i64.const 7615821560997216256
        i64.const 0
        call 9
        local.tee 4
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 8
        local.get 4
        call 36
        drop
        local.get 15
        i32.const 0
        i32.store offset=4
        local.get 15
        local.get 8
        i32.store
        i64.const -2
        local.get 15
        call 37
        i32.load offset=4
        i64.load
        local.tee 5
        i64.const 1
        i64.add
        local.get 5
        i64.const -3
        i64.gt_u
        select
        local.set 5
      end
      local.get 7
      i32.const 24
      i32.add
      local.get 5
      i64.store
    end
    local.get 5
    i64.const -2
    i64.lt_u
    i32.const 240
    call 12
    local.get 1
    local.get 6
    i64.load
    i64.store
    local.get 1
    local.get 3
    i32.load offset=4
    i64.load
    i64.store offset=8
    local.get 1
    local.get 3
    i32.load offset=8
    local.tee 7
    i64.load
    i64.store offset=16
    local.get 1
    i32.const 40
    i32.add
    local.tee 6
    local.get 7
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 32
    i32.add
    local.tee 8
    local.get 7
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 24
    i32.add
    local.get 7
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 1
    local.get 3
    i32.load offset=12
    local.tee 3
    i64.load
    i64.store offset=48
    local.get 1
    i32.const 72
    i32.add
    local.get 3
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 64
    i32.add
    local.get 3
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 56
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i64.load
    i64.store
    i32.const 0
    local.get 16
    local.tee 3
    i32.const -80
    i32.add
    local.tee 7
    i32.store offset=4
    i32.const 1
    i32.const 304
    call 12
    local.get 7
    local.get 1
    i32.const 8
    call 13
    drop
    i32.const 1
    i32.const 304
    call 12
    local.get 3
    i32.const -72
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call 13
    drop
    i32.const 1
    i32.const 304
    call 12
    local.get 3
    i32.const -64
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i32.const 32
    call 13
    drop
    i32.const 1
    i32.const 304
    call 12
    local.get 3
    i32.const -32
    i32.add
    local.get 1
    i32.const 48
    i32.add
    i32.const 32
    call 13
    drop
    local.get 1
    local.get 2
    i64.load offset=8
    i64.const 7615821560997216256
    local.get 0
    i32.load offset=8
    i64.load
    local.get 1
    i64.load
    local.tee 5
    local.get 7
    i32.const 80
    call 11
    i32.store offset=84
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
    local.get 2
    i32.const 8
    i32.add
    i64.load
    local.set 5
    local.get 0
    i32.const 8
    i32.add
    i32.load
    i64.load
    local.set 9
    local.get 1
    i64.load
    local.set 10
    local.get 6
    i64.load
    local.set 11
    local.get 8
    i64.load
    local.set 12
    local.get 1
    i32.const 24
    i32.add
    i64.load
    local.set 13
    local.get 1
    i64.load offset=16
    local.set 14
    i32.const 1
    i32.const 320
    call 12
    local.get 15
    local.get 14
    i64.store offset=8
    local.get 15
    local.get 13
    i64.store
    i32.const 1
    i32.const 320
    call 12
    local.get 15
    i32.const 24
    i32.add
    local.get 12
    i64.store
    local.get 15
    local.get 11
    i64.store offset=16
    local.get 1
    local.get 5
    i64.const 7615821560997216256
    local.get 9
    local.get 10
    local.get 15
    i32.const 2
    call 8
    i32.store offset=88
    i32.const 0
    local.get 15
    i32.const 32
    i32.add
    i32.store offset=4)
  (func (;35;) (type 17) (param i32 i32 i32 i32)
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
          call 44
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
      call 48
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
          call 45
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
      call 45
    end)
  (func (;36;) (type 6) (param i32 i32) (result i32)
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
      call 6
      local.tee 6
      i32.const 31
      i32.shr_u
      i32.const 1
      i32.xor
      i32.const 480
      call 12
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 513
          i32.lt_u
          br_if 0 (;@3;)
          local.get 6
          call 40
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
      call 6
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
        call 43
      end
      i32.const 96
      call 44
      local.tee 6
      local.get 0
      i32.store offset=80
      local.get 8
      i32.const 32
      i32.add
      local.get 6
      call 38
      drop
      local.get 6
      i32.const -1
      i32.store offset=88
      local.get 6
      local.get 1
      i32.store offset=84
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
      i32.load offset=84
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
        call 35
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
      call 45
    end
    i32.const 0
    local.get 8
    i32.const 48
    i32.add
    i32.store offset=4
    local.get 6)
  (func (;37;) (type 18) (param i32) (result i32)
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
        i32.load offset=84
        local.get 2
        i32.const 8
        i32.add
        call 10
        local.tee 1
        i32.const 31
        i32.shr_u
        i32.const 1
        i32.xor
        i32.const 432
        call 12
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.tee 1
      i64.load
      local.get 1
      i64.load offset=8
      i64.const 7615821560997216256
      call 4
      local.tee 1
      i32.const -1
      i32.ne
      i32.const 368
      call 12
      local.get 1
      local.get 2
      i32.const 8
      i32.add
      call 10
      local.tee 1
      i32.const 31
      i32.shr_u
      i32.const 1
      i32.xor
      i32.const 368
      call 12
    end
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.load
    local.get 1
    call 36
    i32.store
    i32.const 0
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=4
    local.get 0)
  (func (;38;) (type 6) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 112
    call 12
    local.get 1
    local.get 0
    i32.load offset=4
    i32.const 8
    call 13
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
    i32.const 112
    call 12
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 8
    call 13
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
    i32.const 31
    i32.gt_u
    i32.const 112
    call 12
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 32
    call 13
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 32
    i32.add
    local.tee 2
    i32.store offset=4
    local.get 0
    i32.load offset=8
    local.get 2
    i32.sub
    i32.const 31
    i32.gt_u
    i32.const 112
    call 12
    local.get 1
    i32.const 48
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 32
    call 13
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 32
    i32.add
    i32.store offset=4
    local.get 0)
  (func (;39;) (type 9) (param i32 i32 i32)
    (local i32 i32 i64 i32 i32 i32 i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=4
    i32.const 48
    i32.sub
    local.tee 10
    i32.store offset=4
    local.get 10
    i64.const 0
    i64.store offset=40
    local.get 10
    i32.const 24
    i32.add
    local.get 2
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 10
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 10
    local.get 2
    i32.const 8
    i32.add
    i64.load
    i64.store offset=8
    local.get 10
    local.get 2
    i64.load
    i64.store
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 8
      i64.load
      local.get 8
      i64.load offset=8
      i64.const 7615821560997216256
      local.get 10
      i32.const 2
      local.get 10
      i32.const 40
      i32.add
      call 7
      local.tee 3
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 10
      i64.load offset=40
      local.set 5
      block  ;; label = @2
        local.get 1
        i32.load
        local.tee 4
        i32.const 28
        i32.add
        i32.load
        local.tee 9
        local.get 4
        i32.load offset=24
        local.tee 6
        i32.eq
        br_if 0 (;@2;)
        local.get 9
        i32.const -24
        i32.add
        local.set 2
        i32.const 0
        local.get 6
        i32.sub
        local.set 7
        loop  ;; label = @3
          local.get 2
          i32.load
          i64.load
          local.get 5
          i64.eq
          br_if 1 (;@2;)
          local.get 2
          local.set 9
          local.get 2
          i32.const -24
          i32.add
          local.tee 8
          local.set 2
          local.get 8
          local.get 7
          i32.add
          i32.const -24
          i32.ne
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 9
          local.get 6
          i32.eq
          br_if 0 (;@3;)
          local.get 9
          i32.const -24
          i32.add
          i32.load
          local.tee 2
          i32.load offset=80
          local.get 4
          i32.eq
          i32.const 512
          call 12
          br 1 (;@2;)
        end
        local.get 4
        local.get 4
        i64.load
        local.get 4
        i64.load offset=8
        i64.const 7615821560997216256
        local.get 5
        call 5
        call 36
        local.tee 2
        i32.load offset=80
        local.get 4
        i32.eq
        i32.const 512
        call 12
      end
      local.get 2
      i32.const 88
      i32.add
      local.get 3
      i32.store
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    i32.const 0
    local.get 10
    i32.const 48
    i32.add
    i32.store offset=4)
  (func (;40;) (type 18) (param i32) (result i32)
    i32.const 564
    local.get 0
    call 41)
  (func (;41;) (type 6) (param i32 i32) (result i32)
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
              call 42
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
            i32.const 8960
            call 12
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
  (func (;42;) (type 18) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8388
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=9046
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=9048
        local.set 7
        br 1 (;@1;)
      end
      memory.size
      local.set 7
      i32.const 0
      i32.const 1
      i32.store8 offset=9046
      i32.const 0
      local.get 7
      i32.const 16
      i32.shl
      local.tee 7
      i32.store offset=9048
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
            i32.load offset=9048
            local.set 3
          end
          i32.const 0
          local.set 8
          i32.const 0
          local.get 3
          i32.store offset=9048
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
            i32.load8_u offset=9046
            br_if 0 (;@4;)
            memory.size
            local.set 3
            i32.const 0
            i32.const 1
            i32.store8 offset=9046
            i32.const 0
            local.get 3
            i32.const 16
            i32.shl
            local.tee 3
            i32.store offset=9048
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
            i32.load offset=9048
            local.set 6
          end
          i32.const 0
          local.get 6
          local.get 5
          i32.add
          i32.store offset=9048
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
  (func (;43;) (type 14) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=8948
        local.tee 2
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 8756
        local.set 3
        local.get 2
        i32.const 12
        i32.mul
        i32.const 8756
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
  (func (;44;) (type 18) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      local.get 0
      select
      local.tee 1
      call 40
      local.tee 0
      br_if 0 (;@1;)
      loop  ;; label = @2
        i32.const 0
        local.set 0
        i32.const 0
        i32.load offset=9052
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call_indirect (type 1)
        local.get 1
        call 40
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;45;) (type 14) (param i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 43
    end)
  (func (;46;) (type 14) (param i32)
    call 0
    unreachable)
  (func (;47;) (type 4) (param i32 i32)
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
          call 44
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
          call 13
          drop
        end
        block  ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          call 45
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
  (func (;48;) (type 14) (param i32)
    call 0
    unreachable)
  (func (;49;) (type 6) (param i32 i32) (result i32)
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
          call 44
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
        call 13
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
  (func (;50;) (type 7) (param i32 i32 i32) (result i32)
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
  (func (;51;) (type 1)
    unreachable)
  (table (;0;) 2 2 funcref)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "_ZeqRK11checksum256S1_" (func 19))
  (export "_ZeqRK11checksum160S1_" (func 20))
  (export "_ZneRK11checksum160S1_" (func 21))
  (export "now" (func 22))
  (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func 23))
  (export "apply" (func 24))
  (export "malloc" (func 40))
  (export "free" (func 43))
  (export "memcmp" (func 50))
  (elem (;0;) (i32.const 0) func 51 25)
  (data (;0;) (i32.const 4) "`c\00\00")
  (data (;1;) (i32.const 16) "onerror\00")
  (data (;2;) (i32.const 32) "eosio\00")
  (data (;3;) (i32.const 48) "onerror action's are only valid from the \22eosio\22 system account\00")
  (data (;4;) (i32.const 112) "read\00")
  (data (;5;) (i32.const 128) "get\00")
  (data (;6;) (i32.const 144) "hash already exist in table\00")
  (data (;7;) (i32.const 176) "cannot create objects in table of another contract\00")
  (data (;8;) (i32.const 240) "next primary key in table is at autoincrement limit\00")
  (data (;9;) (i32.const 304) "write\00")
  (data (;10;) (i32.const 320) "unexpected error in fixed_key constructor\00")
  (data (;11;) (i32.const 368) "cannot decrement end iterator when the table is empty\00")
  (data (;12;) (i32.const 432) "cannot decrement iterator at beginning of table\00")
  (data (;13;) (i32.const 480) "error reading iterator\00")
  (data (;14;) (i32.const 512) "object passed to iterator_to is not in multi_index\00")
  (data (;15;) (i32.const 8960) "malloc_from_freed was designed to only be called after _heap was completely allocated\00"))
