(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i64)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i64 i64 i64 i64) (result i32)))
  (type (;8;) (func (param i32 i64 i64 i64 i64)))
  (type (;9;) (func (param i64 i64) (result i32)))
  (type (;10;) (func (param i32 f64)))
  (type (;11;) (func (param i32 f32)))
  (type (;12;) (func (param i64 i64) (result f64)))
  (type (;13;) (func (param i64 i64) (result f32)))
  (type (;14;) (func (param i64 i64 i64)))
  (type (;15;) (func (param i32) (result i32)))
  (import "env" "eosio_assert" (func (;0;) (type 1)))
  (import "env" "action_data_size" (func (;1;) (type 3)))
  (import "env" "read_action_data" (func (;2;) (type 4)))
  (import "env" "tapos_block_num" (func (;3;) (type 3)))
  (import "env" "printi" (func (;4;) (type 5)))
  (import "env" "tapos_block_prefix" (func (;5;) (type 3)))
  (import "env" "memcpy" (func (;6;) (type 6)))
  (import "env" "prints" (func (;7;) (type 0)))
  (import "env" "send_inline" (func (;8;) (type 1)))
  (import "env" "logfile" (func (;9;) (type 0)))
  (import "env" "abort" (func (;10;) (type 2)))
  (import "env" "memset" (func (;11;) (type 6)))
  (import "env" "memmove" (func (;12;) (type 6)))
  (import "env" "__unordtf2" (func (;13;) (type 7)))
  (import "env" "__eqtf2" (func (;14;) (type 7)))
  (import "env" "__multf3" (func (;15;) (type 8)))
  (import "env" "__addtf3" (func (;16;) (type 8)))
  (import "env" "__subtf3" (func (;17;) (type 8)))
  (import "env" "__netf2" (func (;18;) (type 7)))
  (import "env" "__fixunstfsi" (func (;19;) (type 9)))
  (import "env" "__floatunsitf" (func (;20;) (type 1)))
  (import "env" "__fixtfsi" (func (;21;) (type 9)))
  (import "env" "__floatsitf" (func (;22;) (type 1)))
  (import "env" "__extenddftf2" (func (;23;) (type 10)))
  (import "env" "__extendsftf2" (func (;24;) (type 11)))
  (import "env" "__divtf3" (func (;25;) (type 8)))
  (import "env" "__letf2" (func (;26;) (type 7)))
  (import "env" "__trunctfdf2" (func (;27;) (type 12)))
  (import "env" "__getf2" (func (;28;) (type 7)))
  (import "env" "__trunctfsf2" (func (;29;) (type 13)))
  (import "env" "set_blockchain_parameters_packed" (func (;30;) (type 1)))
  (import "env" "get_blockchain_parameters_packed" (func (;31;) (type 4)))
  (func (;32;) (type 2))
  (func (;33;) (type 14) (param i64 i64 i64)
    (local i32 i64)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 3
    global.set 0
    call 32
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
      i32.const 8192
      call 0
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i64.eq
        br_if 0 (;@2;)
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
      i64.store offset=104
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i64.const -3665743729458675713
                i64.gt_s
                br_if 0 (;@6;)
                local.get 2
                i64.const -7945346999727947776
                i64.eq
                br_if 1 (;@5;)
                local.get 2
                i64.const -7015482319536390144
                i64.eq
                br_if 2 (;@4;)
                local.get 2
                i64.const -5920905901241270272
                i64.ne
                br_if 5 (;@1;)
                local.get 3
                i32.const 0
                i32.store offset=92
                local.get 3
                i32.const 1
                i32.store offset=88
                local.get 3
                local.get 3
                i64.load offset=88
                i64.store offset=16
                local.get 3
                i32.const 104
                i32.add
                local.get 3
                i32.const 16
                i32.add
                call 35
                drop
                br 5 (;@1;)
              end
              local.get 2
              i64.const -3665743729458675712
              i64.eq
              br_if 2 (;@3;)
              local.get 2
              i64.const 7112092489258893312
              i64.eq
              br_if 3 (;@2;)
              local.get 2
              i64.const 7684013976526520320
              i64.ne
              br_if 4 (;@1;)
              local.get 3
              i32.const 0
              i32.store offset=76
              local.get 3
              i32.const 2
              i32.store offset=72
              local.get 3
              local.get 3
              i64.load offset=72
              i64.store offset=32
              local.get 3
              i32.const 104
              i32.add
              local.get 3
              i32.const 32
              i32.add
              call 35
              drop
              br 4 (;@1;)
            end
            local.get 3
            i32.const 0
            i32.store offset=84
            local.get 3
            i32.const 3
            i32.store offset=80
            local.get 3
            local.get 3
            i64.load offset=80
            i64.store offset=24
            local.get 3
            i32.const 104
            i32.add
            local.get 3
            i32.const 24
            i32.add
            call 38
            drop
            br 3 (;@1;)
          end
          local.get 3
          i32.const 0
          i32.store offset=100
          local.get 3
          i32.const 4
          i32.store offset=96
          local.get 3
          local.get 3
          i64.load offset=96
          i64.store offset=8
          local.get 3
          i32.const 104
          i32.add
          local.get 3
          i32.const 8
          i32.add
          call 35
          drop
          br 2 (;@1;)
        end
        local.get 3
        i32.const 0
        i32.store offset=68
        local.get 3
        i32.const 5
        i32.store offset=64
        local.get 3
        local.get 3
        i64.load offset=64
        i64.store offset=40
        local.get 3
        i32.const 104
        i32.add
        local.get 3
        i32.const 40
        i32.add
        call 35
        drop
        br 1 (;@1;)
      end
      local.get 3
      i32.const 0
      i32.store offset=60
      local.get 3
      i32.const 6
      i32.store offset=56
      local.get 3
      local.get 3
      i64.load offset=56
      i64.store offset=48
      local.get 3
      i32.const 104
      i32.add
      local.get 3
      i32.const 48
      i32.add
      call 35
      drop
    end
    i32.const 0
    call 54
    local.get 3
    i32.const 112
    i32.add
    global.set 0)
  (func (;34;) (type 0) (param i32)
    call 5
    i64.extend_i32_s
    call 4)
  (func (;35;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    local.tee 2
    local.set 3
    local.get 1
    i32.load offset=4
    local.set 4
    local.get 1
    i32.load
    local.set 1
    block  ;; label = @1
      call 1
      local.tee 5
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 5
        i32.const 512
        i32.le_u
        br_if 0 (;@2;)
        local.get 5
        call 56
        local.tee 2
        local.get 5
        call 2
        drop
        local.get 2
        call 59
        br 1 (;@1;)
      end
      local.get 2
      local.get 5
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 2
      global.set 0
      local.get 2
      local.get 5
      call 2
      drop
    end
    local.get 0
    local.get 4
    i32.const 1
    i32.shr_s
    i32.add
    local.set 5
    block  ;; label = @1
      local.get 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.load
      local.get 1
      i32.add
      i32.load
      local.set 1
    end
    local.get 5
    local.get 1
    call_indirect (type 0)
    local.get 3
    global.set 0
    i32.const 1)
  (func (;36;) (type 0) (param i32)
    i32.const 8264
    call 7)
  (func (;37;) (type 1) (param i32 i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      call 3
      i64.extend_i32_s
      call 4
      return
    end
    i32.const 8256
    call 7)
  (func (;38;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
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
    i32.const 0
    local.set 6
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
          call 56
          local.set 6
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 6
        global.set 0
      end
      local.get 6
      local.get 1
      call 2
      drop
    end
    local.get 1
    i32.const 0
    i32.ne
    i32.const 8417
    call 0
    local.get 3
    i32.const 15
    i32.add
    local.get 6
    i32.const 1
    call 6
    drop
    local.get 3
    i32.load8_u offset=15
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 6
      call 59
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
    local.get 2
    i32.const 255
    i32.and
    i32.const 0
    i32.ne
    local.get 5
    call_indirect (type 1)
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    i32.const 1)
  (func (;39;) (type 0) (param i32)
    call 3
    i64.extend_i32_s
    call 4)
  (func (;40;) (type 0) (param i32)
    (local i32 i64 i64 i64 i32 i64 i32 i64 i64 i32)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 1
    global.set 0
    call 5
    i64.extend_i32_s
    call 4
    local.get 0
    i64.load
    local.set 2
    i64.const 6
    local.set 3
    loop  ;; label = @1
      local.get 3
      i64.const 1
      i64.add
      local.tee 3
      i64.const 13
      i64.ne
      br_if 0 (;@1;)
    end
    i64.const 0
    local.set 3
    i64.const 59
    local.set 4
    i32.const 8276
    local.set 5
    i64.const 0
    local.set 6
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i64.const 10
                i64.gt_u
                br_if 0 (;@6;)
                local.get 5
                i32.load8_u
                local.tee 7
                i32.const -97
                i32.add
                i32.const 255
                i32.and
                i32.const 25
                i32.gt_u
                br_if 1 (;@5;)
                local.get 7
                i32.const -91
                i32.add
                local.set 7
                br 2 (;@4;)
              end
              i64.const 0
              local.set 8
              local.get 3
              i64.const 11
              i64.eq
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            local.get 7
            i32.const -48
            i32.add
            i32.const 0
            local.get 7
            i32.const -49
            i32.add
            i32.const 255
            i32.and
            i32.const 5
            i32.lt_u
            select
            local.set 7
          end
          local.get 7
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
        local.get 4
        i64.const 4294967295
        i64.and
        i64.shl
        local.set 8
      end
      local.get 5
      i32.const 1
      i32.add
      local.set 5
      local.get 4
      i64.const 4294967291
      i64.add
      local.set 4
      local.get 8
      local.get 6
      i64.or
      local.set 6
      local.get 3
      i64.const 1
      i64.add
      local.tee 3
      i64.const 13
      i64.ne
      br_if 0 (;@1;)
    end
    i64.const 0
    local.set 3
    i64.const 59
    local.set 4
    i32.const 8288
    local.set 5
    i64.const 0
    local.set 9
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i64.const 7
                i64.gt_u
                br_if 0 (;@6;)
                local.get 5
                i32.load8_u
                local.tee 7
                i32.const -97
                i32.add
                i32.const 255
                i32.and
                i32.const 25
                i32.gt_u
                br_if 1 (;@5;)
                local.get 7
                i32.const -91
                i32.add
                local.set 7
                br 2 (;@4;)
              end
              i64.const 0
              local.set 8
              local.get 3
              i64.const 11
              i64.le_u
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            local.get 7
            i32.const -48
            i32.add
            i32.const 0
            local.get 7
            i32.const -49
            i32.add
            i32.const 255
            i32.and
            i32.const 5
            i32.lt_u
            select
            local.set 7
          end
          local.get 7
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
        local.get 4
        i64.const 4294967295
        i64.and
        i64.shl
        local.set 8
      end
      local.get 5
      i32.const 1
      i32.add
      local.set 5
      local.get 3
      i64.const 1
      i64.add
      local.set 3
      local.get 8
      local.get 9
      i64.or
      local.set 9
      local.get 4
      i64.const 4294967291
      i64.add
      local.tee 4
      i64.const 55834574842
      i64.ne
      br_if 0 (;@1;)
    end
    i32.const 1
    i32.const 8311
    call 0
    i64.const 5459781
    local.set 3
    i32.const 0
    local.set 5
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
          local.get 3
          i64.const 8
          i64.shr_u
          local.set 8
          block  ;; label = @4
            local.get 3
            i64.const 65280
            i64.and
            i64.const 0
            i64.eq
            br_if 0 (;@4;)
            local.get 8
            local.set 3
            i32.const 1
            local.set 7
            local.get 5
            local.tee 10
            i32.const 1
            i32.add
            local.set 5
            local.get 10
            i32.const 6
            i32.lt_s
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 8
          local.set 3
          loop  ;; label = @4
            local.get 3
            i64.const 65280
            i64.and
            i64.const 0
            i64.ne
            br_if 2 (;@2;)
            local.get 3
            i64.const 8
            i64.shr_u
            local.set 3
            local.get 5
            i32.const 6
            i32.lt_s
            local.set 7
            local.get 5
            i32.const 1
            i32.add
            local.tee 10
            local.set 5
            local.get 7
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 7
          local.get 10
          i32.const 1
          i32.add
          local.set 5
          local.get 10
          i32.const 6
          i32.lt_s
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      local.set 7
    end
    local.get 7
    i32.const 8360
    call 0
    local.get 1
    i32.const 16
    i32.add
    i32.const 0
    i32.store
    local.get 1
    i64.const 0
    i64.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        i32.const 8297
        call 55
        local.tee 5
        i32.const -16
        i32.ge_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 11
              i32.ge_u
              br_if 0 (;@5;)
              local.get 1
              local.get 5
              i32.const 1
              i32.shl
              i32.store8 offset=8
              local.get 1
              i32.const 8
              i32.add
              i32.const 1
              i32.or
              local.set 7
              local.get 5
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 5
            i32.const 16
            i32.add
            i32.const -16
            i32.and
            local.tee 10
            call 48
            local.set 7
            local.get 1
            local.get 10
            i32.const 1
            i32.or
            i32.store offset=8
            local.get 1
            local.get 7
            i32.store offset=16
            local.get 1
            local.get 5
            i32.store offset=12
          end
          local.get 7
          i32.const 8297
          local.get 5
          call 6
          drop
        end
        local.get 7
        local.get 5
        i32.add
        i32.const 0
        i32.store8
        local.get 1
        i32.const 24
        i32.add
        i32.const 24
        i32.add
        i64.const 1397703940
        i64.store
        local.get 1
        i32.const 64
        i32.add
        local.get 1
        i32.const 16
        i32.add
        local.tee 5
        i32.load
        i32.store
        local.get 5
        i32.const 0
        i32.store
        local.get 1
        i64.const 0
        i64.store offset=40
        local.get 1
        local.get 6
        i64.store offset=72
        local.get 1
        local.get 9
        i64.store offset=80
        local.get 1
        local.get 0
        i64.load
        local.tee 3
        i64.store offset=24
        local.get 1
        local.get 3
        i64.store offset=32
        local.get 1
        local.get 1
        i64.load offset=8
        i64.store offset=56
        local.get 1
        i64.const 0
        i64.store offset=8
        i32.const 16
        call 48
        local.tee 5
        local.get 2
        i64.store
        local.get 5
        i64.const 3617214756542218240
        i64.store offset=8
        local.get 1
        i32.const 72
        i32.add
        i32.const 36
        i32.add
        i32.const 0
        i32.store
        local.get 1
        i32.const 72
        i32.add
        i32.const 24
        i32.add
        local.get 5
        i32.const 16
        i32.add
        local.tee 7
        i32.store
        local.get 1
        i32.const 92
        i32.add
        local.get 7
        i32.store
        local.get 1
        local.get 5
        i32.store offset=88
        local.get 1
        i64.const 0
        i64.store offset=100 align=4
        local.get 1
        i32.const 24
        i32.add
        i32.const 36
        i32.add
        i32.load
        local.get 1
        i32.load8_u offset=56
        local.tee 5
        i32.const 1
        i32.shr_u
        local.get 5
        i32.const 1
        i32.and
        select
        local.tee 7
        i32.const 32
        i32.add
        local.set 5
        local.get 7
        i64.extend_i32_u
        local.set 3
        local.get 1
        i32.const 100
        i32.add
        local.set 7
        loop  ;; label = @3
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          local.get 3
          i64.const 7
          i64.shr_u
          local.tee 3
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 7
            local.get 5
            call 42
            local.get 1
            i32.const 104
            i32.add
            i32.load
            local.set 7
            local.get 1
            i32.const 100
            i32.add
            i32.load
            local.set 5
            br 1 (;@3;)
          end
          i32.const 0
          local.set 7
          i32.const 0
          local.set 5
        end
        local.get 1
        local.get 5
        i32.store offset=116
        local.get 1
        local.get 5
        i32.store offset=112
        local.get 1
        local.get 7
        i32.store offset=120
        local.get 1
        local.get 1
        i32.const 112
        i32.add
        i32.store offset=128
        local.get 1
        local.get 1
        i32.const 24
        i32.add
        i32.store offset=136
        local.get 1
        i32.const 136
        i32.add
        local.get 1
        i32.const 128
        i32.add
        call 43
        local.get 1
        i32.const 112
        i32.add
        local.get 1
        i32.const 72
        i32.add
        call 44
        local.get 1
        i32.load offset=112
        local.tee 5
        local.get 1
        i32.load offset=116
        local.get 5
        i32.sub
        call 8
        block  ;; label = @3
          local.get 1
          i32.load offset=112
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 5
          i32.store offset=116
          local.get 5
          call 50
        end
        block  ;; label = @3
          local.get 1
          i32.load offset=100
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 104
          i32.add
          local.get 5
          i32.store
          local.get 5
          call 50
        end
        block  ;; label = @3
          local.get 1
          i32.load offset=88
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 92
          i32.add
          local.get 5
          i32.store
          local.get 5
          call 50
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 56
            i32.add
            i32.load8_u
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 1
            i32.load8_u offset=8
            i32.const 1
            i32.and
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 1
          i32.const 64
          i32.add
          i32.load
          call 50
          local.get 1
          i32.load8_u offset=8
          i32.const 1
          i32.and
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 1
        i32.const 16
        i32.add
        i32.load
        call 50
        local.get 1
        i32.const 144
        i32.add
        global.set 0
        return
      end
      local.get 1
      i32.const 8
      i32.add
      call 52
      unreachable
    end
    local.get 1
    i32.const 144
    i32.add
    global.set 0)
  (func (;41;) (type 0) (param i32)
    i32.const 8386
    call 9)
  (func (;42;) (type 1) (param i32 i32)
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
              call 48
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
        call 53
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
        call 6
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
      call 50
      return
    end)
  (func (;43;) (type 1) (param i32 i32)
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
    i32.gt_s
    i32.const 8380
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 8
    call 6
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
    i32.gt_s
    i32.const 8380
    call 0
    local.get 3
    i32.load offset=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 8
    call 6
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
    i32.gt_s
    i32.const 8380
    call 0
    local.get 3
    i32.load offset=4
    local.get 0
    i32.const 16
    i32.add
    i32.const 8
    call 6
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
    i32.gt_s
    i32.const 8380
    call 0
    local.get 3
    i32.load offset=4
    local.get 0
    i32.const 24
    i32.add
    i32.const 8
    call 6
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
    call 45
    drop)
  (func (;44;) (type 1) (param i32 i32)
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
        call 42
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
    i32.const 8380
    call 0
    local.get 3
    local.get 1
    i32.const 8
    call 6
    drop
    local.get 0
    i32.const -8
    i32.add
    i32.const 7
    i32.gt_s
    i32.const 8380
    call 0
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call 6
    drop
    local.get 2
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=4
    local.get 2
    local.get 4
    call 46
    local.get 7
    call 47
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;45;) (type 4) (param i32 i32) (result i32)
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
      i32.const 8380
      call 0
      local.get 3
      i32.load
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 6
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
      i32.const 8380
      call 0
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
      call 6
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
  (func (;46;) (type 4) (param i32 i32) (result i32)
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
      i32.const 8380
      call 0
      local.get 0
      i32.const 4
      i32.add
      local.tee 6
      i32.load
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 6
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
        i32.const 8380
        call 0
        local.get 6
        i32.load
        local.get 7
        i32.const 8
        call 6
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
        i32.const 8380
        call 0
        local.get 6
        i32.load
        local.get 7
        i32.const 8
        i32.add
        i32.const 8
        call 6
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
  (func (;47;) (type 4) (param i32 i32) (result i32)
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
      i32.const 8380
      call 0
      local.get 6
      i32.load
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 6
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
    i32.const 8380
    call 0
    local.get 0
    i32.const 4
    i32.add
    local.tee 4
    i32.load
    local.get 7
    local.get 6
    call 6
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
  (func (;48;) (type 15) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      local.get 0
      select
      local.tee 1
      call 56
      local.tee 0
      br_if 0 (;@1;)
      loop  ;; label = @2
        i32.const 0
        local.set 0
        i32.const 0
        i32.load offset=8424
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call_indirect (type 2)
        local.get 1
        call 56
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;49;) (type 15) (param i32) (result i32)
    local.get 0
    call 48)
  (func (;50;) (type 0) (param i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 59
    end)
  (func (;51;) (type 0) (param i32)
    local.get 0
    call 50)
  (func (;52;) (type 0) (param i32)
    call 10
    unreachable)
  (func (;53;) (type 0) (param i32)
    call 10
    unreachable)
  (func (;54;) (type 0) (param i32))
  (func (;55;) (type 15) (param i32) (result i32)
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
  (func (;56;) (type 15) (param i32) (result i32)
    i32.const 8436
    local.get 0
    call 57)
  (func (;57;) (type 4) (param i32 i32) (result i32)
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
              call 58
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
            i32.const 16832
            call 0
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
  (func (;58;) (type 15) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8388
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=8428
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=8432
        local.set 2
        br 1 (;@1;)
      end
      memory.size
      local.set 2
      i32.const 0
      i32.const 1
      i32.store8 offset=8428
      i32.const 0
      local.get 2
      i32.const 16
      i32.shl
      local.tee 2
      i32.store offset=8432
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
            i32.load offset=8432
            local.set 3
          end
          i32.const 0
          local.set 5
          i32.const 0
          local.get 3
          i32.store offset=8432
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
            i32.load8_u offset=8428
            br_if 0 (;@4;)
            memory.size
            local.set 3
            i32.const 0
            i32.const 1
            i32.store8 offset=8428
            i32.const 0
            local.get 3
            i32.const 16
            i32.shl
            local.tee 3
            i32.store offset=8432
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
            i32.load offset=8432
            local.set 6
          end
          i32.const 0
          local.get 6
          local.get 7
          i32.add
          i32.store offset=8432
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
  (func (;59;) (type 0) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=16820
        local.tee 1
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 16628
        local.set 2
        local.get 1
        i32.const 12
        i32.mul
        i32.const 16628
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
  (table (;0;) 7 7 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 8192))
  (global (;1;) i32 (i32.const 16918))
  (global (;2;) i32 (i32.const 16918))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "apply" (func 33))
  (export "_Znwj" (func 48))
  (export "_ZdlPv" (func 50))
  (export "_Znaj" (func 49))
  (export "_ZdaPv" (func 51))
  (elem (;0;) (i32.const 1) func 34 36 37 39 40 41)
  (data (;0;) (i32.const 8192) "onerror action's are only valid from the \22eosio\22 system account\00")
  (data (;1;) (i32.const 8256) "nothing\00")
  (data (;2;) (i32.const 8264) "hello world\00")
  (data (;3;) (i32.const 8276) "eosio.token\00")
  (data (;4;) (i32.const 8288) "transfer\00")
  (data (;5;) (i32.const 8297) "random::token\00")
  (data (;6;) (i32.const 8311) "magnitude of asset amount must be less than 2^62\00")
  (data (;7;) (i32.const 8360) "invalid symbol name\00")
  (data (;8;) (i32.const 8380) "write\00")
  (data (;9;) (i32.const 8386) "random::getnow calling logfile\00")
  (data (;10;) (i32.const 8417) "read\00")
  (data (;11;) (i32.const 16832) "malloc_from_freed was designed to only be called after _heap was completely allocated\00"))
