(module
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i64 i64 i32 i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i64)))
  (type (;5;) (func (result i64)))
  (type (;6;) (func (param i32 i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (type (;8;) (func (result i32)))
  (type (;9;) (func (param i32 i32) (result i32)))
  (type (;10;) (func (param i64 i64 i64 i64) (result i32)))
  (type (;11;) (func (param i64 i64 i64 i64 i32 i32) (result i32)))
  (type (;12;) (func (param i64 i64 i64) (result i32)))
  (type (;13;) (func (param i32 i64 i64 i64 i64)))
  (type (;14;) (func (param i64 i64) (result i32)))
  (type (;15;) (func (param i32 f64)))
  (type (;16;) (func (param i32 f32)))
  (type (;17;) (func (param i64 i64) (result f64)))
  (type (;18;) (func (param i64 i64) (result f32)))
  (type (;19;) (func (param i32 i32 i32 i32)))
  (type (;20;) (func (param i64 i64 i64)))
  (type (;21;) (func (param i32) (result i32)))
  (type (;22;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
  (import "env" "prints" (func (;0;) (type 3)))
  (import "env" "printn" (func (;1;) (type 4)))
  (import "env" "current_receiver" (func (;2;) (type 5)))
  (import "env" "eosio_assert" (func (;3;) (type 6)))
  (import "env" "memcpy" (func (;4;) (type 7)))
  (import "env" "send_inline" (func (;5;) (type 6)))
  (import "env" "action_data_size" (func (;6;) (type 8)))
  (import "env" "read_action_data" (func (;7;) (type 9)))
  (import "env" "db_lowerbound_i64" (func (;8;) (type 10)))
  (import "env" "db_store_i64" (func (;9;) (type 11)))
  (import "env" "db_previous_i64" (func (;10;) (type 9)))
  (import "env" "db_end_i64" (func (;11;) (type 12)))
  (import "env" "db_get_i64" (func (;12;) (type 7)))
  (import "env" "abort" (func (;13;) (type 2)))
  (import "env" "memset" (func (;14;) (type 7)))
  (import "env" "memmove" (func (;15;) (type 7)))
  (import "env" "__unordtf2" (func (;16;) (type 10)))
  (import "env" "__eqtf2" (func (;17;) (type 10)))
  (import "env" "__multf3" (func (;18;) (type 13)))
  (import "env" "__addtf3" (func (;19;) (type 13)))
  (import "env" "__subtf3" (func (;20;) (type 13)))
  (import "env" "__netf2" (func (;21;) (type 10)))
  (import "env" "__fixunstfsi" (func (;22;) (type 14)))
  (import "env" "__floatunsitf" (func (;23;) (type 6)))
  (import "env" "__fixtfsi" (func (;24;) (type 14)))
  (import "env" "__floatsitf" (func (;25;) (type 6)))
  (import "env" "__extenddftf2" (func (;26;) (type 15)))
  (import "env" "__extendsftf2" (func (;27;) (type 16)))
  (import "env" "__divtf3" (func (;28;) (type 13)))
  (import "env" "__letf2" (func (;29;) (type 10)))
  (import "env" "__trunctfdf2" (func (;30;) (type 17)))
  (import "env" "__getf2" (func (;31;) (type 10)))
  (import "env" "__trunctfsf2" (func (;32;) (type 18)))
  (import "env" "set_blockchain_parameters_packed" (func (;33;) (type 6)))
  (import "env" "get_blockchain_parameters_packed" (func (;34;) (type 9)))
  (func (;35;) (type 2))
  (func (;36;) (type 0) (param i32 i64)
    i32.const 8192
    call 0
    local.get 1
    call 1)
  (func (;37;) (type 1) (param i32 i64 i64 i32 i32)
    (local i32 i64 i32 i32 i64 i64)
    global.get 0
    i32.const 176
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 2
    i64.store offset=136
    local.get 5
    local.get 1
    i64.store offset=144
    i32.const 8200
    call 0
    local.get 1
    call 1
    i32.const 8320
    call 0
    local.get 2
    call 1
    i32.const 8325
    call 0
    i64.const 7
    local.set 6
    loop  ;; label = @1
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
        block  ;; label = @3
          i64.const 4849663661234454528
          local.get 1
          i64.eq
          br_if 0 (;@3;)
          i64.const 7
          local.set 6
          loop  ;; label = @4
            local.get 6
            i64.const 1
            i64.add
            local.tee 6
            i64.const 13
            i64.ne
            br_if 0 (;@4;)
          end
          i64.const 4849663661234454528
          local.get 2
          i64.ne
          br_if 0 (;@3;)
          local.get 3
          i64.load offset=8
          i64.const 1397703940
          i64.ne
          br_if 0 (;@3;)
          local.get 5
          i32.const 128
          i32.add
          i32.const 0
          i32.store
          local.get 5
          local.get 1
          i64.store offset=104
          local.get 5
          i64.const -1
          i64.store offset=112
          local.get 5
          i64.const 0
          i64.store offset=120
          local.get 5
          local.get 0
          i64.load
          local.tee 6
          i64.store offset=96
          local.get 5
          local.get 3
          i32.store offset=68
          local.get 5
          local.get 4
          i32.store offset=72
          local.get 5
          local.get 5
          i32.const 144
          i32.add
          i32.store offset=60
          local.get 5
          local.get 5
          i32.const 96
          i32.add
          i32.store offset=56
          local.get 5
          local.get 5
          i32.const 136
          i32.add
          i32.store offset=64
          local.get 5
          local.get 6
          i64.store offset=160
          local.get 6
          call 2
          i64.eq
          i32.const 8522
          call 3
          local.get 5
          local.get 5
          i32.const 56
          i32.add
          i32.store offset=20
          local.get 5
          local.get 5
          i32.const 96
          i32.add
          i32.store offset=16
          local.get 5
          local.get 5
          i32.const 160
          i32.add
          i32.store offset=24
          i32.const 64
          call 56
          local.tee 7
          i64.const 1398362884
          i64.store offset=32
          local.get 7
          i64.const 0
          i64.store offset=24
          i32.const 1
          i32.const 8447
          call 3
          i64.const 5462355
          local.set 6
          i32.const 0
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 6
                i32.wrap_i64
                i32.const 24
                i32.shl
                i32.const -1073741825
                i32.add
                i32.const 452984830
                i32.gt_u
                br_if 1 (;@5;)
                local.get 6
                i64.const 8
                i64.shr_u
                local.set 1
                block  ;; label = @7
                  local.get 6
                  i64.const 65280
                  i64.and
                  i64.const 0
                  i64.eq
                  br_if 0 (;@7;)
                  local.get 1
                  local.set 6
                  i32.const 1
                  local.set 4
                  local.get 0
                  local.tee 8
                  i32.const 1
                  i32.add
                  local.set 0
                  local.get 8
                  i32.const 6
                  i32.lt_s
                  br_if 1 (;@6;)
                  br 3 (;@4;)
                end
                local.get 1
                local.set 6
                loop  ;; label = @7
                  local.get 6
                  i64.const 65280
                  i64.and
                  i64.const 0
                  i64.ne
                  br_if 2 (;@5;)
                  local.get 6
                  i64.const 8
                  i64.shr_u
                  local.set 6
                  local.get 0
                  i32.const 6
                  i32.lt_s
                  local.set 4
                  local.get 0
                  i32.const 1
                  i32.add
                  local.tee 8
                  local.set 0
                  local.get 4
                  br_if 0 (;@7;)
                end
                i32.const 1
                local.set 4
                local.get 8
                i32.const 1
                i32.add
                local.set 0
                local.get 8
                i32.const 6
                i32.lt_s
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            i32.const 0
            local.set 4
          end
          local.get 4
          i32.const 8496
          call 3
          local.get 7
          i32.const 0
          i32.store offset=48
          local.get 7
          i64.const 0
          i64.store offset=40 align=4
          local.get 7
          local.get 5
          i32.const 96
          i32.add
          i32.store offset=52
          local.get 5
          i32.const 16
          i32.add
          local.get 7
          call 38
          local.get 5
          local.get 7
          i32.store
          local.get 5
          local.get 7
          i64.load
          local.tee 6
          i64.store offset=16
          local.get 5
          local.get 7
          i32.load offset=56
          local.tee 4
          i32.store offset=156
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i32.const 124
                i32.add
                local.tee 8
                i32.load
                local.tee 0
                local.get 5
                i32.const 128
                i32.add
                i32.load
                i32.ge_u
                br_if 0 (;@6;)
                local.get 0
                local.get 6
                i64.store offset=8
                local.get 0
                local.get 4
                i32.store offset=16
                local.get 5
                i32.const 0
                i32.store
                local.get 0
                local.get 7
                i32.store
                local.get 8
                local.get 0
                i32.const 24
                i32.add
                i32.store
                local.get 5
                i32.load
                local.set 4
                i32.const 0
                local.set 0
                local.get 5
                i32.const 0
                i32.store
                local.get 4
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              local.get 5
              i32.const 120
              i32.add
              local.get 5
              local.get 5
              i32.const 16
              i32.add
              local.get 5
              i32.const 156
              i32.add
              call 39
              local.get 5
              i32.load
              local.set 4
              i32.const 0
              local.set 0
              local.get 5
              i32.const 0
              i32.store
              local.get 4
              i32.eqz
              br_if 1 (;@4;)
            end
            block  ;; label = @5
              local.get 4
              i32.load8_u offset=40
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.const 48
              i32.add
              i32.load
              call 58
            end
            local.get 4
            call 58
          end
          local.get 5
          i64.load offset=144
          local.set 6
          i32.const 8327
          call 0
          local.get 6
          call 1
          local.get 3
          i64.load
          i64.const 10
          i64.mul
          local.tee 9
          i64.const 4611686018427387903
          i64.add
          i64.const 9223372036854775807
          i64.lt_u
          i32.const 8447
          call 3
          i64.const 4409411
          local.set 6
          block  ;; label = @4
            loop  ;; label = @5
              i32.const 0
              local.set 3
              local.get 6
              i32.wrap_i64
              i32.const 24
              i32.shl
              i32.const -1073741825
              i32.add
              i32.const 452984830
              i32.gt_u
              br_if 1 (;@4;)
              local.get 6
              i64.const 8
              i64.shr_u
              local.set 1
              block  ;; label = @6
                local.get 6
                i64.const 65280
                i64.and
                i64.const 0
                i64.eq
                br_if 0 (;@6;)
                local.get 1
                local.set 6
                i32.const 1
                local.set 3
                local.get 0
                local.tee 4
                i32.const 1
                i32.add
                local.set 0
                local.get 4
                i32.const 6
                i32.lt_s
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              local.get 1
              local.set 6
              loop  ;; label = @6
                local.get 6
                i64.const 65280
                i64.and
                i64.const 0
                i64.ne
                br_if 2 (;@4;)
                local.get 6
                i64.const 8
                i64.shr_u
                local.set 6
                local.get 0
                i32.const 6
                i32.lt_s
                local.set 4
                local.get 0
                i32.const 1
                i32.add
                local.tee 8
                local.set 0
                local.get 4
                br_if 0 (;@6;)
              end
              i32.const 1
              local.set 3
              local.get 8
              i32.const 1
              i32.add
              local.set 0
              local.get 8
              i32.const 6
              i32.lt_s
              br_if 0 (;@5;)
            end
          end
          local.get 3
          i32.const 8496
          call 3
          i64.const 7
          local.set 6
          loop  ;; label = @4
            local.get 6
            i64.const 1
            i64.add
            local.tee 6
            i64.const 13
            i64.ne
            br_if 0 (;@4;)
          end
          i64.const 6
          local.set 6
          loop  ;; label = @4
            local.get 6
            i64.const 1
            i64.add
            local.tee 6
            i64.const 13
            i64.ne
            br_if 0 (;@4;)
          end
          i64.const 0
          local.set 6
          i64.const 59
          local.set 2
          i32.const 8352
          local.set 0
          i64.const 0
          local.set 10
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i64.const 10
                      i64.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.load8_u
                      local.tee 4
                      i32.const -97
                      i32.add
                      i32.const 255
                      i32.and
                      i32.const 25
                      i32.gt_u
                      br_if 1 (;@8;)
                      local.get 4
                      i32.const -91
                      i32.add
                      local.set 4
                      br 2 (;@7;)
                    end
                    i64.const 0
                    local.set 1
                    local.get 6
                    i64.const 11
                    i64.eq
                    br_if 2 (;@6;)
                    br 3 (;@5;)
                  end
                  local.get 4
                  i32.const -48
                  i32.add
                  i32.const 0
                  local.get 4
                  i32.const -49
                  i32.add
                  i32.const 255
                  i32.and
                  i32.const 5
                  i32.lt_u
                  select
                  local.set 4
                end
                local.get 4
                i64.extend_i32_u
                i64.const 56
                i64.shl
                i64.const 56
                i64.shr_s
                local.set 1
              end
              local.get 1
              i64.const 31
              i64.and
              local.get 2
              i64.const 4294967295
              i64.and
              i64.shl
              local.set 1
            end
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 2
            i64.const 4294967291
            i64.add
            local.set 2
            local.get 1
            local.get 10
            i64.or
            local.set 10
            local.get 6
            i64.const 1
            i64.add
            local.tee 6
            i64.const 13
            i64.ne
            br_if 0 (;@4;)
          end
          i64.const 5
          local.set 6
          loop  ;; label = @4
            local.get 6
            i64.const 1
            i64.add
            local.tee 6
            i64.const 13
            i64.ne
            br_if 0 (;@4;)
          end
          local.get 5
          i32.const 8
          i32.add
          i32.const 0
          i32.store
          local.get 5
          i64.const 0
          i64.store
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 8364
                call 67
                local.tee 0
                i32.const -16
                i32.ge_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.const 11
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 0
                      i32.const 1
                      i32.shl
                      i32.store8
                      local.get 5
                      i32.const 1
                      i32.or
                      local.set 4
                      local.get 0
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                    local.get 0
                    i32.const 16
                    i32.add
                    i32.const -16
                    i32.and
                    local.tee 8
                    call 56
                    local.set 4
                    local.get 5
                    local.get 8
                    i32.const 1
                    i32.or
                    i32.store
                    local.get 5
                    local.get 4
                    i32.store offset=8
                    local.get 5
                    local.get 0
                    i32.store offset=4
                  end
                  local.get 4
                  i32.const 8364
                  local.get 0
                  call 4
                  drop
                end
                local.get 4
                local.get 0
                i32.add
                i32.const 0
                i32.store8
                local.get 5
                i32.const 16
                i32.add
                i32.const 16
                i32.add
                i64.const 1128809220
                i64.store
                local.get 5
                i32.const 48
                i32.add
                local.get 5
                i32.const 8
                i32.add
                local.tee 0
                i32.load
                i32.store
                local.get 0
                i32.const 0
                i32.store
                local.get 5
                local.get 9
                i64.store offset=24
                local.get 5
                local.get 10
                i64.store offset=56
                local.get 5
                i64.const 8516769789752901632
                i64.store offset=64
                local.get 5
                local.get 5
                i64.load offset=144
                i64.store offset=16
                local.get 5
                local.get 5
                i64.load
                i64.store offset=40
                local.get 5
                i64.const 0
                i64.store
                i32.const 16
                call 56
                local.tee 0
                i64.const 4849663661234454528
                i64.store
                local.get 0
                i64.const 3617214756542218240
                i64.store offset=8
                local.get 5
                i32.const 92
                i32.add
                i32.const 0
                i32.store
                local.get 5
                i32.const 56
                i32.add
                i32.const 24
                i32.add
                local.get 0
                i32.const 16
                i32.add
                local.tee 4
                i32.store
                local.get 5
                i32.const 76
                i32.add
                local.get 4
                i32.store
                local.get 5
                local.get 0
                i32.store offset=72
                local.get 5
                i64.const 0
                i64.store offset=84 align=4
                local.get 5
                i32.const 16
                i32.add
                i32.const 28
                i32.add
                i32.load
                local.get 5
                i32.load8_u offset=40
                local.tee 0
                i32.const 1
                i32.shr_u
                local.get 0
                i32.const 1
                i32.and
                select
                local.tee 4
                i32.const 24
                i32.add
                local.set 0
                local.get 4
                i64.extend_i32_u
                local.set 6
                local.get 5
                i32.const 16
                i32.add
                i32.const 24
                i32.add
                local.set 8
                local.get 5
                i32.const 56
                i32.add
                i32.const 28
                i32.add
                local.set 4
                loop  ;; label = @7
                  local.get 0
                  i32.const 1
                  i32.add
                  local.set 0
                  local.get 6
                  i64.const 7
                  i64.shr_u
                  local.tee 6
                  i64.const 0
                  i64.ne
                  br_if 0 (;@7;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 0
                    call 40
                    local.get 5
                    i32.const 88
                    i32.add
                    i32.load
                    local.set 4
                    local.get 5
                    i32.const 84
                    i32.add
                    i32.load
                    local.set 0
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 4
                  i32.const 0
                  local.set 0
                end
                local.get 5
                local.get 0
                i32.store offset=160
                local.get 5
                local.get 4
                i32.store offset=168
                local.get 4
                local.get 0
                i32.sub
                local.tee 4
                i32.const 7
                i32.gt_s
                i32.const 8516
                call 3
                local.get 0
                local.get 5
                i32.const 16
                i32.add
                i32.const 8
                call 4
                drop
                local.get 4
                i32.const -8
                i32.add
                i32.const 7
                i32.gt_s
                i32.const 8516
                call 3
                local.get 0
                i32.const 8
                i32.add
                local.get 5
                i32.const 16
                i32.add
                i32.const 8
                i32.add
                i32.const 8
                call 4
                drop
                local.get 4
                i32.const -16
                i32.add
                i32.const 7
                i32.gt_s
                i32.const 8516
                call 3
                local.get 0
                i32.const 16
                i32.add
                local.get 5
                i32.const 16
                i32.add
                i32.const 16
                i32.add
                i32.const 8
                call 4
                drop
                local.get 5
                local.get 0
                i32.const 24
                i32.add
                i32.store offset=164
                local.get 5
                i32.const 160
                i32.add
                local.get 8
                call 41
                drop
                local.get 5
                i32.const 160
                i32.add
                local.get 5
                i32.const 56
                i32.add
                call 42
                local.get 5
                i32.load offset=160
                local.tee 0
                local.get 5
                i32.load offset=164
                local.get 0
                i32.sub
                call 5
                block  ;; label = @7
                  local.get 5
                  i32.load offset=160
                  local.tee 0
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  local.get 0
                  i32.store offset=164
                  local.get 0
                  call 58
                end
                block  ;; label = @7
                  local.get 5
                  i32.load offset=84
                  local.tee 0
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 88
                  i32.add
                  local.get 0
                  i32.store
                  local.get 0
                  call 58
                end
                block  ;; label = @7
                  local.get 5
                  i32.load offset=72
                  local.tee 0
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 76
                  i32.add
                  local.get 0
                  i32.store
                  local.get 0
                  call 58
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.const 40
                    i32.add
                    i32.load8_u
                    i32.const 1
                    i32.and
                    br_if 0 (;@8;)
                    local.get 5
                    i32.load8_u
                    i32.const 1
                    i32.and
                    br_if 1 (;@7;)
                    br 3 (;@5;)
                  end
                  local.get 5
                  i32.const 48
                  i32.add
                  i32.load
                  call 58
                  local.get 5
                  i32.load8_u
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 2 (;@5;)
                end
                local.get 5
                i32.const 8
                i32.add
                i32.load
                call 58
                local.get 5
                i32.load offset=120
                local.tee 8
                br_if 2 (;@4;)
                br 3 (;@3;)
              end
              local.get 5
              call 60
              unreachable
            end
            local.get 5
            i32.load offset=120
            local.tee 8
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 5
          i32.const 124
          i32.add
          local.tee 3
          i32.load
          local.tee 0
          local.get 8
          i32.eq
          br_if 1 (;@2;)
          loop  ;; label = @4
            local.get 0
            i32.const -24
            i32.add
            local.tee 0
            i32.load
            local.set 4
            local.get 0
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                i32.load8_u offset=40
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.const 48
                i32.add
                i32.load
                call 58
              end
              local.get 4
              call 58
            end
            local.get 8
            local.get 0
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 5
          i32.const 120
          i32.add
          i32.load
          local.set 0
          br 2 (;@1;)
        end
        local.get 5
        i32.const 176
        i32.add
        global.set 0
        return
      end
      local.get 8
      local.set 0
    end
    local.get 3
    local.get 8
    i32.store
    local.get 0
    call 58
    local.get 5
    i32.const 176
    i32.add
    global.set 0)
  (func (;38;) (type 6) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.set 3
    local.get 2
    global.set 0
    local.get 0
    i32.load
    local.set 4
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 5
      i32.load
      local.tee 6
      i64.load offset=16
      local.tee 7
      i64.const -1
      i64.ne
      br_if 0 (;@1;)
      i64.const 0
      local.set 7
      block  ;; label = @2
        local.get 6
        i64.load
        local.get 6
        i64.load offset=8
        i64.const -5003134543285190656
        i64.const 0
        call 8
        local.tee 8
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 6
        local.get 8
        call 50
        drop
        local.get 3
        i32.const 0
        i32.store offset=4
        local.get 3
        local.get 6
        i32.store
        i64.const -2
        local.get 3
        call 51
        i32.load offset=4
        i64.load
        local.tee 7
        i64.const 1
        i64.add
        local.get 7
        i64.const -3
        i64.gt_u
        select
        local.set 7
      end
      local.get 6
      i32.const 16
      i32.add
      local.get 7
      i64.store
    end
    local.get 7
    i64.const -2
    i64.lt_u
    i32.const 8573
    call 3
    local.get 1
    local.get 6
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 1
    local.get 5
    i32.load offset=4
    i64.load
    i64.store offset=8
    local.get 1
    local.get 5
    i32.load offset=8
    i64.load
    i64.store offset=16
    local.get 1
    local.get 5
    i32.load offset=12
    local.tee 6
    i64.load
    i64.store offset=24
    local.get 1
    i32.const 32
    i32.add
    local.get 6
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 40
    i32.add
    local.get 5
    i32.load offset=16
    call 62
    drop
    local.get 1
    i32.const 44
    i32.add
    i32.load
    local.get 1
    i32.load8_u offset=40
    local.tee 5
    i32.const 1
    i32.shr_u
    local.get 5
    i32.const 1
    i32.and
    select
    local.tee 6
    i32.const 40
    i32.add
    local.set 5
    local.get 6
    i64.extend_i32_u
    local.set 7
    loop  ;; label = @1
      local.get 5
      i32.const 1
      i32.add
      local.set 5
      local.get 7
      i64.const 7
      i64.shr_u
      local.tee 7
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
        call 68
        local.set 6
        br 1 (;@1;)
      end
      local.get 2
      local.get 5
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 6
      global.set 0
    end
    local.get 3
    local.get 6
    i32.store offset=4
    local.get 3
    local.get 6
    i32.store
    local.get 3
    local.get 6
    local.get 5
    i32.add
    i32.store offset=8
    local.get 3
    local.get 1
    call 52
    drop
    local.get 1
    local.get 4
    i64.load offset=8
    i64.const -5003134543285190656
    local.get 0
    i32.load offset=8
    i64.load
    local.get 1
    i64.load
    local.tee 7
    local.get 6
    local.get 5
    call 9
    i32.store offset=56
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.const 513
          i32.ge_u
          br_if 0 (;@3;)
          local.get 7
          local.get 4
          i64.load offset=16
          i64.ge_u
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 6
        call 71
        local.get 7
        local.get 4
        i64.load offset=16
        i64.lt_u
        br_if 1 (;@1;)
      end
      local.get 4
      i32.const 16
      i32.add
      i64.const -2
      local.get 7
      i64.const 1
      i64.add
      local.get 7
      i64.const -3
      i64.gt_u
      select
      i64.store
      local.get 3
      i32.const 16
      i32.add
      global.set 0
      return
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;39;) (type 19) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.get 0
        i32.load
        local.tee 4
        i32.sub
        i32.const 24
        i32.div_s
        local.tee 5
        i32.const 1
        i32.add
        local.tee 6
        i32.const 178956971
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 178956970
        local.set 7
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.get 4
            i32.sub
            i32.const 24
            i32.div_s
            local.tee 4
            i32.const 89478484
            i32.gt_u
            br_if 0 (;@4;)
            local.get 6
            local.get 4
            i32.const 1
            i32.shl
            local.tee 7
            local.get 7
            local.get 6
            i32.lt_u
            select
            local.tee 7
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 7
          i32.const 24
          i32.mul
          call 56
          local.set 4
          br 2 (;@1;)
        end
        i32.const 0
        local.set 7
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      call 65
      unreachable
    end
    local.get 1
    i32.load
    local.set 6
    local.get 1
    i32.const 0
    i32.store
    local.get 4
    local.get 5
    i32.const 24
    i32.mul
    local.tee 8
    i32.add
    local.tee 1
    local.get 6
    i32.store
    local.get 1
    local.get 2
    i64.load
    i64.store offset=8
    local.get 1
    local.get 3
    i32.load
    i32.store offset=16
    local.get 4
    local.get 7
    i32.const 24
    i32.mul
    i32.add
    local.set 5
    local.get 1
    i32.const 24
    i32.add
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 2
        local.get 0
        i32.load
        local.tee 7
        i32.eq
        br_if 0 (;@2;)
        local.get 4
        local.get 8
        i32.add
        i32.const -24
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 2
          i32.const -24
          i32.add
          local.tee 4
          i32.load
          local.set 3
          local.get 4
          i32.const 0
          i32.store
          local.get 1
          local.get 3
          i32.store
          local.get 1
          i32.const 16
          i32.add
          local.get 2
          i32.const -8
          i32.add
          i32.load
          i32.store
          local.get 1
          i32.const 8
          i32.add
          local.get 2
          i32.const -16
          i32.add
          i64.load
          i64.store
          local.get 1
          i32.const -24
          i32.add
          local.set 1
          local.get 4
          local.set 2
          local.get 7
          local.get 4
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 1
        i32.const 24
        i32.add
        local.set 1
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 7
        local.get 0
        i32.load
        local.set 2
        br 1 (;@1;)
      end
      local.get 7
      local.set 2
    end
    local.get 0
    local.get 1
    i32.store
    local.get 0
    i32.const 4
    i32.add
    local.get 6
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 5
    i32.store
    block  ;; label = @1
      local.get 7
      local.get 2
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
            i32.load8_u offset=40
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 48
            i32.add
            i32.load
            call 58
          end
          local.get 1
          call 58
        end
        local.get 2
        local.get 7
        i32.ne
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      call 58
    end)
  (func (;40;) (type 6) (param i32 i32)
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
              call 56
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
        call 65
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
        call 4
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
      call 58
      return
    end)
  (func (;41;) (type 9) (param i32 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load8_u
    local.tee 3
    i32.const 1
    i32.shr_u
    local.get 3
    i32.const 1
    i32.and
    select
    i64.extend_i32_u
    local.set 4
    local.get 0
    i32.load offset=4
    local.set 5
    local.get 0
    i32.const 8
    i32.add
    local.set 6
    local.get 0
    i32.const 4
    i32.add
    local.set 3
    loop  ;; label = @1
      local.get 4
      i32.wrap_i64
      local.set 7
      local.get 2
      local.get 4
      i64.const 7
      i64.shr_u
      local.tee 4
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
      local.get 6
      i32.load
      local.get 5
      i32.sub
      i32.const 0
      i32.gt_s
      i32.const 8516
      call 3
      local.get 3
      i32.load
      local.get 2
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
      local.get 8
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.get 1
      i32.load8_u
      local.tee 3
      i32.const 1
      i32.shr_u
      local.get 3
      i32.const 1
      i32.and
      local.tee 7
      select
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=8
      local.set 8
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.get 5
      i32.sub
      local.get 3
      i32.ge_s
      i32.const 8516
      call 3
      local.get 0
      i32.const 4
      i32.add
      local.tee 5
      i32.load
      local.get 8
      local.get 1
      i32.const 1
      i32.add
      local.get 7
      select
      local.get 3
      call 4
      drop
      local.get 5
      local.get 5
      i32.load
      local.get 3
      i32.add
      i32.store
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;42;) (type 6) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i64.const 0
    i64.store align=4
    i32.const 16
    local.set 3
    local.get 1
    i32.const 16
    i32.add
    local.set 4
    local.get 1
    i32.const 20
    i32.add
    i32.load
    local.tee 5
    local.get 1
    i32.load offset=16
    local.tee 6
    i32.sub
    local.tee 7
    i32.const 4
    i32.shr_s
    i64.extend_i32_u
    local.set 8
    loop  ;; label = @1
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 8
      i64.const 7
      i64.shr_u
      local.tee 8
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 6
      local.get 5
      i32.eq
      br_if 0 (;@1;)
      local.get 7
      i32.const -16
      i32.and
      local.get 3
      i32.add
      local.set 3
    end
    local.get 1
    i32.load offset=28
    local.tee 5
    local.get 3
    i32.sub
    local.get 1
    i32.const 32
    i32.add
    i32.load
    local.tee 6
    i32.sub
    local.set 3
    local.get 1
    i32.const 28
    i32.add
    local.set 7
    local.get 6
    local.get 5
    i32.sub
    i64.extend_i32_u
    local.set 8
    loop  ;; label = @1
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 8
      i64.const 7
      i64.shr_u
      local.tee 8
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        local.get 3
        i32.sub
        call 40
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 5
        local.get 0
        i32.load
        local.set 3
        br 1 (;@1;)
      end
      i32.const 0
      local.set 3
    end
    local.get 2
    local.get 3
    i32.store
    local.get 2
    local.get 5
    i32.store offset=8
    local.get 5
    local.get 3
    i32.sub
    local.tee 0
    i32.const 7
    i32.gt_s
    i32.const 8516
    call 3
    local.get 3
    local.get 1
    i32.const 8
    call 4
    drop
    local.get 0
    i32.const -8
    i32.add
    i32.const 7
    i32.gt_s
    i32.const 8516
    call 3
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call 4
    drop
    local.get 2
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=4
    local.get 2
    local.get 4
    call 48
    local.get 7
    call 49
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;43;) (type 20) (param i64 i64 i64)
    (local i32 i64 i64 i32 i64 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    call 35
    i64.const 7
    local.set 4
    loop  ;; label = @1
      local.get 4
      i64.const 1
      i64.add
      local.tee 4
      i64.const 13
      i64.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      i64.const -6569208335818555392
      local.get 2
      i64.ne
      br_if 0 (;@1;)
      i64.const 5
      local.set 4
      loop  ;; label = @2
        local.get 4
        i64.const 1
        i64.add
        local.tee 4
        i64.const 13
        i64.ne
        br_if 0 (;@2;)
      end
      i64.const 6138663577826885632
      local.get 1
      i64.eq
      i32.const 8374
      call 3
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 0
          i64.ne
          br_if 0 (;@3;)
          i64.const 0
          local.set 4
          i64.const 59
          local.set 5
          i32.const 8438
          local.set 6
          i64.const 0
          local.set 7
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i64.const 7
                      i64.gt_u
                      br_if 0 (;@9;)
                      local.get 6
                      i32.load8_u
                      local.tee 8
                      i32.const -97
                      i32.add
                      i32.const 255
                      i32.and
                      i32.const 25
                      i32.gt_u
                      br_if 1 (;@8;)
                      local.get 8
                      i32.const -91
                      i32.add
                      local.set 8
                      br 2 (;@7;)
                    end
                    i64.const 0
                    local.set 9
                    local.get 4
                    i64.const 11
                    i64.le_u
                    br_if 2 (;@6;)
                    br 3 (;@5;)
                  end
                  local.get 8
                  i32.const -48
                  i32.add
                  i32.const 0
                  local.get 8
                  i32.const -49
                  i32.add
                  i32.const 255
                  i32.and
                  i32.const 5
                  i32.lt_u
                  select
                  local.set 8
                end
                local.get 8
                i64.extend_i32_u
                i64.const 56
                i64.shl
                i64.const 56
                i64.shr_s
                local.set 9
              end
              local.get 9
              i64.const 31
              i64.and
              local.get 5
              i64.const 4294967295
              i64.and
              i64.shl
              local.set 9
            end
            local.get 6
            i32.const 1
            i32.add
            local.set 6
            local.get 4
            i64.const 1
            i64.add
            local.set 4
            local.get 9
            local.get 7
            i64.or
            local.set 7
            local.get 5
            i64.const 4294967291
            i64.add
            local.tee 5
            i64.const 55834574842
            i64.ne
            br_if 0 (;@4;)
          end
          local.get 7
          local.get 2
          i64.ne
          br_if 1 (;@2;)
        end
        i64.const 0
        local.set 4
        i64.const 59
        local.set 5
        i32.const 8352
        local.set 6
        i64.const 0
        local.set 7
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    i64.const 10
                    i64.gt_u
                    br_if 0 (;@8;)
                    local.get 6
                    i32.load8_u
                    local.tee 8
                    i32.const -97
                    i32.add
                    i32.const 255
                    i32.and
                    i32.const 25
                    i32.gt_u
                    br_if 1 (;@7;)
                    local.get 8
                    i32.const -91
                    i32.add
                    local.set 8
                    br 2 (;@6;)
                  end
                  i64.const 0
                  local.set 9
                  local.get 4
                  i64.const 11
                  i64.eq
                  br_if 2 (;@5;)
                  br 3 (;@4;)
                end
                local.get 8
                i32.const -48
                i32.add
                i32.const 0
                local.get 8
                i32.const -49
                i32.add
                i32.const 255
                i32.and
                i32.const 5
                i32.lt_u
                select
                local.set 8
              end
              local.get 8
              i64.extend_i32_u
              i64.const 56
              i64.shl
              i64.const 56
              i64.shr_s
              local.set 9
            end
            local.get 9
            i64.const 31
            i64.and
            local.get 5
            i64.const 4294967295
            i64.and
            i64.shl
            local.set 9
          end
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 5
          i64.const 4294967291
          i64.add
          local.set 5
          local.get 9
          local.get 7
          i64.or
          local.set 7
          local.get 4
          i64.const 1
          i64.add
          local.tee 4
          i64.const 13
          i64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 7
          local.get 1
          i64.ne
          br_if 0 (;@3;)
          i64.const 0
          local.set 4
          i64.const 59
          local.set 5
          i32.const 8438
          local.set 6
          i64.const 0
          local.set 7
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i64.const 7
                      i64.gt_u
                      br_if 0 (;@9;)
                      local.get 6
                      i32.load8_u
                      local.tee 8
                      i32.const -97
                      i32.add
                      i32.const 255
                      i32.and
                      i32.const 25
                      i32.gt_u
                      br_if 1 (;@8;)
                      local.get 8
                      i32.const -91
                      i32.add
                      local.set 8
                      br 2 (;@7;)
                    end
                    i64.const 0
                    local.set 9
                    local.get 4
                    i64.const 11
                    i64.le_u
                    br_if 2 (;@6;)
                    br 3 (;@5;)
                  end
                  local.get 8
                  i32.const -48
                  i32.add
                  i32.const 0
                  local.get 8
                  i32.const -49
                  i32.add
                  i32.const 255
                  i32.and
                  i32.const 5
                  i32.lt_u
                  select
                  local.set 8
                end
                local.get 8
                i64.extend_i32_u
                i64.const 56
                i64.shl
                i64.const 56
                i64.shr_s
                local.set 9
              end
              local.get 9
              i64.const 31
              i64.and
              local.get 5
              i64.const 4294967295
              i64.and
              i64.shl
              local.set 9
            end
            local.get 6
            i32.const 1
            i32.add
            local.set 6
            local.get 4
            i64.const 1
            i64.add
            local.set 4
            local.get 9
            local.get 7
            i64.or
            local.set 7
            local.get 5
            i64.const 4294967291
            i64.add
            local.tee 5
            i64.const 55834574842
            i64.ne
            br_if 0 (;@4;)
          end
          local.get 7
          local.get 2
          i64.eq
          br_if 1 (;@2;)
        end
        i64.const 7
        local.set 4
        loop  ;; label = @3
          local.get 4
          i64.const 1
          i64.add
          local.tee 4
          i64.const 13
          i64.ne
          br_if 0 (;@3;)
        end
        i64.const -6569208335818555392
        local.get 2
        i64.ne
        br_if 1 (;@1;)
      end
      local.get 3
      local.get 0
      i64.store offset=40
      block  ;; label = @2
        local.get 2
        i64.const -3617168760277827584
        i64.eq
        br_if 0 (;@2;)
        local.get 2
        i64.const 7746191359077253120
        i64.ne
        br_if 1 (;@1;)
        local.get 3
        i32.const 0
        i32.store offset=36
        local.get 3
        i32.const 1
        i32.store offset=32
        local.get 3
        local.get 3
        i64.load offset=32
        i64.store offset=8
        local.get 3
        i32.const 40
        i32.add
        local.get 3
        i32.const 8
        i32.add
        call 44
        drop
        br 1 (;@1;)
      end
      local.get 3
      i32.const 0
      i32.store offset=28
      local.get 3
      i32.const 2
      i32.store offset=24
      local.get 3
      local.get 3
      i64.load offset=24
      i64.store offset=16
      local.get 3
      i32.const 40
      i32.add
      local.get 3
      i32.const 16
      i32.add
      call 45
      drop
    end
    i32.const 0
    call 66
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func (;44;) (type 9) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.set 3
    local.get 2
    global.set 0
    local.get 1
    i32.load offset=4
    local.set 4
    local.get 1
    i32.load
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            call 6
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 513
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            call 68
            local.set 2
            br 2 (;@2;)
          end
          i32.const 0
          local.set 2
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 2
        global.set 0
      end
      local.get 2
      local.get 1
      call 7
      drop
    end
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 1
    i32.const 7
    i32.gt_u
    i32.const 8652
    call 3
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    call 4
    drop
    local.get 3
    i64.load offset=8
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      call 71
    end
    local.get 0
    local.get 4
    i32.const 1
    i32.shr_s
    i32.add
    local.set 1
    block  ;; label = @1
      local.get 4
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
    local.get 6
    local.get 5
    call_indirect (type 0)
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    i32.const 1)
  (func (;45;) (type 9) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.tee 3
    local.get 0
    i32.store offset=60
    local.get 3
    local.get 1
    i64.load align=4
    i64.store offset=48
    i32.const 0
    local.set 1
    i32.const 0
    local.set 4
    block  ;; label = @1
      call 6
      local.tee 5
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.const 513
          i32.lt_u
          br_if 0 (;@3;)
          local.get 5
          call 68
          local.set 4
          br 1 (;@2;)
        end
        local.get 2
        local.get 5
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 4
        global.set 0
      end
      local.get 4
      local.get 5
      call 7
      drop
    end
    local.get 3
    i32.const 24
    i32.add
    i64.const 1398362884
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=16
    i32.const 1
    i32.const 8447
    call 3
    i64.const 5462355
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 6
          i32.wrap_i64
          i32.const 24
          i32.shl
          i32.const -1073741825
          i32.add
          i32.const 452984830
          i32.gt_u
          br_if 1 (;@2;)
          local.get 6
          i64.const 8
          i64.shr_u
          local.set 7
          block  ;; label = @4
            local.get 6
            i64.const 65280
            i64.and
            i64.const 0
            i64.eq
            br_if 0 (;@4;)
            local.get 7
            local.set 6
            i32.const 1
            local.set 2
            local.get 1
            local.tee 0
            i32.const 1
            i32.add
            local.set 1
            local.get 0
            i32.const 6
            i32.lt_s
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 7
          local.set 6
          loop  ;; label = @4
            local.get 6
            i64.const 65280
            i64.and
            i64.const 0
            i64.ne
            br_if 2 (;@2;)
            local.get 6
            i64.const 8
            i64.shr_u
            local.set 6
            local.get 1
            i32.const 6
            i32.lt_s
            local.set 2
            local.get 1
            i32.const 1
            i32.add
            local.tee 0
            local.set 1
            local.get 2
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 2
          local.get 0
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.const 6
          i32.lt_s
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      local.set 2
    end
    local.get 2
    i32.const 8496
    call 3
    local.get 3
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i64.const 0
    i64.store offset=32
    local.get 3
    local.get 4
    i32.store offset=68
    local.get 3
    local.get 4
    i32.store offset=64
    local.get 3
    local.get 4
    local.get 5
    i32.add
    i32.store offset=72
    local.get 3
    local.get 3
    i32.const 64
    i32.add
    i32.store offset=80
    local.get 3
    local.get 3
    i32.store offset=88
    local.get 3
    i32.const 88
    i32.add
    local.get 3
    i32.const 80
    i32.add
    call 46
    block  ;; label = @1
      local.get 5
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 4
      call 71
    end
    local.get 3
    local.get 3
    i32.const 48
    i32.add
    i32.store offset=68
    local.get 3
    local.get 3
    i32.const 60
    i32.add
    i32.store offset=64
    local.get 3
    i32.const 64
    i32.add
    local.get 3
    call 47
    block  ;; label = @1
      local.get 3
      i32.load8_u offset=32
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 40
      i32.add
      i32.load
      call 58
    end
    local.get 3
    i32.const 96
    i32.add
    global.set 0
    i32.const 1)
  (func (;46;) (type 6) (param i32 i32)
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
    i32.const 8652
    call 3
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 8
    call 4
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
    i32.const 8652
    call 3
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.load offset=4
    i32.const 8
    call 4
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
    i32.const 8652
    call 3
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    i32.load offset=4
    i32.const 8
    call 4
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
    i32.const 8652
    call 3
    local.get 0
    i32.const 24
    i32.add
    local.get 3
    i32.load offset=4
    i32.const 8
    call 4
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
    call 54
    drop)
  (func (;47;) (type 6) (param i32 i32)
    (local i32 i32 i64 i64 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.tee 3
    local.get 1
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 1
    i64.load offset=16
    i64.store offset=32
    local.get 1
    i64.load offset=8
    local.set 4
    local.get 1
    i64.load
    local.set 5
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    i32.const 32
    i32.add
    call 61
    local.set 1
    local.get 2
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=32
    i64.store offset=48
    local.get 0
    i32.load
    i32.load
    local.get 0
    i32.load offset=4
    local.tee 0
    i32.load offset=4
    local.tee 6
    i32.const 1
    i32.shr_s
    i32.add
    local.set 3
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      local.get 6
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load
      local.get 0
      i32.add
      i32.load
      local.set 0
    end
    local.get 2
    i32.const 80
    i32.add
    i32.const 8
    i32.add
    local.tee 7
    local.get 2
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=48
    i64.store offset=80
    local.get 2
    i32.const 64
    i32.add
    local.get 1
    call 61
    local.set 6
    local.get 2
    i32.const 8
    i32.add
    local.get 7
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=80
    i64.store
    local.get 3
    local.get 5
    local.get 4
    local.get 2
    local.get 6
    local.get 0
    call_indirect (type 1)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load8_u offset=64
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 1
          i32.load8_u
          i32.const 1
          i32.and
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 6
        i32.load offset=8
        call 58
        local.get 1
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      i32.load offset=8
      call 58
      local.get 2
      i32.const 96
      i32.add
      global.set 0
      return
    end
    local.get 2
    i32.const 96
    i32.add
    global.set 0)
  (func (;48;) (type 9) (param i32 i32) (result i32)
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
      i32.const 8516
      call 3
      local.get 0
      i32.const 4
      i32.add
      local.tee 6
      i32.load
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 4
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
        i32.const 8516
        call 3
        local.get 6
        i32.load
        local.get 7
        i32.const 8
        call 4
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
        i32.const 8516
        call 3
        local.get 6
        i32.load
        local.get 7
        i32.const 8
        i32.add
        i32.const 8
        call 4
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
  (func (;49;) (type 9) (param i32 i32) (result i32)
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
      i32.const 8516
      call 3
      local.get 6
      i32.load
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 4
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
    i32.const 8516
    call 3
    local.get 0
    i32.const 4
    i32.add
    local.tee 4
    i32.load
    local.get 7
    local.get 6
    call 4
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
  (func (;50;) (type 9) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    local.set 3
    local.get 2
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.load offset=24
      local.tee 4
      local.get 0
      i32.const 28
      i32.add
      i32.load
      local.tee 5
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 5
          i32.const -8
          i32.add
          i32.load
          local.get 1
          i32.eq
          br_if 1 (;@2;)
          local.get 4
          local.get 5
          i32.const -24
          i32.add
          local.tee 5
          i32.ne
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 4
      local.get 5
      i32.eq
      br_if 0 (;@1;)
      local.get 5
      i32.const -24
      i32.add
      i32.load
      local.set 5
      local.get 3
      i32.const 48
      i32.add
      global.set 0
      local.get 5
      return
    end
    local.get 1
    i32.const 0
    i32.const 0
    call 12
    local.tee 6
    i32.const 31
    i32.shr_u
    i32.const 1
    i32.xor
    i32.const 8625
    call 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 6
        call 68
        local.set 7
        br 1 (;@1;)
      end
      local.get 2
      local.get 6
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 7
      global.set 0
    end
    local.get 0
    i32.const 24
    i32.add
    local.set 8
    local.get 1
    local.get 7
    local.get 6
    call 12
    drop
    local.get 3
    local.get 7
    i32.store offset=36
    local.get 3
    local.get 7
    i32.store offset=32
    local.get 3
    local.get 7
    local.get 6
    i32.add
    i32.store offset=40
    i32.const 64
    call 56
    local.tee 9
    i64.const 1398362884
    i64.store offset=32
    local.get 9
    i64.const 0
    i64.store offset=24
    i32.const 1
    i32.const 8447
    call 3
    i64.const 5462355
    local.set 10
    i32.const 0
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 10
          i32.wrap_i64
          i32.const 24
          i32.shl
          i32.const -1073741825
          i32.add
          i32.const 452984830
          i32.gt_u
          br_if 1 (;@2;)
          local.get 10
          i64.const 8
          i64.shr_u
          local.set 11
          block  ;; label = @4
            local.get 10
            i64.const 65280
            i64.and
            i64.const 0
            i64.eq
            br_if 0 (;@4;)
            local.get 11
            local.set 10
            i32.const 1
            local.set 4
            local.get 5
            local.tee 2
            i32.const 1
            i32.add
            local.set 5
            local.get 2
            i32.const 6
            i32.lt_s
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 11
          local.set 10
          loop  ;; label = @4
            local.get 10
            i64.const 65280
            i64.and
            i64.const 0
            i64.ne
            br_if 2 (;@2;)
            local.get 10
            i64.const 8
            i64.shr_u
            local.set 10
            local.get 5
            i32.const 6
            i32.lt_s
            local.set 4
            local.get 5
            i32.const 1
            i32.add
            local.tee 2
            local.set 5
            local.get 4
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 4
          local.get 2
          i32.const 1
          i32.add
          local.set 5
          local.get 2
          i32.const 6
          i32.lt_s
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      local.set 4
    end
    local.get 4
    i32.const 8496
    call 3
    local.get 9
    i32.const 0
    i32.store offset=48
    local.get 9
    i64.const 0
    i64.store offset=40 align=4
    local.get 9
    local.get 0
    i32.store offset=52
    local.get 3
    i32.const 32
    i32.add
    local.get 9
    call 53
    drop
    local.get 9
    local.get 1
    i32.store offset=56
    local.get 3
    local.get 9
    i32.store offset=24
    local.get 3
    local.get 9
    i64.load
    local.tee 10
    i64.store offset=16
    local.get 3
    local.get 1
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 28
          i32.add
          local.tee 4
          i32.load
          local.tee 5
          local.get 0
          i32.const 32
          i32.add
          i32.load
          i32.ge_u
          br_if 0 (;@3;)
          local.get 5
          local.get 10
          i64.store offset=8
          local.get 5
          local.get 1
          i32.store offset=16
          local.get 3
          i32.const 0
          i32.store offset=24
          local.get 5
          local.get 9
          i32.store
          local.get 4
          local.get 5
          i32.const 24
          i32.add
          i32.store
          local.get 6
          i32.const 513
          i32.ge_u
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 8
        local.get 3
        i32.const 24
        i32.add
        local.get 3
        i32.const 16
        i32.add
        local.get 3
        i32.const 12
        i32.add
        call 39
        local.get 6
        i32.const 513
        i32.lt_u
        br_if 1 (;@1;)
      end
      local.get 7
      call 71
    end
    local.get 3
    i32.load offset=24
    local.set 5
    local.get 3
    i32.const 0
    i32.store offset=24
    block  ;; label = @1
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 5
        i32.load8_u offset=40
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.const 48
        i32.add
        i32.load
        call 58
      end
      local.get 5
      call 58
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 9)
  (func (;51;) (type 21) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=56
        local.get 1
        i32.const 8
        i32.add
        call 10
        local.tee 2
        i32.const 31
        i32.shr_u
        i32.const 1
        i32.xor
        i32.const 8711
        call 3
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.tee 2
      i64.load
      local.get 2
      i64.load offset=8
      i64.const -5003134543285190656
      call 11
      local.tee 2
      i32.const -1
      i32.ne
      i32.const 8657
      call 3
      local.get 2
      local.get 1
      i32.const 8
      i32.add
      call 10
      local.tee 2
      i32.const 31
      i32.shr_u
      i32.const 1
      i32.xor
      i32.const 8657
      call 3
    end
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.load
    local.get 2
    call 50
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;52;) (type 9) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_s
    i32.const 8516
    call 3
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 8
    call 4
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
    i32.const 8516
    call 3
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call 4
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
    i32.const 8516
    call 3
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 16
    i32.add
    i32.const 8
    call 4
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
    i32.const 8516
    call 3
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 24
    i32.add
    i32.const 8
    call 4
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
    i32.const 8516
    call 3
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 32
    i32.add
    i32.const 8
    call 4
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 40
    i32.add
    call 41)
  (func (;53;) (type 9) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 8652
    call 3
    local.get 1
    local.get 0
    i32.load offset=4
    i32.const 8
    call 4
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
    i32.const 8652
    call 3
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 8
    call 4
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
    i32.const 8652
    call 3
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 8
    call 4
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
    i32.const 8652
    call 3
    local.get 1
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 8
    call 4
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
    i32.const 8652
    call 3
    local.get 1
    i32.const 32
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 8
    call 4
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 40
    i32.add
    call 54)
  (func (;54;) (type 9) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    i64.const 0
    i64.store offset=16
    local.get 0
    local.get 2
    i32.const 16
    i32.add
    call 55
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.load offset=20
                    local.get 2
                    i32.load offset=16
                    local.tee 3
                    i32.sub
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    i32.const 8
                    i32.add
                    i32.const 0
                    i32.store
                    local.get 2
                    i64.const 0
                    i64.store
                    local.get 4
                    i32.const -16
                    i32.ge_u
                    br_if 5 (;@3;)
                    local.get 4
                    i32.const 10
                    i32.gt_u
                    br_if 1 (;@7;)
                    local.get 2
                    local.get 4
                    i32.const 1
                    i32.shl
                    i32.store8
                    local.get 2
                    i32.const 1
                    i32.or
                    local.set 5
                    br 2 (;@6;)
                  end
                  local.get 1
                  i32.load8_u
                  i32.const 1
                  i32.and
                  br_if 2 (;@5;)
                  local.get 1
                  i32.const 0
                  i32.store16
                  local.get 1
                  i32.const 8
                  i32.add
                  local.set 3
                  br 3 (;@4;)
                end
                local.get 4
                i32.const 16
                i32.add
                i32.const -16
                i32.and
                local.tee 6
                call 56
                local.set 5
                local.get 2
                local.get 6
                i32.const 1
                i32.or
                i32.store
                local.get 2
                local.get 5
                i32.store offset=8
                local.get 2
                local.get 4
                i32.store offset=4
              end
              local.get 4
              local.set 7
              local.get 5
              local.set 6
              loop  ;; label = @6
                local.get 6
                local.get 3
                i32.load8_u
                i32.store8
                local.get 6
                i32.const 1
                i32.add
                local.set 6
                local.get 3
                i32.const 1
                i32.add
                local.set 3
                local.get 7
                i32.const -1
                i32.add
                local.tee 7
                br_if 0 (;@6;)
              end
              local.get 5
              local.get 4
              i32.add
              i32.const 0
              i32.store8
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load8_u
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 1
                  i32.const 0
                  i32.store16
                  br 1 (;@6;)
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
              call 64
              local.get 1
              i32.const 8
              i32.add
              local.get 2
              i32.const 8
              i32.add
              i32.load
              i32.store
              local.get 1
              local.get 2
              i64.load
              i64.store align=4
              local.get 2
              i32.load offset=16
              local.tee 3
              i32.eqz
              br_if 4 (;@1;)
              br 3 (;@2;)
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
            local.set 3
          end
          local.get 1
          i32.const 0
          call 64
          local.get 3
          i32.const 0
          i32.store
          local.get 1
          i64.const 0
          i64.store align=4
          local.get 2
          i32.load offset=16
          local.tee 3
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 2
        call 60
        unreachable
      end
      local.get 2
      local.get 3
      i32.store offset=20
      local.get 3
      call 58
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func (;55;) (type 9) (param i32 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32)
    local.get 0
    i32.load offset=4
    local.set 2
    i32.const 0
    local.set 3
    i64.const 0
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
      local.get 2
      local.get 5
      i32.load
      i32.lt_u
      i32.const 8648
      call 3
      local.get 6
      i32.load
      local.tee 2
      i32.load8_u
      local.set 7
      local.get 6
      local.get 2
      i32.const 1
      i32.add
      local.tee 2
      i32.store
      local.get 4
      local.get 7
      i32.const 127
      i32.and
      local.get 3
      i32.const 255
      i32.and
      local.tee 3
      i32.shl
      i64.extend_i32_u
      i64.or
      local.set 4
      local.get 3
      i32.const 7
      i32.add
      local.set 3
      local.get 7
      i32.const 128
      i32.and
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 3
        local.get 1
        i32.load
        local.tee 7
        i32.sub
        local.tee 5
        local.get 4
        i32.wrap_i64
        local.tee 6
        i32.ge_u
        br_if 0 (;@2;)
        local.get 1
        local.get 6
        local.get 5
        i32.sub
        call 40
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.set 3
        local.get 1
        i32.load
        local.set 7
        br 1 (;@1;)
      end
      local.get 5
      local.get 6
      i32.le_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 4
      i32.add
      local.get 7
      local.get 6
      i32.add
      local.tee 3
      i32.store
    end
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.get 2
    i32.sub
    local.get 3
    local.get 7
    i32.sub
    local.tee 2
    i32.ge_u
    i32.const 8652
    call 3
    local.get 7
    local.get 0
    i32.const 4
    i32.add
    local.tee 3
    i32.load
    local.get 2
    call 4
    drop
    local.get 3
    local.get 3
    i32.load
    local.get 2
    i32.add
    i32.store
    local.get 0)
  (func (;56;) (type 21) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      local.get 0
      select
      local.tee 1
      call 68
      local.tee 0
      br_if 0 (;@1;)
      loop  ;; label = @2
        i32.const 0
        local.set 0
        i32.const 0
        i32.load offset=8760
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call_indirect (type 2)
        local.get 1
        call 68
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;57;) (type 21) (param i32) (result i32)
    local.get 0
    call 56)
  (func (;58;) (type 3) (param i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 71
    end)
  (func (;59;) (type 3) (param i32)
    local.get 0
    call 58)
  (func (;60;) (type 3) (param i32)
    call 13
    unreachable)
  (func (;61;) (type 9) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i64.const 0
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.tee 2
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
      local.get 2
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
      local.tee 2
      i32.const -16
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=8
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 11
          i32.ge_u
          br_if 0 (;@3;)
          local.get 0
          local.get 2
          i32.const 1
          i32.shl
          i32.store8
          local.get 0
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          br_if 1 (;@2;)
          local.get 1
          local.get 2
          i32.add
          i32.const 0
          i32.store8
          local.get 0
          return
        end
        local.get 2
        i32.const 16
        i32.add
        i32.const -16
        i32.and
        local.tee 4
        call 56
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
        local.get 2
        i32.store offset=4
      end
      local.get 1
      local.get 3
      local.get 2
      call 4
      drop
      local.get 1
      local.get 2
      i32.add
      i32.const 0
      i32.store8
      local.get 0
      return
    end
    call 13
    unreachable)
  (func (;62;) (type 9) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
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
            local.tee 3
            select
            local.set 2
            local.get 1
            i32.const 1
            i32.add
            local.set 4
            local.get 1
            i32.load offset=8
            local.set 5
            i32.const 10
            local.set 1
            block  ;; label = @5
              local.get 0
              i32.load8_u
              local.tee 6
              i32.const 1
              i32.and
              local.tee 7
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.load
              i32.const -2
              i32.and
              i32.const -1
              i32.add
              local.set 1
            end
            local.get 5
            local.get 4
            local.get 3
            select
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.le_u
                  br_if 0 (;@7;)
                  local.get 7
                  br_if 1 (;@6;)
                  local.get 6
                  i32.const 1
                  i32.shr_u
                  local.set 4
                  br 2 (;@5;)
                end
                local.get 7
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
              local.set 4
            end
            local.get 0
            local.get 1
            local.get 2
            local.get 1
            i32.sub
            local.get 4
            i32.const 0
            local.get 4
            local.get 2
            local.get 3
            call 63
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
      local.get 3
      local.get 2
      call 15
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
  (func (;63;) (type 22) (param i32 i32 i32 i32 i32 i32 i32 i32)
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
          block  ;; label = @4
            local.get 0
            i32.load8_u
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 0
            i32.const 1
            i32.add
            local.set 8
            i32.const -17
            local.set 9
            local.get 1
            i32.const 2147483622
            i32.le_u
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 0
          i32.load offset=8
          local.set 8
          i32.const -17
          local.set 9
          local.get 1
          i32.const 2147483622
          i32.gt_u
          br_if 1 (;@2;)
        end
        i32.const 11
        local.set 9
        local.get 1
        i32.const 1
        i32.shl
        local.tee 10
        local.get 2
        local.get 1
        i32.add
        local.tee 2
        local.get 2
        local.get 10
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
        local.set 9
      end
      local.get 9
      call 56
      local.set 2
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 8
        local.get 4
        call 4
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
        call 4
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
        local.get 8
        local.get 4
        i32.add
        local.get 5
        i32.add
        local.get 7
        call 4
        drop
      end
      block  ;; label = @2
        local.get 1
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 8
        call 58
      end
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 9
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
    call 13
    unreachable)
  (func (;64;) (type 6) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const -16
            i32.ge_u
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load8_u
                local.tee 2
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                local.get 2
                i32.const 1
                i32.shr_u
                local.set 3
                i32.const 10
                local.set 4
                br 1 (;@5;)
              end
              local.get 0
              i32.load
              local.tee 2
              i32.const -2
              i32.and
              i32.const -1
              i32.add
              local.set 4
              local.get 0
              i32.load offset=4
              local.set 3
            end
            i32.const 10
            local.set 5
            block  ;; label = @5
              local.get 3
              local.get 1
              local.get 3
              local.get 1
              i32.gt_u
              select
              local.tee 1
              i32.const 11
              i32.lt_u
              br_if 0 (;@5;)
              local.get 1
              i32.const 16
              i32.add
              i32.const -16
              i32.and
              i32.const -1
              i32.add
              local.set 5
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  local.get 4
                  i32.eq
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 5
                    i32.const 10
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 1
                    local.set 6
                    local.get 0
                    i32.const 1
                    i32.add
                    local.set 1
                    local.get 0
                    i32.load offset=8
                    local.set 4
                    i32.const 0
                    local.set 7
                    i32.const 1
                    local.set 8
                    local.get 2
                    i32.const 1
                    i32.and
                    br_if 3 (;@5;)
                    br 5 (;@3;)
                  end
                  local.get 5
                  i32.const 1
                  i32.add
                  call 56
                  local.set 1
                  local.get 5
                  local.get 4
                  i32.gt_u
                  br_if 1 (;@6;)
                  local.get 1
                  br_if 1 (;@6;)
                end
                return
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u
                local.tee 2
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                i32.const 1
                local.set 7
                local.get 0
                i32.const 1
                i32.add
                local.set 4
                i32.const 0
                local.set 6
                i32.const 1
                local.set 8
                local.get 2
                i32.const 1
                i32.and
                i32.eqz
                br_if 3 (;@3;)
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=8
              local.set 4
              i32.const 1
              local.set 6
              i32.const 1
              local.set 7
              i32.const 1
              local.set 8
              local.get 2
              i32.const 1
              i32.and
              i32.eqz
              br_if 2 (;@3;)
            end
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.add
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            br 2 (;@2;)
          end
          call 13
          unreachable
        end
        local.get 2
        i32.const 254
        i32.and
        local.get 8
        i32.shr_u
        i32.const 1
        i32.add
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      local.get 4
      local.get 2
      call 4
      drop
    end
    block  ;; label = @1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      call 58
    end
    block  ;; label = @1
      local.get 7
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store offset=8
      local.get 0
      local.get 5
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
    i32.store8)
  (func (;65;) (type 3) (param i32)
    call 13
    unreachable)
  (func (;66;) (type 3) (param i32))
  (func (;67;) (type 21) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load8_u
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 1
          i32.add
          local.set 1
          loop  ;; label = @4
            local.get 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            i32.load8_u
            local.set 2
            local.get 1
            i32.const 1
            i32.add
            local.tee 3
            local.set 1
            local.get 2
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const -1
          i32.add
          local.get 0
          i32.sub
          return
        end
        local.get 1
        i32.const -4
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          local.tee 1
          i32.load
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const 255
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        loop  ;; label = @3
          local.get 1
          i32.load8_u offset=1
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.tee 3
          local.set 1
          local.get 2
          br_if 0 (;@3;)
        end
        local.get 3
        local.get 0
        i32.sub
        return
      end
      local.get 0
      local.get 0
      i32.sub
      return
    end
    local.get 1
    local.get 0
    i32.sub)
  (func (;68;) (type 21) (param i32) (result i32)
    i32.const 8772
    local.get 0
    call 69)
  (func (;69;) (type 9) (param i32 i32) (result i32)
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
              call 70
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
            i32.const 8234
            call 3
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
  (func (;70;) (type 21) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8388
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=8764
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=8768
        local.set 2
        br 1 (;@1;)
      end
      memory.size
      local.set 2
      i32.const 0
      i32.const 1
      i32.store8 offset=8764
      i32.const 0
      local.get 2
      i32.const 16
      i32.shl
      local.tee 2
      i32.store offset=8768
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
            i32.load offset=8768
            local.set 3
          end
          i32.const 0
          local.set 5
          i32.const 0
          local.get 3
          i32.store offset=8768
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
            i32.load8_u offset=8764
            br_if 0 (;@4;)
            memory.size
            local.set 3
            i32.const 0
            i32.const 1
            i32.store8 offset=8764
            i32.const 0
            local.get 3
            i32.const 16
            i32.shl
            local.tee 3
            i32.store offset=8768
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
            i32.load offset=8768
            local.set 6
          end
          i32.const 0
          local.get 6
          local.get 7
          i32.add
          i32.store offset=8768
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
  (func (;71;) (type 3) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=17156
        local.tee 1
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 16964
        local.set 2
        local.get 1
        i32.const 12
        i32.mul
        i32.const 16964
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
  (table (;0;) 3 3 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 8192))
  (global (;1;) i32 (i32.const 17168))
  (global (;2;) i32 (i32.const 17168))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "apply" (func 43))
  (export "_Znwj" (func 56))
  (export "_ZdlPv" (func 58))
  (export "_Znaj" (func 57))
  (export "_ZdaPv" (func 59))
  (elem (;0;) (i32.const 1) func 36 37)
  (data (;0;) (i32.const 8192) "Hello, \00")
  (data (;1;) (i32.const 8200) "Receiving transfer message: from \00malloc_from_freed was designed to only be called after _heap was completely allocated\00")
  (data (;2;) (i32.const 8320) " to \00")
  (data (;3;) (i32.const 8325) "\0a\00")
  (data (;4;) (i32.const 8327) "Issue some CHC token to \00")
  (data (;5;) (i32.const 8352) "eosio.token\00")
  (data (;6;) (i32.const 8364) "issue CHC\00")
  (data (;7;) (i32.const 8374) "onerror action's are only valid from the \22eosio\22 system account\00")
  (data (;8;) (i32.const 8438) "transfer\00")
  (data (;9;) (i32.const 8447) "magnitude of asset amount must be less than 2^62\00")
  (data (;10;) (i32.const 8496) "invalid symbol name\00")
  (data (;11;) (i32.const 8516) "write\00")
  (data (;12;) (i32.const 8522) "cannot create objects in table of another contract\00")
  (data (;13;) (i32.const 8573) "next primary key in table is at autoincrement limit\00")
  (data (;14;) (i32.const 8625) "error reading iterator\00")
  (data (;15;) (i32.const 8648) "get\00")
  (data (;16;) (i32.const 8652) "read\00")
  (data (;17;) (i32.const 8657) "cannot decrement end iterator when the table is empty\00")
  (data (;18;) (i32.const 8711) "cannot decrement iterator at beginning of table\00"))
