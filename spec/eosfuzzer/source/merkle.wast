(module
  (type (;0;) (func (param i32 i32 i32 i32 i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32)))
  (type (;8;) (func (param i64 i64 i64 i64) (result i32)))
  (type (;9;) (func (param i32 i64 i64 i64 i64)))
  (type (;10;) (func (param i64 i64) (result i32)))
  (type (;11;) (func (param i32 f64)))
  (type (;12;) (func (param i32 f32)))
  (type (;13;) (func (param i64 i64) (result f64)))
  (type (;14;) (func (param i64 i64) (result f32)))
  (type (;15;) (func (param i64 i64 i64)))
  (type (;16;) (func (param i32) (result i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (import "env" "abort" (func (;0;) (type 1)))
  (import "env" "eosio_assert" (func (;1;) (type 2)))
  (import "env" "action_data_size" (func (;2;) (type 3)))
  (import "env" "read_action_data" (func (;3;) (type 4)))
  (import "env" "memcpy" (func (;4;) (type 5)))
  (import "env" "sha256" (func (;5;) (type 6)))
  (import "env" "prints" (func (;6;) (type 7)))
  (import "env" "memset" (func (;7;) (type 5)))
  (import "env" "memmove" (func (;8;) (type 5)))
  (import "env" "__unordtf2" (func (;9;) (type 8)))
  (import "env" "__eqtf2" (func (;10;) (type 8)))
  (import "env" "__multf3" (func (;11;) (type 9)))
  (import "env" "__addtf3" (func (;12;) (type 9)))
  (import "env" "__subtf3" (func (;13;) (type 9)))
  (import "env" "__netf2" (func (;14;) (type 8)))
  (import "env" "__fixunstfsi" (func (;15;) (type 10)))
  (import "env" "__floatunsitf" (func (;16;) (type 2)))
  (import "env" "__fixtfsi" (func (;17;) (type 10)))
  (import "env" "__floatsitf" (func (;18;) (type 2)))
  (import "env" "__extenddftf2" (func (;19;) (type 11)))
  (import "env" "__extendsftf2" (func (;20;) (type 12)))
  (import "env" "__divtf3" (func (;21;) (type 9)))
  (import "env" "__letf2" (func (;22;) (type 8)))
  (import "env" "__trunctfdf2" (func (;23;) (type 13)))
  (import "env" "__getf2" (func (;24;) (type 8)))
  (import "env" "__trunctfsf2" (func (;25;) (type 14)))
  (import "env" "set_blockchain_parameters_packed" (func (;26;) (type 2)))
  (import "env" "get_blockchain_parameters_packed" (func (;27;) (type 4)))
  (func (;28;) (type 1))
  (func (;29;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
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
      select
      local.tee 3
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      i32.const 0
      local.set 4
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 0
      i64.const 0
      i64.store align=4
      local.get 0
      local.get 3
      i32.const 1
      i32.shr_u
      call 47
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 1
        i32.add
        local.set 5
        local.get 1
        i32.const 8
        i32.add
        local.set 6
        loop  ;; label = @3
          local.get 6
          i32.load
          local.get 5
          local.get 1
          i32.load8_u
          i32.const 1
          i32.and
          select
          local.tee 7
          local.get 4
          i32.add
          i32.load8_s
          local.set 8
          i32.const 16
          local.set 9
          i32.const 8192
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.get 9
            i32.const 2
            i32.div_s
            local.tee 10
            i32.add
            local.tee 11
            i32.const 1
            i32.add
            local.get 2
            local.get 11
            i32.load8_s
            local.get 8
            i32.lt_s
            local.tee 11
            select
            local.set 2
            local.get 9
            i32.const -1
            i32.add
            local.get 10
            i32.sub
            local.get 10
            local.get 11
            select
            local.tee 9
            br_if 0 (;@4;)
          end
          local.get 2
          i32.load8_u
          local.get 8
          i32.const 255
          i32.and
          i32.ne
          br_if 2 (;@1;)
          local.get 7
          local.get 4
          i32.const 1
          i32.or
          i32.add
          i32.load8_s
          local.set 7
          i32.const 16
          local.set 10
          i32.const 8192
          local.set 9
          loop  ;; label = @4
            local.get 9
            local.get 10
            i32.const 2
            i32.div_s
            local.tee 11
            i32.add
            local.tee 8
            i32.const 1
            i32.add
            local.get 9
            local.get 8
            i32.load8_s
            local.get 7
            i32.lt_s
            local.tee 8
            select
            local.set 9
            local.get 10
            i32.const -1
            i32.add
            local.get 11
            i32.sub
            local.get 11
            local.get 8
            select
            local.tee 10
            br_if 0 (;@4;)
          end
          local.get 9
          i32.load8_u
          local.get 7
          i32.const 255
          i32.and
          i32.ne
          br_if 2 (;@1;)
          local.get 0
          local.get 9
          i32.const 8192
          i32.sub
          local.get 2
          i32.const 8192
          i32.sub
          i32.const 4
          i32.shl
          i32.or
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          call 49
          local.get 4
          i32.const 2
          i32.add
          local.tee 4
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      return
    end
    call 0
    unreachable)
  (func (;30;) (type 15) (param i64 i64 i64)
    (local i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    call 28
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
      i32.const 8209
      call 1
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
      i64.store offset=24
      local.get 2
      i64.const -2688959074178957312
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
      call 32
      drop
    end
    i32.const 0
    call 51
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;31;) (type 0) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 160
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.tee 6
    i32.const 144
    i32.add
    local.get 4
    call 46
    local.set 7
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load
    local.tee 4
    i32.sub
    local.tee 8
    i32.const 12
    i32.div_s
    local.set 9
    block  ;; label = @1
      local.get 8
      i32.eqz
      br_if 0 (;@1;)
      local.get 7
      i32.const 1
      i32.add
      local.set 10
      local.get 6
      i32.const 16
      i32.add
      i32.const 32
      i32.add
      local.set 11
      local.get 6
      i32.const 1
      i32.or
      local.set 12
      local.get 6
      i32.const 128
      i32.add
      i32.const 1
      i32.or
      local.set 13
      local.get 6
      i32.const 112
      i32.add
      i32.const 1
      i32.or
      local.set 14
      local.get 6
      i32.const 1
      i32.or
      local.set 15
      i32.const 0
      local.set 16
      loop  ;; label = @2
        local.get 6
        i32.const 128
        i32.add
        local.get 4
        local.get 16
        i32.const 12
        i32.mul
        i32.add
        call 46
        drop
        local.get 6
        i32.const 112
        i32.add
        i32.const 8
        i32.add
        local.tee 8
        i32.const 0
        i32.store
        local.get 6
        i64.const 0
        i64.store offset=112
        local.get 5
        local.set 17
        local.get 5
        i32.const -32
        i32.add
        local.tee 18
        local.tee 19
        global.set 0
        local.get 6
        i32.const 8
        i32.add
        local.tee 20
        i32.const 0
        i32.store
        local.get 6
        i64.const 0
        i64.store
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.const 8
              i32.add
              local.tee 21
              i32.load
              local.get 10
              local.get 6
              i32.load8_u offset=144
              i32.const 1
              i32.and
              select
              local.tee 22
              call 53
              local.tee 5
              i32.const -16
              i32.ge_u
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.const 11
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 6
                    local.get 5
                    i32.const 1
                    i32.shl
                    i32.store8
                    local.get 15
                    local.set 4
                    local.get 5
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                  local.get 20
                  local.get 5
                  i32.const 16
                  i32.add
                  i32.const -16
                  i32.and
                  local.tee 23
                  call 41
                  local.tee 4
                  i32.store
                  local.get 6
                  local.get 23
                  i32.const 1
                  i32.or
                  i32.store
                  local.get 6
                  local.get 5
                  i32.store offset=4
                end
                local.get 4
                local.get 22
                local.get 5
                call 4
                drop
              end
              local.get 4
              local.get 5
              i32.add
              i32.const 0
              i32.store8
              local.get 6
              i32.const 80
              i32.add
              local.get 6
              call 29
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.load8_u offset=112
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 0
                  i32.store16 offset=112
                  br 1 (;@6;)
                end
                local.get 8
                i32.load
                i32.const 0
                i32.store8
                local.get 6
                i32.const 0
                i32.store offset=116
              end
              local.get 6
              i32.const 112
              i32.add
              i32.const 0
              call 47
              local.get 8
              local.get 6
              i32.const 80
              i32.add
              i32.const 8
              i32.add
              local.tee 4
              i32.load
              i32.store
              local.get 4
              i32.const 0
              i32.store
              local.get 6
              local.get 6
              i64.load offset=80
              i64.store offset=112
              local.get 6
              i64.const 0
              i64.store offset=80
              block  ;; label = @6
                local.get 6
                i32.load8_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 20
                i32.load
                call 43
              end
              local.get 18
              local.get 8
              i32.load
              local.get 14
              local.get 6
              i32.load8_u offset=112
              i32.const 1
              i32.and
              select
              i32.const 32
              call 4
              drop
              local.get 19
              i32.const -32
              i32.add
              local.tee 19
              global.set 0
              local.get 20
              i32.const 0
              i32.store
              local.get 6
              i64.const 0
              i64.store
              local.get 6
              i32.const 128
              i32.add
              i32.const 8
              i32.add
              local.tee 24
              i32.load
              local.get 13
              local.get 6
              i32.load8_u offset=128
              i32.const 1
              i32.and
              select
              local.tee 23
              call 53
              local.tee 5
              i32.const -16
              i32.ge_u
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.const 11
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 6
                    local.get 5
                    i32.const 1
                    i32.shl
                    i32.store8
                    local.get 12
                    local.set 22
                    local.get 5
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                  local.get 20
                  local.get 5
                  i32.const 16
                  i32.add
                  i32.const -16
                  i32.and
                  local.tee 25
                  call 41
                  local.tee 22
                  i32.store
                  local.get 6
                  local.get 25
                  i32.const 1
                  i32.or
                  i32.store
                  local.get 6
                  local.get 5
                  i32.store offset=4
                end
                local.get 22
                local.get 23
                local.get 5
                call 4
                drop
              end
              local.get 22
              local.get 5
              i32.add
              i32.const 0
              i32.store8
              local.get 6
              i32.const 80
              i32.add
              local.get 6
              call 29
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.load8_u offset=112
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 0
                  i32.store16 offset=112
                  br 1 (;@6;)
                end
                local.get 8
                i32.load
                i32.const 0
                i32.store8
                local.get 6
                i32.const 0
                i32.store offset=116
              end
              local.get 6
              i32.const 112
              i32.add
              i32.const 0
              call 47
              local.get 8
              local.get 4
              i32.load
              i32.store
              local.get 4
              i32.const 0
              i32.store
              local.get 6
              local.get 6
              i64.load offset=80
              i64.store offset=112
              local.get 6
              i64.const 0
              i64.store offset=80
              block  ;; label = @6
                local.get 6
                i32.load8_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 20
                i32.load
                call 43
              end
              local.get 19
              local.get 8
              i32.load
              local.get 14
              local.get 6
              i32.load8_u offset=112
              i32.const 1
              i32.and
              select
              i32.const 32
              call 4
              drop
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.load
                  local.get 16
                  i32.add
                  i32.load8_u
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.get 18
                  i32.const 32
                  call 4
                  drop
                  local.get 11
                  local.get 19
                  i32.const 32
                  call 4
                  drop
                  br 1 (;@6;)
                end
                local.get 6
                i32.const 16
                i32.add
                local.get 19
                i32.const 32
                call 4
                drop
                local.get 11
                local.get 18
                i32.const 32
                call 4
                drop
              end
              local.get 6
              i32.const 16
              i32.add
              i32.const 64
              local.get 6
              i32.const 80
              i32.add
              call 5
              i32.const 0
              local.set 5
              local.get 20
              i32.const 0
              i32.store
              local.get 6
              i64.const 0
              i64.store
              loop  ;; label = @6
                local.get 6
                local.get 6
                i32.const 80
                i32.add
                local.get 5
                i32.add
                i32.load8_u
                local.tee 4
                i32.const 4
                i32.shr_u
                i32.const 8192
                i32.add
                i32.load8_s
                call 49
                local.get 6
                local.get 4
                i32.const 15
                i32.and
                i32.const 8192
                i32.add
                i32.load8_s
                call 49
                local.get 5
                i32.const 1
                i32.add
                local.tee 5
                i32.const 32
                i32.ne
                br_if 0 (;@6;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.load8_u offset=144
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 10
                  i32.const 0
                  i32.store8
                  local.get 6
                  i32.const 0
                  i32.store8 offset=144
                  br 1 (;@6;)
                end
                local.get 21
                i32.load
                i32.const 0
                i32.store8
                local.get 7
                i32.const 4
                i32.add
                i32.const 0
                i32.store
              end
              local.get 7
              i32.const 0
              call 47
              local.get 6
              i32.const 144
              i32.add
              i32.const 8
              i32.add
              local.get 20
              i32.load
              i32.store
              local.get 6
              local.get 6
              i64.load
              i64.store offset=144
              local.get 17
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.load8_u offset=112
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 6
                  i32.load8_u offset=128
                  i32.const 1
                  i32.and
                  br_if 1 (;@6;)
                  br 3 (;@4;)
                end
                local.get 8
                i32.load
                call 43
                local.get 6
                i32.load8_u offset=128
                i32.const 1
                i32.and
                i32.eqz
                br_if 2 (;@4;)
              end
              local.get 24
              i32.load
              call 43
              local.get 16
              i32.const 1
              i32.add
              local.tee 16
              local.get 9
              i32.lt_u
              br_if 2 (;@3;)
              br 4 (;@1;)
            end
            local.get 6
            call 45
            unreachable
          end
          local.get 16
          i32.const 1
          i32.add
          local.tee 16
          local.get 9
          i32.ge_u
          br_if 2 (;@1;)
        end
        local.get 1
        i32.load
        local.set 4
        br 0 (;@2;)
      end
    end
    i32.const 8286
    local.set 20
    block  ;; label = @1
      local.get 7
      i32.const 4
      i32.add
      i32.load
      local.get 6
      i32.load8_u offset=144
      local.tee 5
      i32.const 1
      i32.shr_u
      local.tee 18
      local.get 5
      i32.const 1
      i32.and
      local.tee 8
      select
      local.tee 16
      local.get 3
      i32.load offset=4
      local.get 3
      i32.load8_u
      local.tee 5
      i32.const 1
      i32.shr_u
      local.get 5
      i32.const 1
      i32.and
      local.tee 5
      select
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=8
      local.get 3
      i32.const 1
      i32.add
      local.get 5
      select
      local.set 5
      local.get 7
      i32.const 1
      i32.add
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          local.get 8
          br_if 0 (;@3;)
          local.get 16
          i32.eqz
          br_if 1 (;@2;)
          i32.const 0
          local.get 18
          i32.sub
          local.set 8
          loop  ;; label = @4
            local.get 4
            i32.load8_u
            local.get 5
            i32.load8_u
            i32.ne
            br_if 3 (;@1;)
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 8
            i32.const 1
            i32.add
            local.tee 8
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 16
        i32.eqz
        br_if 0 (;@2;)
        i32.const 8286
        i32.const 8281
        local.get 7
        i32.load offset=8
        local.get 4
        local.get 8
        select
        local.get 5
        local.get 16
        call 52
        select
        local.set 20
        br 1 (;@1;)
      end
      i32.const 8281
      local.set 20
    end
    i32.const 8273
    call 6
    local.get 20
    call 6
    block  ;; label = @1
      local.get 6
      i32.load8_u offset=144
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 7
      i32.load offset=8
      call 43
    end
    local.get 6
    i32.const 160
    i32.add
    global.set 0)
  (func (;32;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 80
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
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            call 2
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 513
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            call 54
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
      call 3
      drop
    end
    local.get 3
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 32
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 40
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i64.const 0
    i64.store offset=24
    local.get 3
    local.get 2
    i32.store offset=68
    local.get 3
    local.get 2
    i32.store offset=64
    local.get 3
    local.get 2
    local.get 1
    i32.add
    i32.store offset=72
    local.get 3
    i32.const 64
    i32.add
    local.get 3
    call 33
    drop
    local.get 3
    i32.const 64
    i32.add
    local.get 3
    i32.const 12
    i32.add
    call 34
    drop
    local.get 3
    i32.const 64
    i32.add
    local.get 3
    i32.const 24
    i32.add
    call 35
    drop
    local.get 3
    i32.const 64
    i32.add
    local.get 3
    i32.const 36
    i32.add
    call 35
    drop
    block  ;; label = @1
      local.get 1
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      call 57
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
    call 36
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.load8_u offset=36
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 3
              i32.load8_u offset=24
              i32.const 1
              i32.and
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 3
            i32.const 44
            i32.add
            i32.load
            call 43
            local.get 3
            i32.load8_u offset=24
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 3
          i32.const 32
          i32.add
          i32.load
          call 43
          local.get 3
          i32.const 12
          i32.add
          i32.load
          local.tee 2
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 3
        i32.const 12
        i32.add
        i32.load
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 3
      i32.const 16
      i32.add
      local.get 2
      i32.store
      local.get 2
      call 43
    end
    block  ;; label = @1
      local.get 3
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=4
          local.tee 1
          local.get 0
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const -12
              i32.add
              local.tee 2
              i32.load8_u
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const -4
              i32.add
              i32.load
              call 43
            end
            local.get 2
            local.set 1
            local.get 0
            local.get 2
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 3
          i32.load
          local.set 2
          br 1 (;@2;)
        end
        local.get 0
        local.set 2
      end
      local.get 3
      local.get 0
      i32.store offset=4
      local.get 2
      call 43
    end
    local.get 3
    i32.const 80
    i32.add
    global.set 0
    i32.const 1)
  (func (;33;) (type 4) (param i32 i32) (result i32)
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
      i32.const 8292
      call 1
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
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 2
          local.get 1
          i32.load
          local.tee 6
          i32.sub
          i32.const 12
          i32.div_s
          local.tee 3
          local.get 4
          i32.wrap_i64
          local.tee 7
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 7
          local.get 3
          i32.sub
          call 37
          local.get 1
          i32.load
          local.tee 7
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.tee 2
          i32.ne
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 3
          local.get 7
          i32.le_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 6
            local.get 7
            i32.const 12
            i32.mul
            i32.add
            local.tee 3
            local.get 2
            i32.eq
            br_if 0 (;@4;)
            loop  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.const -12
                i32.add
                local.tee 7
                i32.load8_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.const -4
                i32.add
                i32.load
                call 43
              end
              local.get 7
              local.set 2
              local.get 3
              local.get 7
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 1
          i32.const 4
          i32.add
          local.get 3
          i32.store
          local.get 3
          local.set 2
        end
        local.get 1
        i32.load
        local.tee 7
        local.get 2
        i32.eq
        br_if 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 0
        local.get 7
        call 35
        drop
        local.get 2
        local.get 7
        i32.const 12
        i32.add
        local.tee 7
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;34;) (type 4) (param i32 i32) (result i32)
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
      i32.const 8292
      call 1
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
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 6
          local.get 1
          i32.load
          local.tee 7
          i32.sub
          local.tee 3
          local.get 4
          i32.wrap_i64
          local.tee 2
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          local.get 3
          i32.sub
          call 40
          local.get 1
          i32.load
          local.tee 7
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.tee 6
          i32.ne
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 3
          local.get 2
          i32.le_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 4
          i32.add
          local.get 7
          local.get 2
          i32.add
          local.tee 6
          i32.store
        end
        local.get 7
        local.get 6
        i32.eq
        br_if 1 (;@1;)
      end
      local.get 0
      i32.const 4
      i32.add
      local.tee 2
      i32.load
      local.set 3
      local.get 0
      i32.const 8
      i32.add
      local.set 5
      loop  ;; label = @2
        local.get 5
        i32.load
        local.get 3
        i32.ne
        i32.const 8296
        call 1
        local.get 7
        local.get 2
        i32.load
        i32.const 1
        call 4
        drop
        local.get 2
        local.get 2
        i32.load
        i32.const 1
        i32.add
        local.tee 3
        i32.store
        local.get 6
        local.get 7
        i32.const 1
        i32.add
        local.tee 7
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;35;) (type 4) (param i32 i32) (result i32)
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
    call 38
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
                call 41
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
              call 47
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
          call 47
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
        call 45
        unreachable
      end
      local.get 2
      local.get 3
      i32.store offset=20
      local.get 3
      call 43
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func (;36;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=56
    local.get 2
    i64.const 0
    i64.store offset=48
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load
    i32.sub
    local.tee 3
    i32.const 12
    i32.div_s
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 3
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const 357913942
                        i32.ge_u
                        br_if 1 (;@9;)
                        local.get 2
                        i32.const 56
                        i32.add
                        local.get 3
                        call 41
                        local.tee 3
                        local.get 4
                        i32.const 12
                        i32.mul
                        i32.add
                        i32.store
                        local.get 2
                        local.get 3
                        i32.store offset=48
                        local.get 2
                        local.get 3
                        i32.store offset=52
                        local.get 1
                        i32.load
                        local.tee 4
                        local.get 1
                        i32.const 4
                        i32.add
                        i32.load
                        local.tee 5
                        i32.eq
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          local.get 3
                          local.get 4
                          call 46
                          local.set 6
                          local.get 3
                          i32.const 12
                          i32.add
                          local.set 3
                          local.get 5
                          local.get 4
                          i32.const 12
                          i32.add
                          local.tee 4
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        local.get 2
                        local.get 6
                        i32.const 12
                        i32.add
                        i32.store offset=52
                      end
                      local.get 2
                      i32.const 0
                      i32.store offset=40
                      local.get 2
                      i64.const 0
                      i64.store offset=32
                      block  ;; label = @10
                        local.get 1
                        i32.const 16
                        i32.add
                        i32.load
                        local.get 1
                        i32.load offset=12
                        i32.sub
                        local.tee 3
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const -1
                        i32.le_s
                        br_if 2 (;@8;)
                        local.get 2
                        i32.const 40
                        i32.add
                        local.get 3
                        call 41
                        local.tee 4
                        local.get 3
                        i32.add
                        i32.store
                        local.get 2
                        local.get 4
                        i32.store offset=32
                        local.get 2
                        local.get 4
                        i32.store offset=36
                        local.get 1
                        i32.const 16
                        i32.add
                        i32.load
                        local.get 1
                        i32.const 12
                        i32.add
                        i32.load
                        local.tee 5
                        i32.sub
                        local.tee 3
                        i32.const 1
                        i32.lt_s
                        br_if 0 (;@10;)
                        local.get 4
                        local.get 5
                        local.get 3
                        call 4
                        drop
                        local.get 2
                        local.get 4
                        local.get 3
                        i32.add
                        i32.store offset=36
                      end
                      local.get 2
                      i32.const 16
                      i32.add
                      local.get 1
                      i32.const 24
                      i32.add
                      call 46
                      local.set 3
                      local.get 2
                      local.get 1
                      i32.const 36
                      i32.add
                      call 46
                      local.set 4
                      local.get 0
                      i32.load
                      i32.load
                      local.get 0
                      i32.load offset=4
                      local.tee 5
                      i32.load offset=4
                      local.tee 1
                      i32.const 1
                      i32.shr_s
                      i32.add
                      local.set 6
                      local.get 5
                      i32.load
                      local.set 5
                      block  ;; label = @10
                        local.get 1
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load
                        local.get 5
                        i32.add
                        i32.load
                        local.set 5
                      end
                      local.get 6
                      local.get 2
                      i32.const 48
                      i32.add
                      local.get 2
                      i32.const 32
                      i32.add
                      local.get 2
                      i32.const 80
                      i32.add
                      local.get 3
                      call 46
                      local.tee 1
                      local.get 2
                      i32.const 64
                      i32.add
                      local.get 4
                      call 46
                      local.tee 0
                      local.get 5
                      call_indirect (type 0)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=64
                          i32.const 1
                          i32.and
                          br_if 0 (;@11;)
                          local.get 2
                          i32.load8_u offset=80
                          i32.const 1
                          i32.and
                          br_if 1 (;@10;)
                          br 4 (;@7;)
                        end
                        local.get 0
                        i32.load offset=8
                        call 43
                        local.get 2
                        i32.load8_u offset=80
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 3 (;@7;)
                      end
                      local.get 1
                      i32.load offset=8
                      call 43
                      i32.const 1
                      local.set 5
                      local.get 4
                      i32.load8_u
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 3 (;@6;)
                      br 4 (;@5;)
                    end
                    local.get 2
                    i32.const 48
                    i32.add
                    call 50
                    unreachable
                  end
                  local.get 2
                  i32.const 32
                  i32.add
                  call 50
                  unreachable
                end
                i32.const 1
                local.set 5
                local.get 4
                i32.load8_u
                i32.const 1
                i32.and
                br_if 1 (;@5;)
              end
              local.get 3
              i32.load8_u
              local.get 5
              i32.and
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 4
            i32.load offset=8
            call 43
            local.get 3
            i32.load8_u
            local.get 5
            i32.and
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 3
          i32.load offset=8
          call 43
          local.get 2
          i32.load offset=32
          local.tee 3
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 2
        i32.load offset=32
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      local.get 3
      i32.store offset=36
      local.get 3
      call 43
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=48
      local.tee 5
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=52
          local.tee 4
          local.get 5
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const -12
              i32.add
              local.tee 3
              i32.load8_u
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.const -4
              i32.add
              i32.load
              call 43
            end
            local.get 3
            local.set 4
            local.get 5
            local.get 3
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 2
          i32.load offset=48
          local.set 3
          br 1 (;@2;)
        end
        local.get 5
        local.set 3
      end
      local.get 2
      local.get 5
      i32.store offset=52
      local.get 3
      call 43
    end
    local.get 2
    i32.const 96
    i32.add
    global.set 0)
  (func (;37;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 2
            local.get 0
            i32.load offset=4
            local.tee 3
            i32.sub
            i32.const 12
            i32.div_s
            local.get 1
            i32.ge_u
            br_if 0 (;@4;)
            local.get 3
            local.get 0
            i32.load
            local.tee 4
            i32.sub
            i32.const 12
            i32.div_s
            local.tee 3
            local.get 1
            i32.add
            local.tee 5
            i32.const 357913942
            i32.ge_u
            br_if 2 (;@2;)
            i32.const 357913941
            local.set 6
            block  ;; label = @5
              local.get 2
              local.get 4
              i32.sub
              i32.const 12
              i32.div_s
              local.tee 2
              i32.const 178956969
              i32.gt_u
              br_if 0 (;@5;)
              local.get 5
              local.get 2
              i32.const 1
              i32.shl
              local.tee 6
              local.get 6
              local.get 5
              i32.lt_u
              select
              local.tee 6
              i32.eqz
              br_if 2 (;@3;)
            end
            local.get 6
            i32.const 12
            i32.mul
            call 41
            local.set 2
            br 3 (;@1;)
          end
          local.get 3
          local.set 6
          local.get 1
          local.set 2
          loop  ;; label = @4
            local.get 6
            i64.const 0
            i64.store align=4
            local.get 6
            i32.const 8
            i32.add
            i32.const 0
            i32.store
            local.get 6
            i32.const 12
            i32.add
            local.set 6
            local.get 2
            i32.const -1
            i32.add
            local.tee 2
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 4
          i32.add
          local.get 3
          local.get 1
          i32.const 12
          i32.mul
          i32.add
          i32.store
          return
        end
        i32.const 0
        local.set 6
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      call 50
      unreachable
    end
    local.get 2
    local.get 6
    i32.const 12
    i32.mul
    i32.add
    local.set 4
    local.get 2
    local.get 3
    i32.const 12
    i32.mul
    i32.add
    local.tee 3
    local.set 6
    local.get 1
    local.set 2
    loop  ;; label = @1
      local.get 6
      i64.const 0
      i64.store align=4
      local.get 6
      i32.const 8
      i32.add
      i32.const 0
      i32.store
      local.get 6
      i32.const 12
      i32.add
      local.set 6
      local.get 2
      i32.const -1
      i32.add
      local.tee 2
      br_if 0 (;@1;)
    end
    local.get 3
    local.get 1
    i32.const 12
    i32.mul
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
        local.tee 2
        i32.eq
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          i32.const -4
          i32.add
          local.get 6
          i32.const -4
          i32.add
          local.tee 1
          i32.load
          i32.store
          local.get 3
          i32.const -12
          i32.add
          local.tee 3
          local.get 6
          i32.const -12
          i32.add
          local.tee 6
          i64.load align=4
          i64.store align=4
          local.get 6
          i64.const 0
          i64.store align=4
          local.get 1
          i32.const 0
          i32.store
          local.get 2
          local.get 6
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
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.set 1
    end
    local.get 0
    local.get 3
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
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const -12
          i32.add
          local.tee 6
          i32.load8_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const -4
          i32.add
          i32.load
          call 43
        end
        local.get 6
        local.set 2
        local.get 1
        local.get 6
        i32.ne
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call 43
    end)
  (func (;38;) (type 4) (param i32 i32) (result i32)
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
      i32.const 8292
      call 1
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
        call 39
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
    i32.const 8296
    call 1
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
  (func (;39;) (type 2) (param i32 i32)
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
              call 41
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
        call 50
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
      call 43
      return
    end)
  (func (;40;) (type 2) (param i32 i32)
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
              call 41
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
        call 50
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
      call 43
      return
    end)
  (func (;41;) (type 16) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      local.get 0
      select
      local.tee 1
      call 54
      local.tee 0
      br_if 0 (;@1;)
      loop  ;; label = @2
        i32.const 0
        local.set 0
        i32.const 0
        i32.load offset=8304
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call_indirect (type 1)
        local.get 1
        call 54
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;42;) (type 16) (param i32) (result i32)
    local.get 0
    call 41)
  (func (;43;) (type 7) (param i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 57
    end)
  (func (;44;) (type 7) (param i32)
    local.get 0
    call 43)
  (func (;45;) (type 7) (param i32)
    call 0
    unreachable)
  (func (;46;) (type 4) (param i32 i32) (result i32)
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
        call 41
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
    call 0
    unreachable)
  (func (;47;) (type 2) (param i32 i32)
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
                  call 41
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
          call 0
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
      call 43
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
  (func (;48;) (type 17) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      i32.const -17
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
            local.set 7
            i32.const -17
            local.set 8
            local.get 1
            i32.const 2147483622
            i32.le_u
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 0
          i32.load offset=8
          local.set 7
          i32.const -17
          local.set 8
          local.get 1
          i32.const 2147483622
          i32.gt_u
          br_if 1 (;@2;)
        end
        i32.const 11
        local.set 8
        local.get 1
        i32.const 1
        i32.shl
        local.tee 9
        local.get 2
        local.get 1
        i32.add
        local.tee 2
        local.get 2
        local.get 9
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
        local.set 8
      end
      local.get 8
      call 41
      local.set 2
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 7
        local.get 4
        call 4
        drop
      end
      block  ;; label = @2
        local.get 3
        local.get 5
        i32.sub
        local.get 4
        i32.sub
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.add
        local.get 6
        i32.add
        local.get 7
        local.get 4
        i32.add
        local.get 5
        i32.add
        local.get 3
        call 4
        drop
      end
      block  ;; label = @2
        local.get 1
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 7
        call 43
      end
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 8
      i32.const 1
      i32.or
      i32.store
      return
    end
    call 0
    unreachable)
  (func (;49;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load8_u
                local.tee 2
                i32.const 1
                i32.and
                local.tee 3
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.load offset=4
                local.tee 2
                local.get 0
                i32.load
                i32.const -2
                i32.and
                i32.const -1
                i32.add
                local.tee 4
                i32.eq
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              i32.const 10
              local.set 4
              local.get 2
              i32.const 1
              i32.shr_u
              local.tee 2
              i32.const 10
              i32.ne
              br_if 1 (;@4;)
            end
            local.get 0
            local.get 4
            i32.const 1
            local.get 4
            local.get 4
            i32.const 0
            i32.const 0
            call 48
            local.get 0
            i32.load8_u
            i32.const 1
            i32.and
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        i32.store offset=4
        local.get 0
        i32.load offset=8
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      i32.const 1
      i32.shl
      i32.const 2
      i32.add
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.set 0
    end
    local.get 0
    local.get 2
    i32.add
    local.tee 0
    i32.const 0
    i32.store8 offset=1
    local.get 0
    local.get 1
    i32.store8)
  (func (;50;) (type 7) (param i32)
    call 0
    unreachable)
  (func (;51;) (type 7) (param i32))
  (func (;52;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 3
          local.get 1
          i32.load8_u
          local.tee 4
          i32.ne
          br_if 2 (;@1;)
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
        end
      end
      i32.const 0
      return
    end
    local.get 3
    local.get 4
    i32.sub)
  (func (;53;) (type 16) (param i32) (result i32)
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
  (func (;54;) (type 16) (param i32) (result i32)
    i32.const 8316
    local.get 0
    call 55)
  (func (;55;) (type 4) (param i32 i32) (result i32)
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
              call 56
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
            i32.const 16712
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
  (func (;56;) (type 16) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8388
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=8308
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=8312
        local.set 2
        br 1 (;@1;)
      end
      memory.size
      local.set 2
      i32.const 0
      i32.const 1
      i32.store8 offset=8308
      i32.const 0
      local.get 2
      i32.const 16
      i32.shl
      local.tee 2
      i32.store offset=8312
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
            i32.load offset=8312
            local.set 3
          end
          i32.const 0
          local.set 5
          i32.const 0
          local.get 3
          i32.store offset=8312
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
            i32.load8_u offset=8308
            br_if 0 (;@4;)
            memory.size
            local.set 3
            i32.const 0
            i32.const 1
            i32.store8 offset=8308
            i32.const 0
            local.get 3
            i32.const 16
            i32.shl
            local.tee 3
            i32.store offset=8312
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
            i32.load offset=8312
            local.set 6
          end
          i32.const 0
          local.get 6
          local.get 7
          i32.add
          i32.store offset=8312
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
  (func (;57;) (type 7) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=16700
        local.tee 1
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 16508
        local.set 2
        local.get 1
        i32.const 12
        i32.mul
        i32.const 16508
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
  (global (;1;) i32 (i32.const 16798))
  (global (;2;) i32 (i32.const 16798))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "apply" (func 30))
  (export "_ZdlPv" (func 43))
  (export "_Znwj" (func 41))
  (export "_Znaj" (func 42))
  (export "_ZdaPv" (func 44))
  (elem (;0;) (i32.const 1) func 31)
  (data (;0;) (i32.const 8192) "0123456789abcdef\00")
  (data (;1;) (i32.const 8209) "onerror action's are only valid from the \22eosio\22 system account\00")
  (data (;2;) (i32.const 8273) "VALID: \00")
  (data (;3;) (i32.const 8281) "true\00")
  (data (;4;) (i32.const 8286) "false\00")
  (data (;5;) (i32.const 8292) "get\00")
  (data (;6;) (i32.const 8296) "read\00")
  (data (;7;) (i32.const 16712) "malloc_from_freed was designed to only be called after _heap was completely allocated\00"))
