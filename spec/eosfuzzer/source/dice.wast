(module
  (type (;0;) (func (param i32 i64 i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i64 i64 i64 i64) (result i32)))
  (type (;7;) (func (result i64)))
  (type (;8;) (func (param i64 i64 i64 i64 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i64 i64 i64 i64)))
  (type (;10;) (func (param i64 i64) (result i32)))
  (type (;11;) (func (param i32 f64)))
  (type (;12;) (func (param i32 f32)))
  (type (;13;) (func (param i64 i64) (result f64)))
  (type (;14;) (func (param i64 i64) (result f32)))
  (type (;15;) (func (param i64 i64 i64)))
  (type (;16;) (func (param i32 i32 i64 i32)))
  (type (;17;) (func (param i32 i32 i32 i32)))
  (type (;18;) (func (param i32) (result i32)))
  (type (;19;) (func (param i32)))
  (import "env" "eosio_assert" (func (;0;) (type 2)))
  (import "env" "action_data_size" (func (;1;) (type 3)))
  (import "env" "read_action_data" (func (;2;) (type 4)))
  (import "env" "memcpy" (func (;3;) (type 5)))
  (import "env" "db_find_i64" (func (;4;) (type 6)))
  (import "env" "send_inline" (func (;5;) (type 2)))
  (import "env" "current_receiver" (func (;6;) (type 7)))
  (import "env" "db_get_i64" (func (;7;) (type 5)))
  (import "env" "db_store_i64" (func (;8;) (type 8)))
  (import "env" "abort" (func (;9;) (type 1)))
  (import "env" "memset" (func (;10;) (type 5)))
  (import "env" "memmove" (func (;11;) (type 5)))
  (import "env" "__unordtf2" (func (;12;) (type 6)))
  (import "env" "__eqtf2" (func (;13;) (type 6)))
  (import "env" "__multf3" (func (;14;) (type 9)))
  (import "env" "__addtf3" (func (;15;) (type 9)))
  (import "env" "__subtf3" (func (;16;) (type 9)))
  (import "env" "__netf2" (func (;17;) (type 6)))
  (import "env" "__fixunstfsi" (func (;18;) (type 10)))
  (import "env" "__floatunsitf" (func (;19;) (type 2)))
  (import "env" "__fixtfsi" (func (;20;) (type 10)))
  (import "env" "__floatsitf" (func (;21;) (type 2)))
  (import "env" "__extenddftf2" (func (;22;) (type 11)))
  (import "env" "__extendsftf2" (func (;23;) (type 12)))
  (import "env" "__divtf3" (func (;24;) (type 9)))
  (import "env" "__letf2" (func (;25;) (type 6)))
  (import "env" "__trunctfdf2" (func (;26;) (type 13)))
  (import "env" "__getf2" (func (;27;) (type 6)))
  (import "env" "__trunctfsf2" (func (;28;) (type 14)))
  (import "env" "set_blockchain_parameters_packed" (func (;29;) (type 2)))
  (import "env" "get_blockchain_parameters_packed" (func (;30;) (type 4)))
  (func (;31;) (type 1))
  (func (;32;) (type 15) (param i64 i64 i64)
    (local i32 i64 i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 3
    global.set 0
    call 31
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
      i32.const 48
      i32.add
      local.get 0
      i64.store
      local.get 3
      i32.const 56
      i32.add
      i64.const -1
      i64.store
      local.get 3
      i32.const 64
      i32.add
      local.tee 5
      i64.const 0
      i64.store
      local.get 3
      i32.const 72
      i32.add
      i32.const 0
      i32.store
      local.get 3
      i32.const 300
      i32.store offset=32
      local.get 3
      local.get 0
      i64.store offset=24
      local.get 3
      local.get 0
      i64.store offset=40
      local.get 2
      i64.const 5380477996647841792
      i64.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 0
      i32.store offset=20
      local.get 3
      i32.const 1
      i32.store offset=16
      local.get 3
      local.get 3
      i64.load offset=16
      i64.store offset=8
      local.get 3
      i32.const 24
      i32.add
      local.get 3
      i32.const 8
      i32.add
      call 34
      drop
      local.get 5
      i32.load
      local.tee 6
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 68
          i32.add
          local.tee 7
          i32.load
          local.tee 5
          local.get 6
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 5
            i32.const -24
            i32.add
            local.tee 5
            i32.load
            local.set 8
            local.get 5
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 8
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              call 49
            end
            local.get 6
            local.get 5
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const 64
          i32.add
          i32.load
          local.set 5
          br 1 (;@2;)
        end
        local.get 6
        local.set 5
      end
      local.get 7
      local.get 6
      i32.store
      local.get 5
      call 49
    end
    i32.const 0
    call 53
    local.get 3
    i32.const 80
    i32.add
    global.set 0)
  (func (;33;) (type 0) (param i32 i64 i32)
    (local i32 i32 i64 i32 i64 i32 i32 i32 i64 i64 i64)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i64.store offset=104
    i32.const 0
    local.set 4
    block  ;; label = @1
      local.get 2
      i64.load
      i64.const 4611686018427387903
      i64.add
      i64.const 9223372036854775806
      i64.gt_u
      br_if 0 (;@1;)
      local.get 2
      i64.load offset=8
      i64.const 8
      i64.shr_u
      local.set 5
      i32.const 0
      local.set 6
      block  ;; label = @2
        loop  ;; label = @3
          local.get 5
          i32.wrap_i64
          i32.const 24
          i32.shl
          i32.const -1073741825
          i32.add
          i32.const 452984830
          i32.gt_u
          br_if 1 (;@2;)
          local.get 5
          i64.const 8
          i64.shr_u
          local.set 7
          block  ;; label = @4
            local.get 5
            i64.const 65280
            i64.and
            i64.const 0
            i64.eq
            br_if 0 (;@4;)
            local.get 7
            local.set 5
            i32.const 1
            local.set 4
            local.get 6
            local.tee 8
            i32.const 1
            i32.add
            local.set 6
            local.get 8
            i32.const 6
            i32.lt_s
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 7
          local.set 5
          loop  ;; label = @4
            local.get 5
            i64.const 65280
            i64.and
            i64.const 0
            i64.ne
            br_if 2 (;@2;)
            local.get 5
            i64.const 8
            i64.shr_u
            local.set 5
            local.get 6
            i32.const 6
            i32.lt_s
            local.set 4
            local.get 6
            i32.const 1
            i32.add
            local.tee 8
            local.set 6
            local.get 4
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 4
          local.get 8
          i32.const 1
          i32.add
          local.set 6
          local.get 8
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
    i32.const 8256
    call 0
    local.get 2
    i64.load
    i64.const 0
    i64.gt_s
    i32.const 8273
    call 0
    local.get 0
    i32.const 16
    i32.add
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 40
        i32.add
        i32.load
        local.tee 8
        local.get 0
        i32.const 44
        i32.add
        i32.load
        local.tee 4
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          loop  ;; label = @4
            local.get 4
            i32.const -24
            i32.add
            local.tee 6
            i32.load
            local.tee 10
            i64.load
            local.get 1
            i64.eq
            br_if 1 (;@3;)
            local.get 6
            local.set 4
            local.get 8
            local.get 6
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 8
        local.get 4
        i32.eq
        br_if 0 (;@2;)
        local.get 10
        i32.load offset=32
        local.get 9
        i32.eq
        i32.const 8338
        call 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 9
        i64.load
        local.get 0
        i32.const 24
        i32.add
        i64.load
        i64.const 3607749778735104000
        local.get 1
        call 4
        local.tee 6
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 9
        local.get 6
        call 35
        i32.load offset=32
        local.get 9
        i32.eq
        i32.const 8338
        call 0
        br 1 (;@1;)
      end
      local.get 0
      i64.load
      local.set 5
      local.get 3
      local.get 3
      i32.const 104
      i32.add
      i32.store offset=64
      local.get 3
      i32.const 16
      i32.add
      local.get 9
      local.get 5
      local.get 3
      i32.const 64
      i32.add
      call 36
      local.get 3
      i64.load offset=104
      local.set 1
    end
    i64.const 6
    local.set 5
    loop  ;; label = @1
      local.get 5
      i64.const 1
      i64.add
      local.tee 5
      i64.const 13
      i64.ne
      br_if 0 (;@1;)
    end
    i64.const 0
    local.set 5
    i64.const 59
    local.set 11
    i32.const 8304
    local.set 6
    i64.const 0
    local.set 12
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i64.const 10
                i64.gt_u
                br_if 0 (;@6;)
                local.get 6
                i32.load8_u
                local.tee 4
                i32.const -97
                i32.add
                i32.const 255
                i32.and
                i32.const 25
                i32.gt_u
                br_if 1 (;@5;)
                local.get 4
                i32.const -91
                i32.add
                local.set 4
                br 2 (;@4;)
              end
              i64.const 0
              local.set 7
              local.get 5
              i64.const 11
              i64.eq
              br_if 2 (;@3;)
              br 3 (;@2;)
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
          local.set 7
        end
        local.get 7
        i64.const 31
        i64.and
        local.get 11
        i64.const 4294967295
        i64.and
        i64.shl
        local.set 7
      end
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      local.get 11
      i64.const 4294967291
      i64.add
      local.set 11
      local.get 7
      local.get 12
      i64.or
      local.set 12
      local.get 5
      i64.const 1
      i64.add
      local.tee 5
      i64.const 13
      i64.ne
      br_if 0 (;@1;)
    end
    i64.const 0
    local.set 5
    i64.const 59
    local.set 11
    i32.const 8316
    local.set 6
    i64.const 0
    local.set 13
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i64.const 7
                i64.gt_u
                br_if 0 (;@6;)
                local.get 6
                i32.load8_u
                local.tee 4
                i32.const -97
                i32.add
                i32.const 255
                i32.and
                i32.const 25
                i32.gt_u
                br_if 1 (;@5;)
                local.get 4
                i32.const -91
                i32.add
                local.set 4
                br 2 (;@4;)
              end
              i64.const 0
              local.set 7
              local.get 5
              i64.const 11
              i64.le_u
              br_if 2 (;@3;)
              br 3 (;@2;)
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
          local.set 7
        end
        local.get 7
        i64.const 31
        i64.and
        local.get 11
        i64.const 4294967295
        i64.and
        i64.shl
        local.set 7
      end
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      local.get 5
      i64.const 1
      i64.add
      local.set 5
      local.get 7
      local.get 13
      i64.or
      local.set 13
      local.get 11
      i64.const 4294967291
      i64.add
      local.tee 11
      i64.const 55834574842
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const 8
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i64.const 0
    i64.store
    block  ;; label = @1
      block  ;; label = @2
        i32.const 8325
        call 54
        local.tee 6
        i32.const -16
        i32.ge_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.const 11
              i32.ge_u
              br_if 0 (;@5;)
              local.get 3
              local.get 6
              i32.const 1
              i32.shl
              i32.store8
              local.get 3
              i32.const 1
              i32.or
              local.set 4
              local.get 6
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 6
            i32.const 16
            i32.add
            i32.const -16
            i32.and
            local.tee 8
            call 47
            local.set 4
            local.get 3
            local.get 8
            i32.const 1
            i32.or
            i32.store
            local.get 3
            local.get 4
            i32.store offset=8
            local.get 3
            local.get 6
            i32.store offset=4
          end
          local.get 4
          i32.const 8325
          local.get 6
          call 3
          drop
        end
        local.get 4
        local.get 6
        i32.add
        i32.const 0
        i32.store8
        local.get 3
        i32.const 16
        i32.add
        i32.const 24
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 3
        i32.const 56
        i32.add
        local.get 3
        i32.const 8
        i32.add
        local.tee 6
        i32.load
        i32.store
        local.get 6
        i32.const 0
        i32.store
        local.get 3
        local.get 12
        i64.store offset=64
        local.get 3
        local.get 13
        i64.store offset=72
        local.get 3
        local.get 3
        i64.load offset=104
        i64.store offset=16
        local.get 3
        local.get 0
        i64.load
        i64.store offset=24
        local.get 3
        local.get 2
        i64.load
        i64.store offset=32
        local.get 3
        local.get 3
        i64.load
        i64.store offset=48
        local.get 3
        i64.const 0
        i64.store
        i32.const 16
        call 47
        local.tee 6
        local.get 1
        i64.store
        local.get 6
        i64.const 3617214756542218240
        i64.store offset=8
        local.get 3
        i32.const 64
        i32.add
        i32.const 36
        i32.add
        i32.const 0
        i32.store
        local.get 3
        i32.const 64
        i32.add
        i32.const 24
        i32.add
        local.get 6
        i32.const 16
        i32.add
        local.tee 4
        i32.store
        local.get 3
        i32.const 84
        i32.add
        local.get 4
        i32.store
        local.get 3
        local.get 6
        i32.store offset=80
        local.get 3
        i64.const 0
        i64.store offset=92 align=4
        local.get 3
        i32.const 16
        i32.add
        i32.const 36
        i32.add
        i32.load
        local.get 3
        i32.load8_u offset=48
        local.tee 6
        i32.const 1
        i32.shr_u
        local.get 6
        i32.const 1
        i32.and
        select
        local.tee 4
        i32.const 32
        i32.add
        local.set 6
        local.get 4
        i64.extend_i32_u
        local.set 5
        local.get 3
        i32.const 92
        i32.add
        local.set 4
        loop  ;; label = @3
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 5
          i64.const 7
          i64.shr_u
          local.tee 5
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 6
            call 37
            local.get 3
            i32.const 96
            i32.add
            i32.load
            local.set 4
            local.get 3
            i32.const 92
            i32.add
            i32.load
            local.set 6
            br 1 (;@3;)
          end
          i32.const 0
          local.set 4
          i32.const 0
          local.set 6
        end
        local.get 3
        local.get 6
        i32.store offset=132
        local.get 3
        local.get 6
        i32.store offset=128
        local.get 3
        local.get 4
        i32.store offset=136
        local.get 3
        local.get 3
        i32.const 128
        i32.add
        i32.store offset=112
        local.get 3
        local.get 3
        i32.const 16
        i32.add
        i32.store offset=120
        local.get 3
        i32.const 120
        i32.add
        local.get 3
        i32.const 112
        i32.add
        call 38
        local.get 3
        i32.const 128
        i32.add
        local.get 3
        i32.const 64
        i32.add
        call 39
        local.get 3
        i32.load offset=128
        local.tee 6
        local.get 3
        i32.load offset=132
        local.get 6
        i32.sub
        call 5
        block  ;; label = @3
          local.get 3
          i32.load offset=128
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 6
          i32.store offset=132
          local.get 6
          call 49
        end
        block  ;; label = @3
          local.get 3
          i32.load offset=92
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 96
          i32.add
          local.get 6
          i32.store
          local.get 6
          call 49
        end
        block  ;; label = @3
          local.get 3
          i32.load offset=80
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 84
          i32.add
          local.get 6
          i32.store
          local.get 6
          call 49
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 48
            i32.add
            i32.load8_u
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 3
            i32.load8_u
            i32.const 1
            i32.and
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 3
          i32.const 56
          i32.add
          i32.load
          call 49
          local.get 3
          i32.load8_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 3
        i32.const 8
        i32.add
        i32.load
        call 49
        local.get 3
        i32.const 144
        i32.add
        global.set 0
        return
      end
      local.get 3
      call 51
      unreachable
    end
    local.get 3
    i32.const 144
    i32.add
    global.set 0)
  (func (;34;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i64 i32 i64 i32)
    global.get 0
    i32.const 64
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
    local.set 1
    i32.const 0
    local.set 6
    block  ;; label = @1
      call 1
      local.tee 7
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          i32.const 513
          i32.lt_u
          br_if 0 (;@3;)
          local.get 7
          call 55
          local.set 6
          br 1 (;@2;)
        end
        local.get 2
        local.get 7
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 6
        global.set 0
      end
      local.get 6
      local.get 7
      call 2
      drop
    end
    local.get 3
    i32.const 24
    i32.add
    i64.const 1398362884
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=16
    local.get 3
    i64.const 0
    i64.store offset=8
    i32.const 1
    i32.const 8412
    call 0
    i64.const 5462355
    local.set 8
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 9
        local.get 8
        i32.wrap_i64
        i32.const 24
        i32.shl
        i32.const -1073741825
        i32.add
        i32.const 452984830
        i32.gt_u
        br_if 1 (;@1;)
        local.get 8
        i64.const 8
        i64.shr_u
        local.set 10
        block  ;; label = @3
          local.get 8
          i64.const 65280
          i64.and
          i64.const 0
          i64.eq
          br_if 0 (;@3;)
          local.get 10
          local.set 8
          i32.const 1
          local.set 9
          local.get 1
          local.tee 2
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const 6
          i32.lt_s
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 10
        local.set 8
        loop  ;; label = @3
          local.get 8
          i64.const 65280
          i64.and
          i64.const 0
          i64.ne
          br_if 2 (;@1;)
          local.get 8
          i64.const 8
          i64.shr_u
          local.set 8
          local.get 1
          i32.const 6
          i32.lt_s
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.tee 11
          local.set 1
          local.get 2
          br_if 0 (;@3;)
        end
        i32.const 1
        local.set 9
        local.get 11
        i32.const 1
        i32.add
        local.set 1
        local.get 11
        i32.const 6
        i32.lt_s
        br_if 0 (;@2;)
      end
    end
    local.get 9
    i32.const 8461
    call 0
    local.get 7
    i32.const 7
    i32.gt_u
    i32.const 8481
    call 0
    local.get 3
    i32.const 8
    i32.add
    local.get 6
    i32.const 8
    call 3
    drop
    local.get 7
    i32.const -8
    i32.and
    local.tee 2
    i32.const 8
    i32.ne
    i32.const 8481
    call 0
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.tee 1
    local.get 6
    i32.const 8
    i32.add
    i32.const 8
    call 3
    drop
    local.get 2
    i32.const 16
    i32.ne
    i32.const 8481
    call 0
    local.get 3
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 6
    i32.const 16
    i32.add
    i32.const 8
    call 3
    drop
    block  ;; label = @1
      local.get 7
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 6
      call 58
    end
    local.get 3
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.tee 2
    local.get 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 3
    local.get 1
    i64.load
    i64.store offset=32
    local.get 3
    i64.load offset=8
    local.set 8
    local.get 3
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i64.load
    i64.store
    local.get 3
    local.get 3
    i64.load offset=32
    i64.store offset=48
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
    local.get 8
    local.get 3
    i32.const 48
    i32.add
    local.get 5
    call_indirect (type 0)
    local.get 3
    i32.const 64
    i32.add
    global.set 0
    i32.const 1)
  (func (;35;) (type 4) (param i32 i32) (result i32)
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
    call 7
    local.tee 6
    i32.const 31
    i32.shr_u
    i32.const 1
    i32.xor
    i32.const 8389
    call 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 6
        call 55
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
    call 7
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
    i32.const 48
    call 47
    local.tee 9
    i64.const 1398362884
    i64.store offset=16
    local.get 9
    i64.const 0
    i64.store offset=8
    i32.const 1
    i32.const 8412
    call 0
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
    i32.const 8461
    call 0
    local.get 9
    local.get 0
    i32.store offset=32
    local.get 9
    i64.const 0
    i64.store offset=24
    local.get 3
    i32.const 32
    i32.add
    local.get 9
    call 42
    drop
    local.get 9
    local.get 1
    i32.store offset=36
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
        call 41
        local.get 6
        i32.const 513
        i32.lt_u
        br_if 1 (;@1;)
      end
      local.get 7
      call 58
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
      local.get 5
      call 49
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 9)
  (func (;36;) (type 16) (param i32 i32 i64 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 2
    i64.store offset=40
    local.get 1
    i64.load
    call 6
    i64.eq
    i32.const 8486
    call 0
    local.get 4
    local.get 3
    i32.store offset=20
    local.get 4
    local.get 1
    i32.store offset=16
    local.get 4
    local.get 4
    i32.const 40
    i32.add
    i32.store offset=24
    i32.const 48
    call 47
    local.tee 3
    local.get 1
    local.get 4
    i32.const 16
    i32.add
    call 40
    drop
    local.get 4
    local.get 3
    i32.store offset=32
    local.get 4
    local.get 3
    i64.load
    local.tee 2
    i64.store offset=16
    local.get 4
    local.get 3
    i32.load offset=36
    local.tee 5
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 28
        i32.add
        local.tee 6
        i32.load
        local.tee 7
        local.get 1
        i32.const 32
        i32.add
        i32.load
        i32.ge_u
        br_if 0 (;@2;)
        local.get 7
        local.get 2
        i64.store offset=8
        local.get 7
        local.get 5
        i32.store offset=16
        local.get 4
        i32.const 0
        i32.store offset=32
        local.get 7
        local.get 3
        i32.store
        local.get 6
        local.get 7
        i32.const 24
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 1
      i32.const 24
      i32.add
      local.get 4
      i32.const 32
      i32.add
      local.get 4
      i32.const 16
      i32.add
      local.get 4
      i32.const 12
      i32.add
      call 41
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 4
    i32.load offset=32
    local.set 1
    local.get 4
    i32.const 0
    i32.store offset=32
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call 49
    end
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func (;37;) (type 2) (param i32 i32)
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
              call 47
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
        call 52
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
        call 3
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
      call 49
      return
    end)
  (func (;38;) (type 2) (param i32 i32)
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
    i32.const 8537
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 8
    call 3
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
    i32.const 8537
    call 0
    local.get 3
    i32.load offset=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 8
    call 3
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
    i32.const 8537
    call 0
    local.get 3
    i32.load offset=4
    local.get 0
    i32.const 16
    i32.add
    i32.const 8
    call 3
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
    i32.const 8537
    call 0
    local.get 3
    i32.load offset=4
    local.get 0
    i32.const 24
    i32.add
    i32.const 8
    call 3
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
    call 44
    drop)
  (func (;39;) (type 2) (param i32 i32)
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
        call 37
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
    i32.const 8537
    call 0
    local.get 3
    local.get 1
    i32.const 8
    call 3
    drop
    local.get 0
    i32.const -8
    i32.add
    i32.const 7
    i32.gt_s
    i32.const 8537
    call 0
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call 3
    drop
    local.get 2
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=4
    local.get 2
    local.get 4
    call 45
    local.get 7
    call 46
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;40;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i64 i64 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 0
    i32.const 16
    i32.add
    local.tee 4
    i64.const 1398362884
    i64.store
    i32.const 1
    i32.const 8412
    call 0
    local.get 4
    i64.load
    i64.const 8
    i64.shr_u
    local.set 5
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 5
          i32.wrap_i64
          i32.const 24
          i32.shl
          i32.const -1073741825
          i32.add
          i32.const 452984830
          i32.gt_u
          br_if 1 (;@2;)
          local.get 5
          i64.const 8
          i64.shr_u
          local.set 6
          block  ;; label = @4
            local.get 5
            i64.const 65280
            i64.and
            i64.const 0
            i64.eq
            br_if 0 (;@4;)
            local.get 6
            local.set 5
            i32.const 1
            local.set 7
            local.get 4
            local.tee 8
            i32.const 1
            i32.add
            local.set 4
            local.get 8
            i32.const 6
            i32.lt_s
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 6
          local.set 5
          loop  ;; label = @4
            local.get 5
            i64.const 65280
            i64.and
            i64.const 0
            i64.ne
            br_if 2 (;@2;)
            local.get 5
            i64.const 8
            i64.shr_u
            local.set 5
            local.get 4
            i32.const 6
            i32.lt_s
            local.set 7
            local.get 4
            i32.const 1
            i32.add
            local.tee 8
            local.set 4
            local.get 7
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 7
          local.get 8
          i32.const 1
          i32.add
          local.set 4
          local.get 8
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
    i32.const 8461
    call 0
    local.get 0
    local.get 1
    i32.store offset=32
    local.get 0
    i64.const 0
    i64.store offset=24
    local.get 0
    local.get 2
    i32.load offset=4
    i32.load
    i64.load
    i64.store
    local.get 2
    i32.load
    local.set 4
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=40
    local.get 3
    local.get 3
    i32.store offset=36
    local.get 3
    local.get 3
    i32.store offset=32
    local.get 3
    i32.const 32
    i32.add
    local.get 0
    call 43
    drop
    local.get 0
    local.get 4
    i64.load offset=8
    i64.const 3607749778735104000
    local.get 2
    i32.load offset=8
    i64.load
    local.get 0
    i64.load
    local.tee 5
    local.get 3
    i32.const 32
    call 8
    i32.store offset=36
    block  ;; label = @1
      local.get 5
      local.get 4
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 4
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
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 0)
  (func (;41;) (type 17) (param i32 i32 i32 i32)
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
          call 47
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
      call 52
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
          local.get 1
          call 49
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
      call 49
    end)
  (func (;42;) (type 4) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_u
    i32.const 8481
    call 0
    local.get 1
    local.get 0
    i32.load offset=4
    i32.const 8
    call 3
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
    i32.const 8481
    call 0
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 8
    call 3
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
    i32.const 8481
    call 0
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 8
    call 3
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
    i32.const 8481
    call 0
    local.get 1
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 4
    call 3
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
    i32.const 3
    i32.gt_u
    i32.const 8481
    call 0
    local.get 1
    i32.const 28
    i32.add
    local.get 0
    i32.load offset=4
    i32.const 4
    call 3
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0)
  (func (;43;) (type 4) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 7
    i32.gt_s
    i32.const 8537
    call 0
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 8
    call 3
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
    i32.const 8537
    call 0
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call 3
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
    i32.const 8537
    call 0
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 16
    i32.add
    i32.const 8
    call 3
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
    i32.const 8537
    call 0
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 24
    i32.add
    i32.const 4
    call 3
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
    i32.const 3
    i32.gt_s
    i32.const 8537
    call 0
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 28
    i32.add
    i32.const 4
    call 3
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0)
  (func (;44;) (type 4) (param i32 i32) (result i32)
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
      i32.const 8537
      call 0
      local.get 3
      i32.load
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 3
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
      i32.const 8537
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
      call 3
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
  (func (;45;) (type 4) (param i32 i32) (result i32)
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
      i32.const 8537
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
      call 3
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
        i32.const 8537
        call 0
        local.get 6
        i32.load
        local.get 7
        i32.const 8
        call 3
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
        i32.const 8537
        call 0
        local.get 6
        i32.load
        local.get 7
        i32.const 8
        i32.add
        i32.const 8
        call 3
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
  (func (;46;) (type 4) (param i32 i32) (result i32)
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
      i32.const 8537
      call 0
      local.get 6
      i32.load
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 3
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
    i32.const 8537
    call 0
    local.get 0
    i32.const 4
    i32.add
    local.tee 4
    i32.load
    local.get 7
    local.get 6
    call 3
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
  (func (;47;) (type 18) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      local.get 0
      select
      local.tee 1
      call 55
      local.tee 0
      br_if 0 (;@1;)
      loop  ;; label = @2
        i32.const 0
        local.set 0
        i32.const 0
        i32.load offset=8544
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call_indirect (type 1)
        local.get 1
        call 55
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;48;) (type 18) (param i32) (result i32)
    local.get 0
    call 47)
  (func (;49;) (type 19) (param i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 58
    end)
  (func (;50;) (type 19) (param i32)
    local.get 0
    call 49)
  (func (;51;) (type 19) (param i32)
    call 9
    unreachable)
  (func (;52;) (type 19) (param i32)
    call 9
    unreachable)
  (func (;53;) (type 19) (param i32))
  (func (;54;) (type 18) (param i32) (result i32)
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
  (func (;55;) (type 18) (param i32) (result i32)
    i32.const 8556
    local.get 0
    call 56)
  (func (;56;) (type 4) (param i32 i32) (result i32)
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
              call 57
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
            i32.const 16952
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
  (func (;57;) (type 18) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8388
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=8548
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=8552
        local.set 2
        br 1 (;@1;)
      end
      memory.size
      local.set 2
      i32.const 0
      i32.const 1
      i32.store8 offset=8548
      i32.const 0
      local.get 2
      i32.const 16
      i32.shl
      local.tee 2
      i32.store offset=8552
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
            i32.load offset=8552
            local.set 3
          end
          i32.const 0
          local.set 5
          i32.const 0
          local.get 3
          i32.store offset=8552
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
            i32.load8_u offset=8548
            br_if 0 (;@4;)
            memory.size
            local.set 3
            i32.const 0
            i32.const 1
            i32.store8 offset=8548
            i32.const 0
            local.get 3
            i32.const 16
            i32.shl
            local.tee 3
            i32.store offset=8552
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
            i32.load offset=8552
            local.set 6
          end
          i32.const 0
          local.get 6
          local.get 7
          i32.add
          i32.store offset=8552
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
  (func (;58;) (type 19) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=16940
        local.tee 1
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 16748
        local.set 2
        local.get 1
        i32.const 12
        i32.mul
        i32.const 16748
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
  (global (;1;) i32 (i32.const 17038))
  (global (;2;) i32 (i32.const 17038))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "apply" (func 32))
  (export "_ZdlPv" (func 49))
  (export "_Znwj" (func 47))
  (export "_Znaj" (func 48))
  (export "_ZdaPv" (func 50))
  (elem (;0;) (i32.const 1) func 33)
  (data (;0;) (i32.const 8192) "onerror action's are only valid from the \22eosio\22 system account\00")
  (data (;1;) (i32.const 8256) "invalid quantity\00")
  (data (;2;) (i32.const 8273) "must deposit positive quantity\00")
  (data (;3;) (i32.const 8304) "eosio.token\00")
  (data (;4;) (i32.const 8316) "transfer\00")
  (data (;5;) (i32.const 8325) "dice deposit\00")
  (data (;6;) (i32.const 8338) "object passed to iterator_to is not in multi_index\00")
  (data (;7;) (i32.const 8389) "error reading iterator\00")
  (data (;8;) (i32.const 8412) "magnitude of asset amount must be less than 2^62\00")
  (data (;9;) (i32.const 8461) "invalid symbol name\00")
  (data (;10;) (i32.const 8481) "read\00")
  (data (;11;) (i32.const 8486) "cannot create objects in table of another contract\00")
  (data (;12;) (i32.const 8537) "write\00")
  (data (;13;) (i32.const 16952) "malloc_from_freed was designed to only be called after _heap was completely allocated\00"))
