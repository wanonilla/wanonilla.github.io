(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i64 i32)))
  (type (;2;) (func (param i32 i64 i64)))
  (type (;3;) (func (param i32 i64 i64 i32 i32)))
  (type (;4;) (func (param i32 i64 i64 i64 i32)))
  (type (;5;) (func (param i32 i64 i32 i32 i32 i32)))
  (type (;6;) (func (param i64)))
  (type (;7;) (func (param i64) (result i32)))
  (type (;8;) (func (param i32 i32)))
  (type (;9;) (func (param i64 i64 i64 i64) (result i32)))
  (type (;10;) (func (result i64)))
  (type (;11;) (func (param i32 i32 i32) (result i32)))
  (type (;12;) (func (param i64 i64 i64 i64 i32 i32) (result i32)))
  (type (;13;) (func (param i64 i64 i64 i64 i32) (result i32)))
  (type (;14;) (func (param i32 f32)))
  (type (;15;) (func (param i32 i64 i64 i64 i64)))
  (type (;16;) (func (param i32 f64)))
  (type (;17;) (func (param i64 i64) (result f64)))
  (type (;18;) (func (param i64 i64) (result f32)))
  (type (;19;) (func (param i64 i64) (result i32)))
  (type (;20;) (func (param i64 i64 i64 i32 i64) (result i32)))
  (type (;21;) (func (param i32 i32) (result i32)))
  (type (;22;) (func (param i32)))
  (type (;23;) (func (param i32 i64 i32 i32)))
  (type (;24;) (func (result i32)))
  (type (;25;) (func (param i64 i64 i64 i32 i32) (result i32)))
  (type (;26;) (func (param i64 i64 i64) (result i32)))
  (type (;27;) (func (param i32) (result i32)))
  (type (;28;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;29;) (func (param i32 i32 i32 i32)))
  (type (;30;) (func (param i32 i64 i64 i32 i32 i32)))
  (type (;31;) (func (param i32 i64 i32 i64)))
  (type (;32;) (func (param i32 i32 i64 i32)))
  (type (;33;) (func (param i32 i32 i32)))
  (type (;34;) (func (param i64 i64 i32 i32)))
  (type (;35;) (func (param i64 i64 i64)))
  (type (;36;) (func (param i64 i64 i32) (result i32)))
  (import "env" "require_auth" (func (;0;) (type 6)))
  (import "env" "is_account" (func (;1;) (type 7)))
  (import "env" "eosio_assert" (func (;2;) (type 8)))
  (import "env" "db_find_i64" (func (;3;) (type 9)))
  (import "env" "current_receiver" (func (;4;) (type 10)))
  (import "env" "abort" (func (;5;) (type 0)))
  (import "env" "memset" (func (;6;) (type 11)))
  (import "env" "db_store_i64" (func (;7;) (type 12)))
  (import "env" "db_idx64_store" (func (;8;) (type 13)))
  (import "env" "memcpy" (func (;9;) (type 11)))
  (import "env" "memmove" (func (;10;) (type 11)))
  (import "env" "__extendsftf2" (func (;11;) (type 14)))
  (import "env" "__floatsitf" (func (;12;) (type 8)))
  (import "env" "__multf3" (func (;13;) (type 15)))
  (import "env" "__floatunsitf" (func (;14;) (type 8)))
  (import "env" "__divtf3" (func (;15;) (type 15)))
  (import "env" "__addtf3" (func (;16;) (type 15)))
  (import "env" "__extenddftf2" (func (;17;) (type 16)))
  (import "env" "__eqtf2" (func (;18;) (type 9)))
  (import "env" "__letf2" (func (;19;) (type 9)))
  (import "env" "__netf2" (func (;20;) (type 9)))
  (import "env" "__subtf3" (func (;21;) (type 15)))
  (import "env" "__trunctfdf2" (func (;22;) (type 17)))
  (import "env" "__getf2" (func (;23;) (type 9)))
  (import "env" "__trunctfsf2" (func (;24;) (type 18)))
  (import "env" "prints_l" (func (;25;) (type 8)))
  (import "env" "__unordtf2" (func (;26;) (type 9)))
  (import "env" "__fixunstfsi" (func (;27;) (type 19)))
  (import "env" "__fixtfsi" (func (;28;) (type 19)))
  (import "env" "require_recipient" (func (;29;) (type 6)))
  (import "env" "db_idx64_find_primary" (func (;30;) (type 20)))
  (import "env" "db_idx64_next" (func (;31;) (type 21)))
  (import "env" "db_next_i64" (func (;32;) (type 21)))
  (import "env" "db_remove_i64" (func (;33;) (type 22)))
  (import "env" "db_update_i64" (func (;34;) (type 23)))
  (import "env" "action_data_size" (func (;35;) (type 24)))
  (import "env" "read_action_data" (func (;36;) (type 21)))
  (import "env" "db_get_i64" (func (;37;) (type 11)))
  (import "env" "db_idx64_update" (func (;38;) (type 1)))
  (import "env" "db_idx64_lowerbound" (func (;39;) (type 25)))
  (import "env" "send_inline" (func (;40;) (type 8)))
  (import "env" "db_lowerbound_i64" (func (;41;) (type 9)))
  (import "env" "db_previous_i64" (func (;42;) (type 21)))
  (import "env" "db_end_i64" (func (;43;) (type 26)))
  (import "env" "db_idx64_remove" (func (;44;) (type 22)))
  (func (;45;) (type 0)
    call 49)
  (func (;46;) (type 27) (param i32) (result i32)
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
  (func (;47;) (type 27) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.load offset=8204
            local.get 0
            i32.const 16
            i32.shr_u
            local.tee 1
            i32.add
            local.tee 2
            i32.store offset=8204
            i32.const 0
            i32.const 0
            i32.load offset=8196
            local.tee 3
            local.get 0
            i32.add
            i32.const 7
            i32.add
            i32.const -8
            i32.and
            local.tee 0
            i32.store offset=8196
            local.get 2
            i32.const 16
            i32.shl
            local.get 0
            i32.le_u
            br_if 1 (;@3;)
            local.get 1
            memory.grow
            i32.const -1
            i32.eq
            br_if 2 (;@2;)
            br 3 (;@1;)
          end
          i32.const 0
          return
        end
        i32.const 0
        local.get 2
        i32.const 1
        i32.add
        i32.store offset=8204
        local.get 1
        i32.const 1
        i32.add
        memory.grow
        i32.const -1
        i32.ne
        br_if 1 (;@1;)
      end
      i32.const 0
      i32.const 8220
      call 2
      local.get 3
      return
    end
    local.get 3)
  (func (;48;) (type 22) (param i32))
  (func (;49;) (type 0)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    i32.const 0
    i32.store offset=12
    i32.const 0
    local.get 0
    i32.load offset=12
    i32.load
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 0
    i32.store offset=8196
    i32.const 0
    local.get 0
    i32.store offset=8192
    i32.const 0
    memory.size
    i32.store offset=8204)
  (func (;50;) (type 24) (result i32)
    i32.const 8208)
  (func (;51;) (type 21) (param i32 i32) (result i32)
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
        call 47
        return
      end
      call 50
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
          call 47
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
          call 48
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
  (func (;52;) (type 11) (param i32 i32 i32) (result i32)
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
        call 51
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
    call 50
    i32.load)
  (func (;53;) (type 27) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      local.get 0
      select
      local.tee 1
      call 47
      local.tee 0
      br_if 0 (;@1;)
      loop  ;; label = @2
        i32.const 0
        local.set 0
        i32.const 0
        i32.load offset=8216
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call_indirect (type 0)
        local.get 1
        call 47
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;54;) (type 27) (param i32) (result i32)
    local.get 0
    call 53)
  (func (;55;) (type 22) (param i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 48
    end)
  (func (;56;) (type 22) (param i32)
    local.get 0
    call 55)
  (func (;57;) (type 21) (param i32 i32) (result i32)
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
      call 52
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 0
          i32.load offset=8216
          local.tee 0
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          call_indirect (type 0)
          local.get 2
          i32.const 12
          i32.add
          local.get 1
          local.get 3
          call 52
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
  (func (;58;) (type 21) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 57)
  (func (;59;) (type 8) (param i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 48
    end)
  (func (;60;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call 59)
  (func (;61;) (type 11) (param i32 i32 i32) (result i32)
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
  (func (;62;) (type 22) (param i32)
    call 5
    unreachable)
  (func (;63;) (type 21) (param i32 i32) (result i32)
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
        call 53
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
      call 9
      drop
      local.get 1
      local.get 2
      i32.add
      i32.const 0
      i32.store8
      local.get 0
      return
    end
    call 5
    unreachable)
  (func (;64;) (type 21) (param i32 i32) (result i32)
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
            call 65
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
      call 10
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
  (func (;65;) (type 28) (param i32 i32 i32 i32 i32 i32 i32 i32)
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
      call 53
      local.set 2
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 8
        local.get 4
        call 9
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
        call 9
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
        call 9
        drop
      end
      block  ;; label = @2
        local.get 1
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 8
        call 55
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
    call 5
    unreachable)
  (func (;66;) (type 8) (param i32 i32)
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
                  call 53
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
          call 5
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
      call 9
      drop
    end
    block  ;; label = @1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      call 55
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
  (func (;67;) (type 22) (param i32))
  (func (;68;) (type 22) (param i32)
    call 5
    unreachable)
  (func (;69;) (type 1) (param i32 i64 i32)
    (local i32 i32 i64 i32 i32 i64 i64 i64)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    i64.load
    call 0
    local.get 1
    call 1
    i32.const 8245
    call 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load8_u
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 2
              i32.const 1
              i32.add
              local.tee 4
              call 46
              local.tee 2
              i32.const 8
              i32.ge_u
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 2
            i32.load offset=8
            local.tee 4
            call 46
            local.tee 2
            i32.const 8
            i32.lt_u
            br_if 1 (;@3;)
          end
          i32.const 0
          i32.const 8969
          call 2
          br 1 (;@2;)
        end
        local.get 2
        br_if 0 (;@2;)
        i64.const 0
        local.set 5
        br 1 (;@1;)
      end
      i64.const 0
      local.set 5
      loop  ;; label = @2
        block  ;; label = @3
          local.get 4
          local.get 2
          i32.add
          i32.const -1
          i32.add
          local.tee 6
          i32.load8_u
          local.tee 7
          i32.const -65
          i32.add
          i32.const 255
          i32.and
          i32.const 26
          i32.lt_u
          br_if 0 (;@3;)
          i32.const 0
          i32.const 9014
          call 2
          local.get 6
          i32.load8_u
          local.set 7
        end
        local.get 5
        i64.const 8
        i64.shl
        local.get 7
        i64.extend_i32_u
        i64.const 56
        i64.shl
        i64.const 56
        i64.shr_s
        i64.or
        local.set 5
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 5
    i64.const 8
    i64.shl
    local.set 8
    i32.const 0
    local.set 2
    local.get 5
    i64.const 72057594037927935
    i64.and
    local.tee 9
    local.set 5
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
          local.set 10
          block  ;; label = @4
            local.get 5
            i64.const 65280
            i64.and
            i64.const 0
            i64.eq
            br_if 0 (;@4;)
            local.get 10
            local.set 5
            local.get 2
            local.tee 7
            i32.const 1
            i32.add
            local.set 2
            local.get 7
            i32.const 6
            i32.lt_s
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 10
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
            local.get 2
            i32.const 6
            i32.lt_s
            local.set 7
            local.get 2
            i32.const 1
            i32.add
            local.tee 6
            local.set 2
            local.get 7
            br_if 0 (;@4;)
          end
          local.get 6
          i32.const 1
          i32.add
          local.set 2
          local.get 6
          i32.const 6
          i32.lt_s
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      i32.const 8275
      call 2
    end
    i32.const 0
    local.set 2
    local.get 9
    local.set 5
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
          local.set 10
          block  ;; label = @4
            local.get 5
            i64.const 65280
            i64.and
            i64.const 0
            i64.eq
            br_if 0 (;@4;)
            local.get 10
            local.set 5
            i32.const 1
            local.set 7
            local.get 2
            local.tee 6
            i32.const 1
            i32.add
            local.set 2
            local.get 6
            i32.const 6
            i32.lt_s
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 10
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
            local.get 2
            i32.const 6
            i32.lt_s
            local.set 7
            local.get 2
            i32.const 1
            i32.add
            local.tee 6
            local.set 2
            local.get 7
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 7
          local.get 6
          i32.const 1
          i32.add
          local.set 2
          local.get 6
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
    i32.const 8275
    call 2
    i32.const 0
    local.set 2
    local.get 3
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i64.const -1
    i64.store offset=24
    local.get 3
    i64.const 0
    i64.store offset=32
    local.get 3
    i32.const 0
    i32.store8 offset=44
    local.get 3
    local.get 0
    i64.load
    local.tee 5
    i64.store offset=8
    local.get 3
    local.get 9
    i64.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        local.get 9
        i64.const -4157508551318700032
        local.get 9
        call 3
        local.tee 7
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        i32.const 8
        i32.add
        local.get 7
        call 70
        i32.load offset=24
        local.get 3
        i32.const 8
        i32.add
        i32.eq
        br_if 1 (;@1;)
        i32.const 0
        local.set 2
        i32.const 0
        i32.const 9067
        call 2
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
    end
    local.get 2
    i32.const 8295
    call 2
    local.get 0
    i64.load
    local.set 5
    block  ;; label = @1
      local.get 3
      i64.load offset=8
      call 4
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9146
      call 2
    end
    i32.const 40
    call 53
    local.tee 2
    local.get 3
    i32.const 8
    i32.add
    i32.store offset=24
    local.get 2
    local.get 8
    i64.store offset=8
    local.get 2
    i64.const 0
    i64.store
    local.get 2
    local.get 1
    i64.store offset=16
    local.get 3
    local.get 3
    i32.const 48
    i32.add
    i32.const 24
    i32.add
    i32.store offset=80
    local.get 3
    local.get 3
    i32.const 48
    i32.add
    i32.store offset=76
    local.get 3
    local.get 3
    i32.const 48
    i32.add
    i32.store offset=72
    local.get 3
    i32.const 72
    i32.add
    local.get 2
    call 71
    drop
    local.get 2
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.tee 7
    i64.load
    i64.const -4157508551318700032
    local.get 5
    local.get 2
    i64.load offset=8
    i64.const 8
    i64.shr_u
    local.tee 10
    local.get 3
    i32.const 48
    i32.add
    i32.const 24
    call 7
    i32.store offset=28
    block  ;; label = @1
      local.get 10
      local.get 3
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.tee 6
      i64.load
      i64.lt_u
      br_if 0 (;@1;)
      local.get 6
      local.get 10
      i64.const 1
      i64.add
      i64.store
    end
    local.get 2
    i32.const 8
    i32.add
    local.tee 6
    i64.load
    local.set 10
    local.get 7
    i64.load
    local.set 9
    local.get 3
    local.get 2
    i32.const 16
    i32.add
    i64.load
    i64.store offset=88
    local.get 2
    local.get 9
    i64.const -4157508551318700032
    local.get 5
    local.get 10
    i64.const 8
    i64.shr_u
    local.get 3
    i32.const 88
    i32.add
    call 8
    i32.store offset=32
    local.get 3
    local.get 2
    i32.store offset=72
    local.get 3
    local.get 6
    i64.load
    i64.const 8
    i64.shr_u
    local.tee 5
    i64.store offset=48
    local.get 3
    local.get 2
    i32.const 28
    i32.add
    i32.load
    local.tee 6
    i32.store offset=88
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 8
          i32.add
          i32.const 28
          i32.add
          local.tee 4
          i32.load
          local.tee 7
          local.get 3
          i32.const 40
          i32.add
          i32.load
          i32.ge_u
          br_if 0 (;@3;)
          local.get 7
          local.get 5
          i64.store offset=8
          local.get 7
          local.get 6
          i32.store offset=16
          local.get 3
          i32.const 0
          i32.store offset=72
          local.get 7
          local.get 2
          i32.store
          local.get 4
          local.get 7
          i32.const 24
          i32.add
          i32.store
          local.get 3
          i32.load offset=72
          local.set 2
          local.get 3
          i32.const 0
          i32.store offset=72
          local.get 2
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 3
        i32.const 32
        i32.add
        local.get 3
        i32.const 72
        i32.add
        local.get 3
        i32.const 48
        i32.add
        local.get 3
        i32.const 88
        i32.add
        call 72
        local.get 3
        i32.load offset=72
        local.set 2
        local.get 3
        i32.const 0
        i32.store offset=72
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      call 55
    end
    block  ;; label = @1
      local.get 3
      i32.load offset=32
      local.tee 6
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 36
          i32.add
          local.tee 4
          i32.load
          local.tee 2
          local.get 6
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 2
            i32.const -24
            i32.add
            local.tee 2
            i32.load
            local.set 7
            local.get 2
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 7
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              call 55
            end
            local.get 6
            local.get 2
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const 32
          i32.add
          i32.load
          local.set 2
          br 1 (;@2;)
        end
        local.get 6
        local.set 2
      end
      local.get 4
      local.get 6
      i32.store
      local.get 2
      call 55
    end
    local.get 3
    i32.const 96
    i32.add
    global.set 0)
  (func (;70;) (type 21) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
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
      i32.const 32
      i32.add
      global.set 0
      local.get 5
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 0
          i32.const 0
          call 37
          local.tee 4
          i32.const -1
          i32.le_s
          br_if 0 (;@3;)
          local.get 4
          i32.const 513
          i32.ge_u
          br_if 1 (;@2;)
          local.get 2
          local.get 4
          i32.const 15
          i32.add
          i32.const -16
          i32.and
          i32.sub
          local.tee 2
          global.set 0
          i32.const 0
          local.set 6
          br 2 (;@1;)
        end
        i32.const 0
        i32.const 9118
        call 2
      end
      local.get 4
      call 47
      local.set 2
      i32.const 1
      local.set 6
    end
    local.get 1
    local.get 2
    local.get 4
    call 37
    drop
    i32.const 40
    call 53
    local.tee 5
    i64.const 0
    i64.store offset=8
    local.get 5
    i64.const 0
    i64.store
    local.get 5
    i64.const 0
    i64.store offset=16
    local.get 5
    local.get 0
    i32.store offset=24
    block  ;; label = @1
      local.get 4
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
    end
    local.get 5
    local.get 2
    i32.const 8
    call 9
    drop
    local.get 3
    i64.const 0
    i64.store offset=24
    local.get 2
    i32.const 8
    i32.add
    local.set 7
    block  ;; label = @1
      local.get 4
      i32.const -8
      i32.and
      local.tee 4
      i32.const 8
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
    end
    local.get 5
    i32.const 16
    i32.add
    local.set 8
    local.get 3
    i32.const 24
    i32.add
    local.get 7
    i32.const 8
    call 9
    drop
    local.get 5
    i32.const 8
    i32.add
    local.get 3
    i64.load offset=24
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.set 7
    block  ;; label = @1
      local.get 4
      i32.const 16
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
    end
    local.get 8
    local.get 7
    i32.const 8
    call 9
    drop
    local.get 5
    i32.const -1
    i32.store offset=32
    local.get 5
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 5
    i32.store offset=16
    local.get 3
    local.get 5
    i32.const 8
    i32.add
    i64.load
    i64.const 8
    i64.shr_u
    local.tee 9
    i64.store offset=24
    local.get 3
    local.get 1
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 28
          i32.add
          local.tee 7
          i32.load
          local.tee 4
          local.get 0
          i32.const 32
          i32.add
          i32.load
          i32.ge_u
          br_if 0 (;@3;)
          local.get 4
          local.get 9
          i64.store offset=8
          local.get 4
          local.get 1
          i32.store offset=16
          local.get 3
          i32.const 0
          i32.store offset=16
          local.get 4
          local.get 5
          i32.store
          local.get 7
          local.get 4
          i32.const 24
          i32.add
          i32.store
          local.get 6
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i32.const 24
        i32.add
        local.get 3
        i32.const 16
        i32.add
        local.get 3
        i32.const 24
        i32.add
        local.get 3
        i32.const 12
        i32.add
        call 72
        local.get 6
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      call 48
    end
    local.get 3
    i32.load offset=16
    local.set 1
    local.get 3
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call 55
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 5)
  (func (;71;) (type 21) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.get 0
      i32.load offset=4
      local.tee 3
      i32.sub
      i32.const 7
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9197
      call 2
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.set 3
    end
    local.get 3
    local.get 1
    i32.const 8
    call 9
    drop
    local.get 0
    i32.const 4
    i32.add
    local.tee 3
    local.get 3
    i32.load
    i32.const 8
    i32.add
    local.tee 4
    i32.store
    local.get 2
    local.get 1
    i64.load offset=8
    i64.store offset=8
    block  ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.tee 5
      i32.load
      local.get 4
      i32.sub
      i32.const 7
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9197
      call 2
      local.get 3
      i32.load
      local.set 4
    end
    local.get 1
    i32.const 16
    i32.add
    local.set 6
    local.get 4
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    call 9
    drop
    local.get 3
    local.get 3
    i32.load
    i32.const 8
    i32.add
    local.tee 1
    i32.store
    block  ;; label = @1
      local.get 5
      i32.load
      local.get 1
      i32.sub
      i32.const 7
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9197
      call 2
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.set 1
    end
    local.get 1
    local.get 6
    i32.const 8
    call 9
    drop
    local.get 0
    i32.const 4
    i32.add
    local.tee 3
    local.get 3
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;72;) (type 29) (param i32 i32 i32 i32)
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
          call 53
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
      call 68
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
          call 55
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
      call 55
    end)
  (func (;73;) (type 5) (param i32 i64 i32 i32 i32 i32)
    (local i32 i32 i64 i64 i64 i64 i32 i32 i32 i64 i32 i32 i32)
    global.get 0
    i32.const 176
    i32.sub
    local.tee 6
    global.set 0
    local.get 1
    call 1
    i32.const 8328
    call 2
    i32.const 0
    local.set 7
    local.get 2
    i64.load offset=8
    local.tee 8
    i64.const 8
    i64.shr_u
    local.tee 9
    local.set 10
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
            local.set 12
            local.get 7
            local.tee 13
            i32.const 1
            i32.add
            local.set 7
            local.get 13
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
            local.get 7
            i32.const 6
            i32.lt_s
            local.set 12
            local.get 7
            i32.const 1
            i32.add
            local.tee 13
            local.set 7
            local.get 12
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 12
          local.get 13
          i32.const 1
          i32.add
          local.set 7
          local.get 13
          i32.const 6
          i32.lt_s
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      local.set 12
    end
    local.get 12
    i32.const 8275
    call 2
    local.get 8
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.eqz
    i32.const 8354
    call 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.load8_u
        local.tee 7
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 7
        i32.const 1
        i32.shr_u
        local.set 7
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=4
      local.set 7
    end
    local.get 7
    i32.const 257
    i32.lt_u
    i32.const 8386
    call 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load8_u
        local.tee 7
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 7
        i32.const 1
        i32.shr_u
        local.set 7
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=4
      local.set 7
    end
    local.get 7
    i32.const 33
    i32.lt_u
    i32.const 8415
    call 2
    i32.const 0
    local.set 12
    local.get 6
    i32.const 168
    i32.add
    i32.const 0
    i32.store
    local.get 6
    i64.const -1
    i64.store offset=152
    local.get 6
    i64.const 0
    i64.store offset=160
    local.get 6
    i32.const 0
    i32.store8 offset=172
    local.get 6
    local.get 0
    i64.load
    local.tee 10
    i64.store offset=136
    local.get 6
    local.get 9
    i64.store offset=144
    i32.const 0
    local.set 14
    block  ;; label = @1
      local.get 10
      local.get 9
      i64.const -4157508551318700032
      local.get 9
      call 3
      local.tee 7
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 6
      i32.const 136
      i32.add
      local.get 7
      call 70
      local.tee 14
      i32.load offset=24
      local.get 6
      i32.const 136
      i32.add
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9067
      call 2
    end
    local.get 14
    i32.const 0
    i32.ne
    i32.const 8443
    call 2
    local.get 14
    i64.load offset=16
    call 0
    block  ;; label = @1
      local.get 2
      i64.load
      local.tee 15
      i64.const 4611686018427387903
      i64.add
      i64.const 9223372036854775806
      i64.gt_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 7
      local.get 9
      local.set 10
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
            local.set 12
            local.get 7
            local.tee 13
            i32.const 1
            i32.add
            local.set 7
            local.get 13
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
            local.get 7
            i32.const 6
            i32.lt_s
            local.set 12
            local.get 7
            i32.const 1
            i32.add
            local.tee 13
            local.set 7
            local.get 12
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 12
          local.get 13
          i32.const 1
          i32.add
          local.set 7
          local.get 13
          i32.const 6
          i32.lt_s
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      local.set 12
    end
    local.get 12
    i32.const 8503
    call 2
    local.get 15
    i64.const 0
    i64.gt_s
    i32.const 8520
    call 2
    local.get 8
    local.get 14
    i64.load offset=8
    i64.eq
    i32.const 8556
    call 2
    local.get 6
    i32.const 120
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    local.tee 16
    i64.load
    local.tee 11
    i64.store
    local.get 2
    i64.load
    local.set 10
    local.get 6
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.get 11
    i64.store
    local.get 6
    local.get 10
    i64.store offset=40
    local.get 6
    local.get 10
    i64.store offset=120
    local.get 0
    local.get 6
    i32.const 40
    i32.add
    call 74
    local.get 15
    local.get 3
    i32.load offset=4
    local.get 3
    i32.load
    i32.sub
    i32.const 12
    i32.div_s
    i64.extend_i32_u
    i64.eq
    i32.const 8582
    call 2
    block  ;; label = @1
      local.get 3
      i32.load
      local.tee 5
      local.get 3
      i32.load offset=4
      local.tee 17
      i32.eq
      br_if 0 (;@1;)
      local.get 14
      i32.const 16
      i32.add
      local.set 18
      local.get 6
      i32.const 104
      i32.add
      i32.const 8
      i32.add
      local.set 3
      loop  ;; label = @2
        local.get 18
        i64.load
        local.set 15
        local.get 3
        local.get 8
        i64.store
        local.get 6
        i64.const 1
        i64.store offset=104
        i32.const 0
        local.set 7
        local.get 9
        local.set 10
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 10
              i32.wrap_i64
              i32.const 24
              i32.shl
              i32.const -1073741825
              i32.add
              i32.const 452984830
              i32.gt_u
              br_if 1 (;@4;)
              local.get 10
              i64.const 8
              i64.shr_u
              local.set 11
              block  ;; label = @6
                local.get 10
                i64.const 65280
                i64.and
                i64.const 0
                i64.eq
                br_if 0 (;@6;)
                local.get 11
                local.set 10
                local.get 7
                local.tee 12
                i32.const 1
                i32.add
                local.set 7
                local.get 12
                i32.const 6
                i32.lt_s
                br_if 1 (;@5;)
                br 3 (;@3;)
              end
              local.get 11
              local.set 10
              loop  ;; label = @6
                local.get 10
                i64.const 65280
                i64.and
                i64.const 0
                i64.ne
                br_if 2 (;@4;)
                local.get 10
                i64.const 8
                i64.shr_u
                local.set 10
                local.get 7
                i32.const 6
                i32.lt_s
                local.set 12
                local.get 7
                i32.const 1
                i32.add
                local.tee 13
                local.set 7
                local.get 12
                br_if 0 (;@6;)
              end
              local.get 13
              i32.const 1
              i32.add
              local.set 7
              local.get 13
              i32.const 6
              i32.lt_s
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          i32.const 0
          i32.const 8275
          call 2
        end
        local.get 6
        i32.const 88
        i32.add
        local.get 5
        call 63
        local.set 7
        local.get 6
        i32.const 72
        i32.add
        local.get 4
        call 63
        local.set 12
        local.get 6
        i32.const 24
        i32.add
        i32.const 8
        i32.add
        local.get 3
        i64.load
        i64.store
        local.get 6
        local.get 6
        i64.load offset=104
        i64.store offset=24
        local.get 0
        local.get 1
        local.get 15
        local.get 6
        i32.const 24
        i32.add
        local.get 7
        local.get 12
        call 75
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.load8_u offset=72
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 6
              i32.load8_u offset=88
              i32.const 1
              i32.and
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 6
            i32.const 72
            i32.add
            i32.const 8
            i32.add
            i32.load
            call 55
            local.get 6
            i32.load8_u offset=88
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 6
          i32.const 88
          i32.add
          i32.const 8
          i32.add
          i32.load
          call 55
          local.get 5
          i32.const 12
          i32.add
          local.tee 5
          local.get 17
          i32.ne
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 5
        i32.const 12
        i32.add
        local.tee 5
        local.get 17
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 6
    i32.const 56
    i32.add
    i32.const 8
    i32.add
    local.get 16
    i64.load
    local.tee 10
    i64.store
    local.get 6
    local.get 2
    i64.load
    local.tee 11
    i64.store offset=56
    local.get 14
    i32.const 16
    i32.add
    i64.load
    local.set 15
    local.get 6
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 10
    i64.store
    local.get 6
    local.get 11
    i64.store offset=8
    local.get 0
    local.get 1
    local.get 6
    i32.const 8
    i32.add
    local.get 15
    call 76
    block  ;; label = @1
      local.get 6
      i32.load offset=160
      local.tee 13
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 164
          i32.add
          local.tee 5
          i32.load
          local.tee 7
          local.get 13
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 7
            i32.const -24
            i32.add
            local.tee 7
            i32.load
            local.set 12
            local.get 7
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 12
              i32.eqz
              br_if 0 (;@5;)
              local.get 12
              call 55
            end
            local.get 13
            local.get 7
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 6
          i32.const 160
          i32.add
          i32.load
          local.set 7
          br 1 (;@2;)
        end
        local.get 13
        local.set 7
      end
      local.get 5
      local.get 13
      i32.store
      local.get 7
      call 55
    end
    local.get 6
    i32.const 176
    i32.add
    global.set 0)
  (func (;74;) (type 8) (param i32 i32)
    (local i32 i64 i32 i64 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i64.load offset=8
    local.set 3
    i32.const 0
    local.set 4
    local.get 2
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i64.const -1
    i64.store offset=24
    local.get 2
    i64.const 0
    i64.store offset=32
    local.get 2
    i32.const 0
    i32.store8 offset=44
    local.get 2
    local.get 0
    i64.load
    local.tee 5
    i64.store offset=8
    local.get 2
    local.get 3
    i64.const 8
    i64.shr_u
    local.tee 3
    i64.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        local.get 3
        i64.const -4157508551318700032
        local.get 3
        call 3
        local.tee 0
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 2
          i32.const 8
          i32.add
          local.get 0
          call 70
          local.tee 4
          i32.load offset=24
          local.get 2
          i32.const 8
          i32.add
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          i32.const 9067
          call 2
        end
        local.get 2
        local.get 1
        i32.store
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store
      i32.const 0
      i32.const 9207
      call 2
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 4
    i64.const 0
    local.get 2
    call 77
    block  ;; label = @1
      local.get 2
      i32.load offset=32
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 36
          i32.add
          local.tee 6
          i32.load
          local.tee 1
          local.get 0
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 1
            i32.const -24
            i32.add
            local.tee 1
            i32.load
            local.set 4
            local.get 1
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              call 55
            end
            local.get 0
            local.get 1
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 2
          i32.const 32
          i32.add
          i32.load
          local.set 1
          br 1 (;@2;)
        end
        local.get 0
        local.set 1
      end
      local.get 6
      local.get 0
      i32.store
      local.get 1
      call 55
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;75;) (type 30) (param i32 i64 i64 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    local.get 1
    i64.store offset=32
    local.get 6
    local.get 4
    i32.store offset=12
    local.get 6
    local.get 0
    i32.store offset=8
    local.get 6
    local.get 3
    i32.store offset=20
    local.get 6
    local.get 5
    i32.store offset=24
    local.get 6
    local.get 6
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 6
    local.get 2
    i64.store offset=72
    local.get 0
    i32.const 32
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 0
      i64.load offset=32
      call 4
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9146
      call 2
    end
    local.get 6
    local.get 3
    i32.store offset=48
    local.get 6
    local.get 6
    i32.const 8
    i32.add
    i32.store offset=52
    local.get 6
    local.get 6
    i32.const 72
    i32.add
    i32.store offset=56
    i32.const 80
    call 53
    local.tee 5
    i32.const 0
    i32.store offset=16
    local.get 5
    i64.const 0
    i64.store offset=8 align=4
    local.get 5
    i64.const 0
    i64.store offset=24
    local.get 5
    i64.const 0
    i64.store offset=32
    local.get 5
    i64.const 0
    i64.store offset=40
    local.get 5
    i64.const 0
    i64.store offset=48 align=4
    local.get 5
    i32.const 0
    i32.store offset=56
    local.get 5
    local.get 3
    i32.store offset=60
    local.get 6
    i32.const 48
    i32.add
    local.get 5
    call 78
    local.get 6
    local.get 5
    i32.store offset=64
    local.get 6
    local.get 5
    i64.load
    local.tee 2
    i64.store offset=48
    local.get 6
    local.get 5
    i32.load offset=64
    local.tee 4
    i32.store offset=44
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 60
          i32.add
          local.tee 7
          i32.load
          local.tee 3
          local.get 0
          i32.const 64
          i32.add
          i32.load
          i32.ge_u
          br_if 0 (;@3;)
          local.get 3
          local.get 2
          i64.store offset=8
          local.get 3
          local.get 4
          i32.store offset=16
          local.get 6
          i32.const 0
          i32.store offset=64
          local.get 3
          local.get 5
          i32.store
          local.get 7
          local.get 3
          i32.const 24
          i32.add
          i32.store
          local.get 6
          i32.load offset=64
          local.set 5
          local.get 6
          i32.const 0
          i32.store offset=64
          local.get 5
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i32.const 56
        i32.add
        local.get 6
        i32.const 64
        i32.add
        local.get 6
        i32.const 48
        i32.add
        local.get 6
        i32.const 44
        i32.add
        call 79
        local.get 6
        i32.load offset=64
        local.set 5
        local.get 6
        i32.const 0
        i32.store offset=64
        local.get 5
        br_if 1 (;@1;)
      end
      local.get 6
      i32.const 80
      i32.add
      global.set 0
      return
    end
    block  ;; label = @1
      local.get 5
      i32.load8_u offset=48
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.const 56
      i32.add
      i32.load
      call 55
    end
    block  ;; label = @1
      local.get 5
      i32.load8_u offset=8
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.const 16
      i32.add
      i32.load
      call 55
    end
    local.get 5
    call 55
    local.get 6
    i32.const 80
    i32.add
    global.set 0)
  (func (;76;) (type 31) (param i32 i64 i32 i64)
    (local i32 i64 i64 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 32
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i64.const -1
    i64.store offset=16
    local.get 4
    i64.const 0
    i64.store offset=24
    local.get 4
    local.get 0
    i64.load
    local.tee 5
    i64.store
    local.get 2
    i64.load offset=8
    local.set 6
    local.get 4
    local.get 1
    i64.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          local.get 1
          i64.const 3607749779137757184
          local.get 6
          i64.const 8
          i64.shr_u
          call 3
          local.tee 7
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 4
            local.get 7
            call 80
            local.tee 7
            i32.load offset=16
            local.get 4
            i32.eq
            br_if 0 (;@4;)
            i32.const 0
            i32.const 9067
            call 2
          end
          local.get 0
          i64.load
          local.set 1
          local.get 4
          local.get 2
          i32.store offset=48
          local.get 4
          local.get 7
          local.get 1
          local.get 4
          i32.const 48
          i32.add
          call 81
          local.get 4
          i32.load offset=24
          local.tee 7
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 5
          call 4
          i64.eq
          br_if 0 (;@3;)
          i32.const 0
          i32.const 9146
          call 2
        end
        i32.const 32
        call 53
        local.tee 0
        local.get 4
        i32.store offset=16
        local.get 0
        local.get 2
        i32.const 8
        i32.add
        i64.load
        i64.store offset=8
        local.get 0
        local.get 2
        i64.load
        i64.store
        local.get 4
        i32.const 48
        i32.add
        local.get 0
        i32.const 8
        call 9
        drop
        local.get 4
        local.get 0
        i64.load offset=8
        i64.store offset=72
        local.get 4
        i32.const 48
        i32.add
        i32.const 8
        i32.or
        local.get 4
        i32.const 72
        i32.add
        i32.const 8
        call 9
        drop
        local.get 0
        local.get 4
        i32.const 8
        i32.add
        i64.load
        i64.const 3607749779137757184
        local.get 3
        local.get 0
        i64.load offset=8
        i64.const 8
        i64.shr_u
        local.tee 1
        local.get 4
        i32.const 48
        i32.add
        i32.const 16
        call 7
        local.tee 7
        i32.store offset=20
        block  ;; label = @3
          local.get 1
          local.get 4
          i32.const 16
          i32.add
          local.tee 2
          i64.load
          i64.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i64.const 1
          i64.add
          i64.store
        end
        local.get 4
        local.get 0
        i32.store offset=72
        local.get 4
        local.get 0
        i32.const 8
        i32.add
        i64.load
        i64.const 8
        i64.shr_u
        local.tee 1
        i64.store offset=48
        local.get 4
        local.get 7
        i32.store offset=44
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 28
              i32.add
              local.tee 8
              i32.load
              local.tee 2
              local.get 4
              i32.const 32
              i32.add
              i32.load
              i32.ge_u
              br_if 0 (;@5;)
              local.get 2
              local.get 1
              i64.store offset=8
              local.get 2
              local.get 7
              i32.store offset=16
              local.get 4
              i32.const 0
              i32.store offset=72
              local.get 2
              local.get 0
              i32.store
              local.get 8
              local.get 2
              i32.const 24
              i32.add
              i32.store
              local.get 4
              i32.load offset=72
              local.set 0
              local.get 4
              i32.const 0
              i32.store offset=72
              local.get 0
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 4
            i32.const 24
            i32.add
            local.get 4
            i32.const 72
            i32.add
            local.get 4
            i32.const 48
            i32.add
            local.get 4
            i32.const 44
            i32.add
            call 82
            local.get 4
            i32.load offset=72
            local.set 0
            local.get 4
            i32.const 0
            i32.store offset=72
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 0
          call 55
        end
        local.get 4
        i32.load offset=24
        local.tee 7
        i32.eqz
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 28
          i32.add
          local.tee 8
          i32.load
          local.tee 0
          local.get 7
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
              call 55
            end
            local.get 7
            local.get 0
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 4
          i32.const 24
          i32.add
          i32.load
          local.set 0
          br 1 (;@2;)
        end
        local.get 7
        local.set 0
      end
      local.get 8
      local.get 7
      i32.store
      local.get 0
      call 55
    end
    local.get 4
    i32.const 80
    i32.add
    global.set 0)
  (func (;77;) (type 32) (param i32 i32 i64 i32)
    (local i32 i32 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    local.set 5
    local.get 4
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=24
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9242
      call 2
    end
    block  ;; label = @1
      local.get 0
      i64.load
      call 4
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9288
      call 2
    end
    local.get 5
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store offset=24
    block  ;; label = @1
      local.get 3
      i32.load
      local.tee 3
      i64.load offset=8
      local.get 1
      i64.load offset=8
      local.tee 6
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9855
      call 2
    end
    local.get 1
    local.get 1
    i64.load
    local.get 3
    i64.load
    i64.add
    local.tee 7
    i64.store
    block  ;; label = @1
      local.get 7
      i64.const -4611686018427387904
      i64.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9898
      call 2
      local.get 1
      i64.load
      local.set 7
    end
    local.get 6
    i64.const 8
    i64.shr_u
    local.set 6
    block  ;; label = @1
      local.get 7
      i64.const 4611686018427387904
      i64.lt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9917
      call 2
    end
    block  ;; label = @1
      local.get 6
      local.get 1
      i32.const 8
      i32.add
      i64.load
      i64.const 8
      i64.shr_u
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9339
      call 2
    end
    local.get 4
    local.tee 3
    i32.const -32
    i32.add
    local.tee 4
    global.set 0
    local.get 5
    local.get 4
    i32.store offset=12
    local.get 5
    local.get 4
    i32.store offset=8
    local.get 5
    local.get 3
    i32.const -8
    i32.add
    i32.store offset=16
    local.get 5
    i32.const 8
    i32.add
    local.get 1
    call 71
    drop
    local.get 1
    i32.load offset=28
    local.get 2
    local.get 4
    i32.const 24
    call 34
    block  ;; label = @1
      local.get 6
      local.get 0
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      local.get 6
      i64.const 1
      i64.add
      i64.store
    end
    local.get 5
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store offset=40
    block  ;; label = @1
      local.get 5
      i32.const 24
      i32.add
      local.get 5
      i32.const 40
      i32.add
      i32.const 8
      call 61
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 32
        i32.add
        local.tee 4
        i32.load
        local.tee 1
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        i64.load
        local.get 0
        i64.load offset=8
        i64.const -4157508551318700032
        local.get 5
        i32.const 32
        i32.add
        local.get 6
        call 30
        local.tee 1
        i32.store
      end
      local.get 1
      local.get 2
      local.get 5
      i32.const 40
      i32.add
      call 38
    end
    local.get 5
    i32.const 48
    i32.add
    global.set 0)
  (func (;78;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    local.set 3
    local.get 2
    global.set 0
    local.get 0
    i32.load
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 5
            i32.load
            local.tee 6
            i32.const 48
            i32.add
            i64.load
            local.tee 7
            i64.const -1
            i64.eq
            br_if 0 (;@4;)
            local.get 7
            i64.const -2
            i64.ge_u
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          i64.const 0
          local.set 7
          local.get 6
          i32.const 32
          i32.add
          local.tee 8
          i64.load
          local.get 6
          i32.const 40
          i32.add
          i64.load
          i64.const -3665743729458675712
          i64.const 0
          call 41
          local.tee 9
          i32.const -1
          i32.le_s
          br_if 1 (;@2;)
          local.get 8
          local.get 9
          call 84
          drop
          local.get 3
          i32.const 0
          i32.store offset=28
          local.get 3
          local.get 8
          i32.store offset=24
          local.get 6
          i32.const 48
          i32.add
          i64.const -2
          local.get 3
          i32.const 24
          i32.add
          call 121
          i32.load offset=4
          i64.load
          local.tee 7
          i64.const 1
          i64.add
          local.get 7
          i64.const -3
          i64.gt_u
          select
          local.tee 7
          i64.store
          local.get 7
          i64.const -2
          i64.lt_u
          br_if 2 (;@1;)
        end
        i32.const 0
        i32.const 9428
        call 2
        local.get 6
        i32.const 48
        i32.add
        i64.load
        local.set 7
        br 1 (;@1;)
      end
      local.get 6
      i32.const 48
      i32.add
      i64.const 0
      i64.store
    end
    local.get 1
    local.get 7
    i64.store
    local.get 1
    i32.const 8
    i32.add
    local.tee 8
    local.get 5
    i32.load offset=4
    call 64
    drop
    local.get 1
    local.get 5
    i32.load offset=8
    i64.load
    i64.store offset=24
    local.get 1
    i32.const 40
    i32.add
    local.get 5
    i32.load offset=12
    local.tee 6
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 1
    local.get 6
    i64.load
    i64.store offset=32
    local.get 1
    i32.const 48
    i32.add
    local.tee 9
    local.get 5
    i32.load offset=16
    call 64
    drop
    local.get 1
    i32.const 12
    i32.add
    i32.load
    local.get 1
    i32.load8_u offset=8
    local.tee 5
    i32.const 1
    i32.shr_u
    local.get 5
    i32.const 1
    i32.and
    select
    local.tee 6
    i32.const 32
    i32.add
    local.set 5
    local.get 6
    i64.extend_i32_u
    local.set 7
    local.get 1
    i32.const 32
    i32.add
    local.set 10
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
    local.get 1
    i32.const 52
    i32.add
    i32.load
    local.get 1
    i32.const 48
    i32.add
    i32.load8_u
    local.tee 6
    i32.const 1
    i32.shr_u
    local.get 6
    i32.const 1
    i32.and
    select
    local.tee 6
    local.get 5
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
        call 47
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
    local.get 3
    i32.store offset=16
    local.get 3
    local.get 8
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 1
    i32.const 24
    i32.add
    i32.store offset=32
    local.get 3
    local.get 10
    i32.store offset=36
    local.get 3
    local.get 9
    i32.store offset=40
    local.get 3
    i32.const 24
    i32.add
    local.get 3
    i32.const 16
    i32.add
    call 115
    local.get 1
    local.get 4
    i64.load offset=8
    i64.const -3665743729458675712
    local.get 0
    i32.load offset=8
    i64.load
    local.get 1
    i64.load
    local.tee 7
    local.get 6
    local.get 5
    call 7
    i32.store offset=64
    block  ;; label = @1
      local.get 5
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 6
      call 48
    end
    block  ;; label = @1
      local.get 7
      local.get 4
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
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
    end
    local.get 4
    i32.const 8
    i32.add
    local.tee 5
    i64.load
    local.set 7
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.tee 6
    i64.load
    local.set 11
    local.get 1
    i64.load
    local.set 12
    local.get 3
    local.get 1
    i32.const 24
    i32.add
    i64.load
    i64.store offset=24
    local.get 1
    local.get 7
    i64.const -3665743729458675712
    local.get 11
    local.get 12
    local.get 3
    i32.const 24
    i32.add
    call 8
    i32.store offset=68
    local.get 6
    i64.load
    local.set 7
    local.get 5
    i64.load
    local.set 11
    local.get 1
    i64.load
    local.set 12
    local.get 3
    local.get 1
    i32.const 40
    i32.add
    i64.load
    i64.const 8
    i64.shr_u
    i64.store offset=24
    local.get 1
    i32.const 72
    i32.add
    local.get 11
    i64.const -3665743729458675711
    local.get 7
    local.get 12
    local.get 3
    i32.const 24
    i32.add
    call 8
    i32.store
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func (;79;) (type 29) (param i32 i32 i32 i32)
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
          call 53
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
      call 68
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
            i32.load8_u offset=48
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 56
            i32.add
            i32.load
            call 55
          end
          block  ;; label = @4
            local.get 1
            i32.load8_u offset=8
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 16
            i32.add
            i32.load
            call 55
          end
          local.get 1
          call 55
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
      call 55
    end)
  (func (;80;) (type 21) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
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
      i32.const 32
      i32.add
      global.set 0
      local.get 5
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 0
          i32.const 0
          call 37
          local.tee 4
          i32.const -1
          i32.le_s
          br_if 0 (;@3;)
          local.get 4
          i32.const 513
          i32.ge_u
          br_if 1 (;@2;)
          local.get 2
          local.get 4
          i32.const 15
          i32.add
          i32.const -16
          i32.and
          i32.sub
          local.tee 2
          global.set 0
          i32.const 0
          local.set 6
          br 2 (;@1;)
        end
        i32.const 0
        i32.const 9118
        call 2
      end
      local.get 4
      call 47
      local.set 2
      i32.const 1
      local.set 6
    end
    local.get 1
    local.get 2
    local.get 4
    call 37
    drop
    i32.const 32
    call 53
    local.tee 5
    i64.const 0
    i64.store offset=8
    local.get 5
    i64.const 0
    i64.store
    local.get 5
    local.get 0
    i32.store offset=16
    block  ;; label = @1
      local.get 4
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
    end
    local.get 5
    local.get 2
    i32.const 8
    call 9
    drop
    local.get 3
    i64.const 0
    i64.store offset=24
    local.get 2
    i32.const 8
    i32.add
    local.set 7
    block  ;; label = @1
      local.get 4
      i32.const -8
      i32.and
      i32.const 8
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
    end
    local.get 3
    i32.const 24
    i32.add
    local.get 7
    i32.const 8
    call 9
    drop
    local.get 5
    i32.const 8
    i32.add
    local.get 3
    i64.load offset=24
    local.tee 8
    i64.store
    local.get 5
    local.get 1
    i32.store offset=20
    local.get 3
    local.get 5
    i32.store offset=16
    local.get 3
    local.get 8
    i64.const 8
    i64.shr_u
    local.tee 8
    i64.store offset=24
    local.get 3
    local.get 1
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 28
          i32.add
          local.tee 7
          i32.load
          local.tee 4
          local.get 0
          i32.const 32
          i32.add
          i32.load
          i32.ge_u
          br_if 0 (;@3;)
          local.get 4
          local.get 8
          i64.store offset=8
          local.get 4
          local.get 1
          i32.store offset=16
          local.get 3
          i32.const 0
          i32.store offset=16
          local.get 4
          local.get 5
          i32.store
          local.get 7
          local.get 4
          i32.const 24
          i32.add
          i32.store
          local.get 6
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i32.const 24
        i32.add
        local.get 3
        i32.const 16
        i32.add
        local.get 3
        i32.const 24
        i32.add
        local.get 3
        i32.const 12
        i32.add
        call 82
        local.get 6
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      call 48
    end
    local.get 3
    i32.load offset=16
    local.set 1
    local.get 3
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call 55
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 5)
  (func (;81;) (type 32) (param i32 i32 i64 i32)
    (local i32 i32 i64 i64 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    local.set 5
    local.get 4
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=16
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9242
      call 2
    end
    block  ;; label = @1
      local.get 0
      i64.load
      call 4
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9288
      call 2
    end
    block  ;; label = @1
      local.get 3
      i32.load
      local.tee 3
      i64.load offset=8
      local.get 1
      i64.load offset=8
      local.tee 6
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9855
      call 2
    end
    local.get 1
    local.get 1
    i64.load
    local.get 3
    i64.load
    i64.add
    local.tee 7
    i64.store
    block  ;; label = @1
      local.get 7
      i64.const -4611686018427387904
      i64.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9898
      call 2
      local.get 1
      i64.load
      local.set 7
    end
    local.get 6
    i64.const 8
    i64.shr_u
    local.set 6
    block  ;; label = @1
      local.get 7
      i64.const 4611686018427387904
      i64.lt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9917
      call 2
    end
    block  ;; label = @1
      local.get 6
      local.get 1
      i32.const 8
      i32.add
      local.tee 3
      i64.load
      i64.const 8
      i64.shr_u
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9339
      call 2
    end
    local.get 4
    local.tee 8
    i32.const -16
    i32.add
    local.tee 4
    global.set 0
    local.get 4
    local.get 1
    i32.const 8
    call 9
    drop
    local.get 5
    local.get 3
    i64.load
    i64.store offset=8
    local.get 8
    i32.const -8
    i32.add
    local.get 5
    i32.const 8
    i32.add
    i32.const 8
    call 9
    drop
    local.get 1
    i32.load offset=20
    local.get 2
    local.get 4
    i32.const 16
    call 34
    block  ;; label = @1
      local.get 6
      local.get 0
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      local.get 6
      i64.const 1
      i64.add
      i64.store
    end
    local.get 5
    i32.const 16
    i32.add
    global.set 0)
  (func (;82;) (type 29) (param i32 i32 i32 i32)
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
          call 53
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
      call 68
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
          call 55
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
      call 55
    end)
  (func (;83;) (type 4) (param i32 i64 i64 i64 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 2
    i64.store offset=72
    local.get 1
    local.get 2
    i64.ne
    i32.const 8634
    call 2
    local.get 1
    call 0
    local.get 2
    call 1
    i32.const 8328
    call 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load8_u
        local.tee 6
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 6
        i32.const 1
        i32.shr_u
        local.set 4
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=4
      local.set 4
    end
    local.get 4
    i32.const 257
    i32.lt_u
    i32.const 8386
    call 2
    local.get 0
    i32.const 32
    i32.add
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 56
        i32.add
        i32.load
        local.tee 8
        local.get 0
        i32.const 60
        i32.add
        i32.load
        local.tee 6
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            i32.const -24
            i32.add
            local.tee 4
            i32.load
            local.tee 9
            i64.load
            local.get 3
            i64.eq
            br_if 1 (;@3;)
            local.get 4
            local.set 6
            local.get 8
            local.get 4
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 8
        local.get 6
        i32.eq
        br_if 0 (;@2;)
        local.get 9
        i32.load offset=60
        local.get 7
        i32.eq
        br_if 1 (;@1;)
        i32.const 0
        i32.const 9067
        call 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 9
      local.get 7
      i64.load
      local.get 0
      i32.const 40
      i32.add
      i64.load
      i64.const -3665743729458675712
      local.get 3
      call 3
      local.tee 4
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 7
      local.get 4
      call 84
      local.tee 9
      i32.load offset=60
      local.get 7
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9067
      call 2
    end
    local.get 9
    i32.const 0
    i32.ne
    i32.const 8658
    call 2
    local.get 9
    i64.load offset=24
    local.get 1
    i64.eq
    i32.const 8697
    call 2
    local.get 1
    call 29
    local.get 2
    call 29
    local.get 5
    local.get 5
    i32.const 72
    i32.add
    i32.store offset=64
    block  ;; label = @1
      local.get 9
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9207
      call 2
    end
    local.get 7
    local.get 9
    local.get 1
    local.get 5
    i32.const 64
    i32.add
    call 85
    local.get 5
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.get 9
    i32.const 40
    i32.add
    local.tee 4
    i64.load
    local.tee 2
    i64.store
    local.get 9
    i64.load offset=32
    local.set 3
    local.get 5
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i64.store
    local.get 5
    local.get 3
    i64.store offset=16
    local.get 5
    local.get 3
    i64.store offset=48
    local.get 0
    local.get 1
    local.get 5
    i32.const 16
    i32.add
    call 86
    local.get 9
    i64.load offset=32
    local.set 3
    local.get 5
    i32.const 8
    i32.add
    local.get 4
    i64.load
    local.tee 2
    i64.store
    local.get 5
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i64.store
    local.get 5
    local.get 3
    i64.store
    local.get 5
    local.get 3
    i64.store offset=32
    local.get 0
    local.get 5
    i64.load offset=72
    local.get 5
    local.get 1
    call 76
    local.get 5
    i32.const 80
    i32.add
    global.set 0)
  (func (;84;) (type 21) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i32)
    global.get 0
    i32.const 64
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
      i32.const 64
      i32.add
      global.set 0
      local.get 5
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 0
          i32.const 0
          call 37
          local.tee 5
          i32.const -1
          i32.le_s
          br_if 0 (;@3;)
          local.get 5
          i32.const 513
          i32.ge_u
          br_if 1 (;@2;)
          local.get 2
          local.get 5
          i32.const 15
          i32.add
          i32.const -16
          i32.and
          i32.sub
          local.tee 4
          global.set 0
          i32.const 0
          local.set 6
          br 2 (;@1;)
        end
        i32.const 0
        i32.const 9118
        call 2
      end
      local.get 5
      call 47
      local.set 4
      i32.const 1
      local.set 6
    end
    local.get 1
    local.get 4
    local.get 5
    call 37
    drop
    local.get 3
    local.get 4
    i32.store offset=20
    local.get 3
    local.get 4
    i32.store offset=16
    local.get 3
    local.get 4
    local.get 5
    i32.add
    i32.store offset=24
    i32.const 80
    call 53
    local.tee 5
    i32.const 0
    i32.store offset=16
    local.get 5
    i64.const 0
    i64.store offset=8 align=4
    local.get 5
    i64.const 0
    i64.store offset=24
    local.get 5
    i64.const 0
    i64.store offset=32
    local.get 5
    i64.const 0
    i64.store offset=40
    local.get 5
    i64.const 0
    i64.store offset=48 align=4
    local.get 5
    i32.const 0
    i32.store offset=56
    local.get 5
    local.get 0
    i32.store offset=60
    local.get 3
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=32
    local.get 3
    local.get 5
    i32.const 8
    i32.add
    i32.store offset=44
    local.get 3
    local.get 5
    i32.store offset=40
    local.get 3
    local.get 5
    i32.const 24
    i32.add
    i32.store offset=48
    local.get 3
    local.get 5
    i32.const 32
    i32.add
    i32.store offset=52
    local.get 3
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=56
    local.get 3
    i32.const 40
    i32.add
    local.get 3
    i32.const 32
    i32.add
    call 112
    local.get 5
    local.get 1
    i32.store offset=64
    local.get 5
    i64.const -1
    i64.store offset=68 align=4
    local.get 3
    local.get 5
    i32.store offset=32
    local.get 3
    local.get 5
    i64.load
    local.tee 7
    i64.store offset=40
    local.get 3
    local.get 1
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 28
          i32.add
          local.tee 8
          i32.load
          local.tee 2
          local.get 0
          i32.const 32
          i32.add
          i32.load
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          local.get 7
          i64.store offset=8
          local.get 2
          local.get 1
          i32.store offset=16
          local.get 3
          i32.const 0
          i32.store offset=32
          local.get 2
          local.get 5
          i32.store
          local.get 8
          local.get 2
          i32.const 24
          i32.add
          i32.store
          local.get 6
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i32.const 24
        i32.add
        local.get 3
        i32.const 32
        i32.add
        local.get 3
        i32.const 40
        i32.add
        local.get 3
        i32.const 12
        i32.add
        call 79
        local.get 6
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 4
      call 48
    end
    local.get 3
    i32.load offset=32
    local.set 1
    local.get 3
    i32.const 0
    i32.store offset=32
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.load8_u offset=48
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 56
        i32.add
        i32.load
        call 55
      end
      block  ;; label = @2
        local.get 1
        i32.load8_u offset=8
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 16
        i32.add
        i32.load
        call 55
      end
      local.get 1
      call 55
    end
    local.get 3
    i32.const 64
    i32.add
    global.set 0
    local.get 5)
  (func (;85;) (type 32) (param i32 i32 i64 i32)
    (local i32 i32 i32 i64 i64 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 4
    local.set 5
    local.get 4
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=60
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9242
      call 2
    end
    block  ;; label = @1
      local.get 0
      i64.load
      call 4
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9288
      call 2
    end
    local.get 5
    local.get 1
    i32.const 24
    i32.add
    local.tee 6
    i64.load
    i64.store offset=16
    local.get 5
    local.get 1
    i32.const 40
    i32.add
    i64.load
    i64.const 8
    i64.shr_u
    i64.store offset=24
    local.get 6
    local.get 3
    i32.load
    i64.load
    i64.store
    local.get 1
    i32.const 12
    i32.add
    i32.load
    local.get 1
    i32.load8_u offset=8
    local.tee 3
    i32.const 1
    i32.shr_u
    local.get 3
    i32.const 1
    i32.and
    select
    local.tee 6
    i32.const 32
    i32.add
    local.set 3
    local.get 6
    i64.extend_i32_u
    local.set 7
    local.get 1
    i32.const 8
    i32.add
    local.set 6
    local.get 1
    i64.load
    local.set 8
    local.get 5
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.set 9
    loop  ;; label = @1
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 7
      i64.const 7
      i64.shr_u
      local.tee 7
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 52
    i32.add
    i32.load
    local.get 1
    i32.load8_u offset=48
    local.tee 10
    i32.const 1
    i32.shr_u
    local.get 10
    i32.const 1
    i32.and
    select
    local.tee 10
    local.get 3
    i32.add
    local.set 3
    local.get 10
    i64.extend_i32_u
    local.set 7
    local.get 1
    i32.const 48
    i32.add
    local.set 10
    loop  ;; label = @1
      local.get 3
      i32.const 1
      i32.add
      local.set 3
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
        local.get 3
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 3
        call 47
        local.set 4
        br 1 (;@1;)
      end
      local.get 4
      local.get 3
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 4
      global.set 0
    end
    local.get 5
    local.get 4
    i32.store offset=4
    local.get 5
    local.get 4
    i32.store
    local.get 5
    local.get 4
    local.get 3
    i32.add
    i32.store offset=8
    local.get 5
    local.get 5
    i32.store offset=32
    local.get 5
    local.get 6
    i32.store offset=44
    local.get 5
    local.get 10
    i32.store offset=56
    local.get 5
    local.get 1
    i32.store offset=40
    local.get 5
    local.get 1
    i32.const 24
    i32.add
    i32.store offset=48
    local.get 5
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=52
    local.get 5
    i32.const 40
    i32.add
    local.get 5
    i32.const 32
    i32.add
    call 115
    local.get 1
    i32.load offset=64
    local.get 2
    local.get 4
    local.get 3
    call 34
    block  ;; label = @1
      local.get 3
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 4
      call 48
    end
    block  ;; label = @1
      local.get 8
      local.get 0
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      i64.const -2
      local.get 8
      i64.const 1
      i64.add
      local.get 8
      i64.const -3
      i64.gt_u
      select
      i64.store
    end
    local.get 5
    local.get 1
    i32.const 24
    i32.add
    i64.load
    i64.store offset=40
    block  ;; label = @1
      local.get 5
      i32.const 16
      i32.add
      local.get 5
      i32.const 40
      i32.add
      i32.const 8
      call 61
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.load offset=68
        local.tee 3
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 1
        i32.const 68
        i32.add
        local.get 0
        i64.load
        local.get 0
        i64.load offset=8
        i64.const -3665743729458675712
        local.get 5
        i32.const 32
        i32.add
        local.get 8
        call 30
        local.tee 3
        i32.store
      end
      local.get 3
      local.get 2
      local.get 5
      i32.const 40
      i32.add
      call 38
    end
    local.get 5
    local.get 1
    i32.const 40
    i32.add
    i64.load
    i64.const 8
    i64.shr_u
    i64.store offset=40
    block  ;; label = @1
      local.get 9
      local.get 5
      i32.const 40
      i32.add
      i32.const 8
      call 61
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 72
        i32.add
        local.tee 1
        i32.load
        local.tee 3
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        i64.load
        local.get 0
        i64.load offset=8
        i64.const -3665743729458675711
        local.get 5
        i32.const 32
        i32.add
        local.get 8
        call 30
        local.tee 3
        i32.store
      end
      local.get 3
      local.get 2
      local.get 5
      i32.const 40
      i32.add
      call 38
    end
    local.get 5
    i32.const 64
    i32.add
    global.set 0)
  (func (;86;) (type 1) (param i32 i64 i32)
    (local i32 i32 i64 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    i32.const 0
    local.set 4
    local.get 3
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 3
    local.get 1
    i64.store offset=16
    local.get 3
    i64.const -1
    i64.store offset=24
    local.get 3
    i64.const 0
    i64.store offset=32
    local.get 3
    local.get 0
    i64.load
    local.tee 5
    i64.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        local.get 1
        i64.const 3607749779137757184
        local.get 2
        i64.load offset=8
        i64.const 8
        i64.shr_u
        call 3
        local.tee 0
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        i32.const 8
        i32.add
        local.get 0
        call 80
        local.tee 4
        i32.load offset=16
        local.get 3
        i32.const 8
        i32.add
        i32.eq
        br_if 1 (;@1;)
        i32.const 0
        i32.const 9067
        call 2
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 8927
      call 2
    end
    local.get 4
    i64.load
    local.get 2
    i64.load
    local.tee 5
    i64.ge_s
    i32.const 8951
    call 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          local.get 4
          i64.load
          i64.ne
          br_if 0 (;@3;)
          local.get 3
          i32.const 8
          i32.add
          local.get 4
          call 87
          local.get 3
          i32.load offset=32
          local.tee 0
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 3
        local.get 2
        i32.store
        local.get 3
        i32.const 8
        i32.add
        local.get 4
        local.get 1
        local.get 3
        call 88
        local.get 3
        i32.load offset=32
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 36
          i32.add
          local.tee 6
          i32.load
          local.tee 4
          local.get 0
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 4
            i32.const -24
            i32.add
            local.tee 4
            i32.load
            local.set 2
            local.get 4
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              call 55
            end
            local.get 0
            local.get 4
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const 32
          i32.add
          i32.load
          local.set 4
          br 1 (;@2;)
        end
        local.get 0
        local.set 4
      end
      local.get 6
      local.get 0
      i32.store
      local.get 4
      call 55
      local.get 3
      i32.const 48
      i32.add
      global.set 0
      return
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func (;87;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32 i64 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load offset=16
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9616
      call 2
    end
    block  ;; label = @1
      local.get 0
      i64.load
      call 4
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9661
      call 2
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=24
                local.tee 2
                local.get 0
                i32.const 28
                i32.add
                local.tee 3
                i32.load
                local.tee 4
                i32.eq
                br_if 0 (;@6;)
                local.get 4
                local.set 5
                block  ;; label = @7
                  local.get 4
                  i32.const -24
                  i32.add
                  i32.load
                  i64.load offset=8
                  local.get 1
                  i64.load offset=8
                  local.tee 6
                  i64.xor
                  i64.const 256
                  i64.lt_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 24
                  i32.add
                  local.set 7
                  local.get 4
                  local.set 8
                  loop  ;; label = @8
                    local.get 7
                    local.get 8
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 8
                    i32.const -48
                    i32.add
                    local.set 9
                    local.get 8
                    i32.const -24
                    i32.add
                    local.tee 5
                    local.set 8
                    local.get 9
                    i32.load
                    i64.load offset=8
                    local.get 6
                    i64.xor
                    i64.const 256
                    i64.ge_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 2
                local.get 5
                i32.eq
                br_if 1 (;@5;)
                i32.const -24
                local.set 9
                local.get 5
                local.get 4
                i32.eq
                br_if 2 (;@4;)
                br 3 (;@3;)
              end
              local.get 2
              local.set 5
            end
            i32.const 0
            i32.const 9711
            call 2
            i32.const -24
            local.set 9
            local.get 5
            local.get 3
            i32.load
            local.tee 4
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 5
          local.get 9
          i32.add
          local.set 7
          br 1 (;@2;)
        end
        local.get 5
        local.set 8
        loop  ;; label = @3
          local.get 8
          i32.load
          local.set 7
          local.get 8
          i32.const 0
          i32.store
          local.get 8
          local.get 9
          i32.add
          local.tee 2
          i32.load
          local.set 5
          local.get 2
          local.get 7
          i32.store
          block  ;; label = @4
            local.get 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            call 55
          end
          local.get 8
          i32.const -8
          i32.add
          local.get 8
          i32.const 16
          i32.add
          i32.load
          i32.store
          local.get 8
          i32.const -16
          i32.add
          local.get 8
          i32.const 8
          i32.add
          i64.load
          i64.store
          local.get 4
          local.get 8
          i32.const 24
          i32.add
          local.tee 8
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 8
        i32.const -24
        i32.add
        local.set 7
        local.get 0
        i32.const 28
        i32.add
        i32.load
        local.tee 5
        i32.const 24
        i32.add
        local.get 8
        i32.eq
        br_if 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 5
        local.get 9
        i32.add
        local.tee 5
        i32.load
        local.set 8
        local.get 5
        i32.const 0
        i32.store
        block  ;; label = @3
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          call 55
        end
        local.get 7
        local.get 5
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 28
    i32.add
    local.get 7
    i32.store
    local.get 1
    i32.load offset=20
    call 33)
  (func (;88;) (type 32) (param i32 i32 i64 i32)
    (local i32 i32 i64 i64 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    local.set 5
    local.get 4
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=16
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9242
      call 2
    end
    block  ;; label = @1
      local.get 0
      i64.load
      call 4
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9288
      call 2
    end
    block  ;; label = @1
      local.get 3
      i32.load
      local.tee 3
      i64.load offset=8
      local.get 1
      i64.load offset=8
      local.tee 6
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9764
      call 2
    end
    local.get 1
    local.get 1
    i64.load
    local.get 3
    i64.load
    i64.sub
    local.tee 7
    i64.store
    block  ;; label = @1
      local.get 7
      i64.const -4611686018427387904
      i64.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9812
      call 2
      local.get 1
      i64.load
      local.set 7
    end
    local.get 6
    i64.const 8
    i64.shr_u
    local.set 6
    block  ;; label = @1
      local.get 7
      i64.const 4611686018427387904
      i64.lt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9834
      call 2
    end
    block  ;; label = @1
      local.get 6
      local.get 1
      i32.const 8
      i32.add
      local.tee 3
      i64.load
      i64.const 8
      i64.shr_u
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9339
      call 2
    end
    local.get 4
    local.tee 8
    i32.const -16
    i32.add
    local.tee 4
    global.set 0
    local.get 4
    local.get 1
    i32.const 8
    call 9
    drop
    local.get 5
    local.get 3
    i64.load
    i64.store offset=8
    local.get 8
    i32.const -8
    i32.add
    local.get 5
    i32.const 8
    i32.add
    i32.const 8
    call 9
    drop
    local.get 1
    i32.load offset=20
    local.get 2
    local.get 4
    i32.const 16
    call 34
    block  ;; label = @1
      local.get 6
      local.get 0
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      local.get 6
      i64.const 1
      i64.add
      i64.store
    end
    local.get 5
    i32.const 16
    i32.add
    global.set 0)
  (func (;89;) (type 3) (param i32 i64 i64 i32 i32)
    (local i32 i32 i64 i64)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 5
    global.set 0
    local.get 1
    local.get 2
    i64.ne
    i32.const 8634
    call 2
    local.get 1
    call 0
    local.get 2
    call 1
    i32.const 8328
    call 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load8_u
        local.tee 6
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 6
        i32.const 1
        i32.shr_u
        local.set 6
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=4
      local.set 6
    end
    local.get 6
    i32.const 257
    i32.lt_u
    i32.const 8386
    call 2
    local.get 3
    i64.load
    i64.const 1
    i64.eq
    i32.const 8741
    call 2
    local.get 5
    local.get 0
    i32.const 32
    i32.add
    i32.store offset=48
    local.get 5
    local.get 3
    i64.load offset=8
    local.tee 7
    i64.const 8
    i64.shr_u
    i64.store offset=56
    local.get 5
    i32.const 40
    i32.add
    local.get 5
    i32.const 48
    i32.add
    local.get 5
    i32.const 56
    i32.add
    call 90
    i64.const 0
    local.set 8
    i32.const 0
    local.set 6
    block  ;; label = @1
      local.get 5
      i32.load offset=44
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 40
            i32.add
            i64.load
            local.get 7
            i64.ne
            br_if 0 (;@4;)
            local.get 3
            i64.load offset=24
            local.get 1
            i64.eq
            br_if 2 (;@2;)
          end
          local.get 5
          i32.const 40
          i32.add
          call 91
          drop
          local.get 5
          i32.load offset=44
          local.tee 3
          br_if 0 (;@3;)
        end
        i64.const 0
        local.set 8
        i32.const 0
        local.set 6
        br 1 (;@1;)
      end
      local.get 3
      i64.load
      local.set 8
      i32.const 1
      local.set 6
    end
    local.get 6
    i32.const 8782
    call 2
    local.get 1
    call 29
    local.get 2
    call 29
    local.get 5
    local.get 1
    i64.store
    local.get 5
    local.get 2
    i64.store offset=8
    local.get 5
    local.get 8
    i64.store offset=16
    local.get 0
    i64.load
    local.set 7
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call 63
    drop
    i32.const 16
    call 53
    local.tee 3
    local.get 1
    i64.store
    local.get 3
    i64.const 3617214756542218240
    i64.store offset=8
    local.get 5
    i32.const 56
    i32.add
    i32.const 32
    i32.add
    local.get 5
    i32.const 32
    i32.add
    local.tee 4
    i32.load
    i32.store
    local.get 4
    i32.const 0
    i32.store
    local.get 5
    local.get 3
    i32.store offset=96
    local.get 5
    local.get 3
    i32.const 16
    i32.add
    local.tee 3
    i32.store offset=104
    local.get 5
    local.get 3
    i32.store offset=100
    local.get 5
    local.get 5
    i64.load
    i64.store offset=56
    local.get 5
    local.get 5
    i64.load offset=8
    i64.store offset=64
    local.get 5
    local.get 5
    i64.load offset=16
    i64.store offset=72
    local.get 5
    local.get 5
    i64.load offset=24
    i64.store offset=80
    local.get 5
    i64.const 0
    i64.store offset=24
    local.get 7
    i64.const -3617168760270340096
    local.get 5
    i32.const 96
    i32.add
    local.get 5
    i32.const 56
    i32.add
    call 92
    block  ;; label = @1
      local.get 5
      i32.load8_u offset=80
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.const 88
      i32.add
      i32.load
      call 55
    end
    block  ;; label = @1
      local.get 5
      i32.load offset=96
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      local.get 3
      i32.store offset=100
      local.get 3
      call 55
    end
    block  ;; label = @1
      local.get 5
      i32.const 24
      i32.add
      i32.load8_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.const 32
      i32.add
      i32.load
      call 55
    end
    local.get 5
    i32.const 112
    i32.add
    global.set 0)
  (func (;90;) (type 33) (param i32 i32 i32)
    (local i32 i32 i32 i64 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    local.get 2
    i64.load
    i64.store
    i32.const 0
    local.set 4
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 2
      i64.load
      local.get 2
      i64.load offset=8
      i64.const -3665743729458675711
      local.get 3
      local.get 3
      i32.const 8
      i32.add
      call 39
      local.tee 5
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 3
      i64.load offset=8
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load
          local.tee 7
          i32.load offset=24
          local.tee 8
          local.get 7
          i32.const 28
          i32.add
          i32.load
          local.tee 9
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            loop  ;; label = @5
              local.get 9
              i32.const -24
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              i64.load
              local.get 6
              i64.eq
              br_if 1 (;@4;)
              local.get 2
              local.set 9
              local.get 8
              local.get 2
              i32.ne
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 8
          local.get 9
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=60
          local.get 7
          i32.eq
          br_if 1 (;@2;)
          i32.const 0
          i32.const 9067
          call 2
          br 1 (;@2;)
        end
        local.get 7
        local.get 7
        i64.load
        local.get 7
        i64.load offset=8
        i64.const -3665743729458675712
        local.get 6
        call 3
        call 84
        local.tee 4
        i32.load offset=60
        local.get 7
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        i32.const 9067
        call 2
      end
      local.get 4
      i32.const 72
      i32.add
      local.get 5
      i32.store
    end
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;91;) (type 27) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 2
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9398
      call 2
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.set 2
    end
    block  ;; label = @1
      local.get 2
      i32.const 72
      i32.add
      i32.load
      local.tee 3
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.load
      i32.load
      local.tee 3
      i64.load
      local.get 3
      i64.load offset=8
      i64.const -3665743729458675711
      local.get 1
      i32.const 8
      i32.add
      local.get 2
      i64.load
      call 30
      local.set 3
      local.get 0
      i32.const 4
      i32.add
      i32.load
      i32.const 72
      i32.add
      local.get 3
      i32.store
    end
    local.get 1
    i64.const 0
    i64.store offset=8
    i32.const 0
    local.set 4
    block  ;; label = @1
      local.get 3
      local.get 1
      i32.const 8
      i32.add
      call 31
      local.tee 5
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      i64.load offset=8
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          i32.load
          local.tee 7
          i32.load offset=24
          local.tee 8
          local.get 7
          i32.const 28
          i32.add
          i32.load
          local.tee 3
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              i32.const -24
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              i64.load
              local.get 6
              i64.eq
              br_if 1 (;@4;)
              local.get 2
              local.set 3
              local.get 8
              local.get 2
              i32.ne
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 8
          local.get 3
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=60
          local.get 7
          i32.eq
          br_if 1 (;@2;)
          i32.const 0
          i32.const 9067
          call 2
          br 1 (;@2;)
        end
        i32.const 0
        local.set 4
        local.get 7
        i64.load
        local.get 7
        i64.load offset=8
        i64.const -3665743729458675712
        local.get 6
        call 3
        local.tee 2
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 7
        local.get 2
        call 84
        local.tee 4
        i32.load offset=60
        local.get 7
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        i32.const 9067
        call 2
      end
      local.get 4
      i32.const 72
      i32.add
      local.get 5
      i32.store
    end
    local.get 0
    i32.const 4
    i32.add
    local.get 4
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;92;) (type 34) (param i64 i64 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 0
    i32.store offset=8
    local.get 4
    i64.const 0
    i64.store
    i32.const 0
    local.set 5
    i32.const 0
    local.set 6
    i32.const 0
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        local.get 2
        i32.load
        i32.sub
        local.tee 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.const 4
        i32.shr_s
        local.tee 5
        i32.const 268435456
        i32.ge_u
        br_if 1 (;@1;)
        local.get 4
        i32.const 8
        i32.add
        local.get 8
        call 53
        local.tee 7
        local.get 5
        i32.const 4
        i32.shl
        i32.add
        local.tee 5
        i32.store
        local.get 4
        local.get 7
        i32.store
        local.get 4
        local.get 7
        i32.store offset=4
        block  ;; label = @3
          local.get 2
          i32.const 4
          i32.add
          i32.load
          local.get 2
          i32.load
          local.tee 6
          i32.sub
          local.tee 2
          i32.const 1
          i32.lt_s
          br_if 0 (;@3;)
          local.get 7
          local.get 6
          local.get 2
          call 9
          drop
          local.get 4
          local.get 7
          local.get 2
          i32.add
          local.tee 6
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 7
        local.set 6
      end
      local.get 4
      i32.const 36
      i32.add
      local.get 6
      i32.store
      local.get 4
      i32.const 16
      i32.add
      i32.const 24
      i32.add
      local.get 5
      i32.store
      local.get 4
      i32.const 8
      i32.add
      i32.const 0
      i32.store
      local.get 4
      i32.const 52
      i32.add
      i32.const 0
      i32.store
      local.get 4
      local.get 1
      i64.store offset=24
      local.get 4
      local.get 0
      i64.store offset=16
      local.get 4
      local.get 7
      i32.store offset=32
      local.get 4
      i64.const 0
      i64.store
      local.get 4
      i64.const 0
      i64.store offset=44 align=4
      local.get 3
      i32.const 28
      i32.add
      i32.load
      local.get 3
      i32.load8_u offset=24
      local.tee 7
      i32.const 1
      i32.shr_u
      local.get 7
      i32.const 1
      i32.and
      select
      local.tee 2
      i32.const 24
      i32.add
      local.set 7
      local.get 2
      i64.extend_i32_u
      local.set 0
      local.get 4
      i32.const 16
      i32.add
      i32.const 28
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 7
        i32.const 1
        i32.add
        local.set 7
        local.get 0
        i64.const 7
        i64.shr_u
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 7
          call 114
          local.get 4
          i32.const 48
          i32.add
          i32.load
          local.set 2
          local.get 4
          i32.const 44
          i32.add
          i32.load
          local.set 7
          br 1 (;@2;)
        end
        i32.const 0
        local.set 2
        i32.const 0
        local.set 7
      end
      local.get 4
      local.get 7
      i32.store offset=84
      local.get 4
      local.get 7
      i32.store offset=80
      local.get 4
      local.get 2
      i32.store offset=88
      local.get 4
      local.get 4
      i32.const 80
      i32.add
      i32.store offset=56
      local.get 4
      local.get 3
      i32.store offset=64
      local.get 4
      i32.const 64
      i32.add
      local.get 4
      i32.const 56
      i32.add
      call 117
      local.get 4
      i32.const 0
      i32.store offset=72
      local.get 4
      i64.const 0
      i64.store offset=64
      i32.const 16
      local.set 7
      local.get 4
      i32.const 36
      i32.add
      i32.load
      local.tee 2
      local.get 4
      i32.const 16
      i32.add
      i32.const 16
      i32.add
      i32.load
      local.tee 3
      i32.sub
      local.tee 5
      i32.const 4
      i32.shr_s
      i64.extend_i32_u
      local.set 0
      loop  ;; label = @2
        local.get 7
        i32.const 1
        i32.add
        local.set 7
        local.get 0
        i64.const 7
        i64.shr_u
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
      block  ;; label = @2
        local.get 3
        local.get 2
        i32.eq
        br_if 0 (;@2;)
        local.get 5
        i32.const -16
        i32.and
        local.get 7
        i32.add
        local.set 7
      end
      local.get 7
      local.get 4
      i32.const 48
      i32.add
      i32.load
      local.tee 2
      i32.add
      local.get 4
      i32.const 44
      i32.add
      i32.load
      local.tee 3
      i32.sub
      local.set 7
      local.get 2
      local.get 3
      i32.sub
      i64.extend_i32_u
      local.set 0
      loop  ;; label = @2
        local.get 7
        i32.const 1
        i32.add
        local.set 7
        local.get 0
        i64.const 7
        i64.shr_u
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.const 64
          i32.add
          local.get 7
          call 114
          local.get 4
          i32.load offset=68
          local.set 2
          local.get 4
          i32.load offset=64
          local.set 7
          br 1 (;@2;)
        end
        i32.const 0
        local.set 2
        i32.const 0
        local.set 7
      end
      local.get 4
      local.get 7
      i32.store offset=84
      local.get 4
      local.get 7
      i32.store offset=80
      local.get 4
      local.get 2
      i32.store offset=88
      local.get 4
      i32.const 80
      i32.add
      local.get 4
      i32.const 16
      i32.add
      call 118
      drop
      local.get 4
      i32.load offset=64
      local.tee 7
      local.get 4
      i32.load offset=68
      local.get 7
      i32.sub
      call 40
      block  ;; label = @2
        local.get 4
        i32.load offset=64
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 7
        i32.store offset=68
        local.get 7
        call 55
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=44
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.const 48
        i32.add
        local.get 7
        i32.store
        local.get 7
        call 55
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=32
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.const 36
        i32.add
        local.get 7
        i32.store
        local.get 7
        call 55
      end
      block  ;; label = @2
        local.get 4
        i32.load
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 7
        i32.store offset=4
        local.get 7
        call 55
      end
      local.get 4
      i32.const 96
      i32.add
      global.set 0
      return
    end
    local.get 4
    call 68
    unreachable)
  (func (;93;) (type 2) (param i32 i64 i64)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 3
    global.set 0
    local.get 1
    call 0
    local.get 0
    i32.const 32
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 56
        i32.add
        i32.load
        local.tee 5
        local.get 0
        i32.const 60
        i32.add
        i32.load
        local.tee 6
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            i32.const -24
            i32.add
            local.tee 7
            i32.load
            local.tee 8
            i64.load
            local.get 2
            i64.eq
            br_if 1 (;@3;)
            local.get 7
            local.set 6
            local.get 5
            local.get 7
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 5
        local.get 6
        i32.eq
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=60
        local.get 4
        i32.eq
        br_if 1 (;@1;)
        i32.const 0
        i32.const 9067
        call 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 8
      local.get 4
      i64.load
      local.get 0
      i32.const 40
      i32.add
      i64.load
      i64.const -3665743729458675712
      local.get 2
      call 3
      local.tee 7
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 4
      local.get 7
      call 84
      local.tee 8
      i32.load offset=60
      local.get 4
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9067
      call 2
    end
    local.get 8
    i32.const 0
    i32.ne
    i32.const 8658
    call 2
    local.get 8
    i64.load offset=24
    local.get 1
    i64.eq
    i32.const 8828
    call 2
    local.get 1
    call 29
    local.get 3
    local.get 8
    i32.store offset=72
    block  ;; label = @1
      local.get 8
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9207
      call 2
    end
    local.get 4
    local.get 8
    local.get 1
    local.get 3
    i32.const 72
    i32.add
    call 94
    local.get 3
    i32.const 56
    i32.add
    i32.const 8
    i32.add
    local.get 8
    i32.const 40
    i32.add
    local.tee 7
    i64.load
    local.tee 9
    i64.store
    local.get 8
    i64.load offset=32
    local.set 2
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 9
    i64.store
    local.get 3
    local.get 2
    i64.store offset=24
    local.get 3
    local.get 2
    i64.store offset=56
    local.get 0
    local.get 1
    local.get 3
    i32.const 24
    i32.add
    call 86
    local.get 3
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.get 7
    i64.load
    local.tee 9
    i64.store
    local.get 8
    i64.load offset=32
    local.set 2
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 9
    i64.store
    local.get 3
    local.get 2
    i64.store offset=8
    local.get 3
    local.get 2
    i64.store offset=40
    local.get 0
    local.get 1
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    call 76
    local.get 3
    i32.const 80
    i32.add
    global.set 0)
  (func (;94;) (type 32) (param i32 i32 i64 i32)
    (local i32 i32 i64 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 4
    local.set 5
    local.get 4
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=60
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9242
      call 2
    end
    block  ;; label = @1
      local.get 0
      i64.load
      call 4
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9288
      call 2
    end
    local.get 1
    i64.load
    local.set 6
    local.get 1
    local.get 3
    i32.load
    local.tee 7
    i64.load
    i64.store
    local.get 5
    local.get 1
    i32.const 24
    i32.add
    local.tee 8
    i64.load
    i64.store offset=16
    local.get 5
    local.get 1
    i32.const 40
    i32.add
    local.tee 9
    i64.load
    i64.const 8
    i64.shr_u
    i64.store offset=24
    local.get 1
    i32.const 8
    i32.add
    local.tee 10
    local.get 7
    i32.const 8
    i32.add
    call 64
    drop
    local.get 8
    local.get 3
    i32.load
    local.tee 7
    i64.load offset=24
    i64.store
    local.get 9
    local.get 7
    i32.const 40
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 32
    i32.add
    local.tee 8
    local.get 7
    i64.load offset=32
    i64.store
    local.get 1
    i32.const 48
    i32.add
    local.tee 9
    local.get 3
    i32.load
    i32.const 48
    i32.add
    call 64
    drop
    block  ;; label = @1
      local.get 6
      local.get 1
      i64.load
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9339
      call 2
    end
    local.get 5
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.set 11
    local.get 1
    i32.const 12
    i32.add
    i32.load
    local.get 10
    i32.load8_u
    local.tee 3
    i32.const 1
    i32.shr_u
    local.get 3
    i32.const 1
    i32.and
    select
    local.tee 7
    i32.const 32
    i32.add
    local.set 3
    local.get 7
    i64.extend_i32_u
    local.set 12
    loop  ;; label = @1
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 12
      i64.const 7
      i64.shr_u
      local.tee 12
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 52
    i32.add
    i32.load
    local.get 1
    i32.const 48
    i32.add
    i32.load8_u
    local.tee 7
    i32.const 1
    i32.shr_u
    local.get 7
    i32.const 1
    i32.and
    select
    local.tee 7
    local.get 3
    i32.add
    local.set 3
    local.get 7
    i64.extend_i32_u
    local.set 12
    loop  ;; label = @1
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 12
      i64.const 7
      i64.shr_u
      local.tee 12
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 3
        call 47
        local.set 7
        br 1 (;@1;)
      end
      local.get 4
      local.get 3
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 7
      global.set 0
    end
    local.get 5
    local.get 7
    i32.store offset=4
    local.get 5
    local.get 7
    i32.store
    local.get 5
    local.get 7
    local.get 3
    i32.add
    i32.store offset=8
    local.get 5
    local.get 5
    i32.store offset=32
    local.get 5
    local.get 10
    i32.store offset=44
    local.get 5
    local.get 8
    i32.store offset=52
    local.get 5
    local.get 9
    i32.store offset=56
    local.get 5
    local.get 1
    i32.store offset=40
    local.get 5
    local.get 1
    i32.const 24
    i32.add
    i32.store offset=48
    local.get 5
    i32.const 40
    i32.add
    local.get 5
    i32.const 32
    i32.add
    call 115
    local.get 1
    i32.load offset=64
    local.get 2
    local.get 7
    local.get 3
    call 34
    block  ;; label = @1
      local.get 3
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 7
      call 48
    end
    block  ;; label = @1
      local.get 6
      local.get 0
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      i64.const -2
      local.get 6
      i64.const 1
      i64.add
      local.get 6
      i64.const -3
      i64.gt_u
      select
      i64.store
    end
    local.get 5
    local.get 1
    i32.const 24
    i32.add
    i64.load
    i64.store offset=40
    block  ;; label = @1
      local.get 5
      i32.const 16
      i32.add
      local.get 5
      i32.const 40
      i32.add
      i32.const 8
      call 61
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.load offset=68
        local.tee 3
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 1
        i32.const 68
        i32.add
        local.get 0
        i64.load
        local.get 0
        i64.load offset=8
        i64.const -3665743729458675712
        local.get 5
        i32.const 32
        i32.add
        local.get 6
        call 30
        local.tee 3
        i32.store
      end
      local.get 3
      local.get 2
      local.get 5
      i32.const 40
      i32.add
      call 38
    end
    local.get 5
    local.get 1
    i32.const 40
    i32.add
    i64.load
    i64.const 8
    i64.shr_u
    i64.store offset=40
    block  ;; label = @1
      local.get 11
      local.get 5
      i32.const 40
      i32.add
      i32.const 8
      call 61
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 72
        i32.add
        local.tee 1
        i32.load
        local.tee 3
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        i64.load
        local.get 0
        i64.load offset=8
        i64.const -3665743729458675711
        local.get 5
        i32.const 32
        i32.add
        local.get 6
        call 30
        local.tee 3
        i32.store
      end
      local.get 3
      local.get 2
      local.get 5
      i32.const 40
      i32.add
      call 38
    end
    local.get 5
    i32.const 64
    i32.add
    global.set 0)
  (func (;95;) (type 2) (param i32 i64 i64)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 3
    global.set 0
    local.get 1
    call 0
    local.get 0
    i32.const 32
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 56
        i32.add
        i32.load
        local.tee 5
        local.get 0
        i32.const 60
        i32.add
        i32.load
        local.tee 6
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            i32.const -24
            i32.add
            local.tee 7
            i32.load
            local.tee 8
            i64.load
            local.get 2
            i64.eq
            br_if 1 (;@3;)
            local.get 7
            local.set 6
            local.get 5
            local.get 7
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 5
        local.get 6
        i32.eq
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=60
        local.get 4
        i32.eq
        br_if 1 (;@1;)
        i32.const 0
        i32.const 9067
        call 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 8
      local.get 4
      i64.load
      local.get 0
      i32.const 40
      i32.add
      i64.load
      i64.const -3665743729458675712
      local.get 2
      call 3
      local.tee 7
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 4
      local.get 7
      call 84
      local.tee 8
      i32.load offset=60
      local.get 4
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9067
      call 2
    end
    local.get 8
    i32.const 0
    i32.ne
    i32.const 8871
    call 2
    local.get 8
    i64.load offset=24
    local.get 1
    i64.eq
    i32.const 8900
    call 2
    local.get 3
    i32.const 80
    i32.add
    local.get 8
    i32.const 40
    i32.add
    i64.load
    i64.store
    local.get 3
    local.get 8
    i64.load offset=32
    i64.store offset=72
    block  ;; label = @1
      local.get 8
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9582
      call 2
      i32.const 0
      i32.const 9398
      call 2
    end
    block  ;; label = @1
      local.get 8
      i32.load offset=64
      local.get 3
      i32.const 88
      i32.add
      call 32
      local.tee 7
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 4
      local.get 7
      call 84
      drop
    end
    local.get 4
    local.get 8
    call 96
    local.get 3
    i32.const 56
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.const 72
    i32.add
    i32.const 8
    i32.add
    local.tee 7
    i64.load
    local.tee 2
    i64.store
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i64.store
    local.get 3
    local.get 3
    i64.load offset=72
    local.tee 2
    i64.store offset=24
    local.get 3
    local.get 2
    i64.store offset=56
    local.get 0
    local.get 1
    local.get 3
    i32.const 24
    i32.add
    call 86
    local.get 3
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.get 7
    i64.load
    local.tee 2
    i64.store
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i64.store
    local.get 3
    local.get 3
    i64.load offset=72
    local.tee 2
    i64.store offset=8
    local.get 3
    local.get 2
    i64.store offset=40
    local.get 0
    local.get 3
    i32.const 8
    i32.add
    call 97
    local.get 3
    i32.const 96
    i32.add
    global.set 0)
  (func (;96;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=60
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9616
      call 2
    end
    block  ;; label = @1
      local.get 0
      i64.load
      call 4
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9661
      call 2
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=24
                local.tee 3
                local.get 0
                i32.const 28
                i32.add
                local.tee 4
                i32.load
                local.tee 5
                i32.eq
                br_if 0 (;@6;)
                local.get 5
                local.set 6
                block  ;; label = @7
                  local.get 5
                  i32.const -24
                  i32.add
                  i32.load
                  i64.load
                  local.get 1
                  i64.load
                  local.tee 7
                  i64.eq
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 24
                  i32.add
                  local.set 8
                  local.get 5
                  local.set 9
                  loop  ;; label = @8
                    local.get 8
                    local.get 9
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 9
                    i32.const -48
                    i32.add
                    local.set 10
                    local.get 9
                    i32.const -24
                    i32.add
                    local.tee 6
                    local.set 9
                    local.get 10
                    i32.load
                    i64.load
                    local.get 7
                    i64.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 3
                local.get 6
                i32.eq
                br_if 1 (;@5;)
                i32.const -24
                local.set 10
                local.get 6
                local.get 5
                i32.eq
                br_if 2 (;@4;)
                br 3 (;@3;)
              end
              local.get 3
              local.set 6
            end
            i32.const 0
            i32.const 9711
            call 2
            i32.const -24
            local.set 10
            local.get 6
            local.get 4
            i32.load
            local.tee 5
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 6
          local.get 10
          i32.add
          local.set 8
          br 1 (;@2;)
        end
        local.get 6
        local.set 9
        loop  ;; label = @3
          local.get 9
          i32.load
          local.set 8
          local.get 9
          i32.const 0
          i32.store
          local.get 9
          local.get 10
          i32.add
          local.tee 3
          i32.load
          local.set 6
          local.get 3
          local.get 8
          i32.store
          block  ;; label = @4
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 6
              i32.load8_u offset=48
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.const 56
              i32.add
              i32.load
              call 55
            end
            block  ;; label = @5
              local.get 6
              i32.load8_u offset=8
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.const 16
              i32.add
              i32.load
              call 55
            end
            local.get 6
            call 55
          end
          local.get 9
          i32.const -8
          i32.add
          local.get 9
          i32.const 16
          i32.add
          i32.load
          i32.store
          local.get 9
          i32.const -16
          i32.add
          local.get 9
          i32.const 8
          i32.add
          i64.load
          i64.store
          local.get 5
          local.get 9
          i32.const 24
          i32.add
          local.tee 9
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 9
        i32.const -24
        i32.add
        local.set 8
        local.get 0
        i32.const 28
        i32.add
        i32.load
        local.tee 6
        i32.const 24
        i32.add
        local.get 9
        i32.eq
        br_if 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 6
        local.get 10
        i32.add
        local.tee 6
        i32.load
        local.set 9
        local.get 6
        i32.const 0
        i32.store
        block  ;; label = @3
          local.get 9
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 9
            i32.load8_u offset=48
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 9
            i32.const 56
            i32.add
            i32.load
            call 55
          end
          block  ;; label = @4
            local.get 9
            i32.load8_u offset=8
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 9
            i32.const 16
            i32.add
            i32.load
            call 55
          end
          local.get 9
          call 55
        end
        local.get 8
        local.get 6
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 28
    i32.add
    local.get 8
    i32.store
    local.get 1
    i32.load offset=64
    call 33
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=68
        local.tee 9
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        i64.load
        local.get 0
        i64.load offset=8
        i64.const -3665743729458675712
        local.get 2
        i32.const 8
        i32.add
        local.get 1
        i64.load
        call 30
        local.tee 9
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
      end
      local.get 9
      call 44
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 72
        i32.add
        i32.load
        local.tee 9
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        i64.load
        local.get 0
        i64.load offset=8
        i64.const -3665743729458675711
        local.get 2
        i32.const 8
        i32.add
        local.get 1
        i64.load
        call 30
        local.tee 9
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
      end
      local.get 9
      call 44
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;97;) (type 8) (param i32 i32)
    (local i32 i64 i32 i64 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i64.load offset=8
    local.set 3
    i32.const 0
    local.set 4
    local.get 2
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i64.const -1
    i64.store offset=24
    local.get 2
    i64.const 0
    i64.store offset=32
    local.get 2
    i32.const 0
    i32.store8 offset=44
    local.get 2
    local.get 0
    i64.load
    local.tee 5
    i64.store offset=8
    local.get 2
    local.get 3
    i64.const 8
    i64.shr_u
    local.tee 3
    i64.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        local.get 3
        i64.const -4157508551318700032
        local.get 3
        call 3
        local.tee 6
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 2
          i32.const 8
          i32.add
          local.get 6
          call 70
          local.tee 4
          i32.load offset=24
          local.get 2
          i32.const 8
          i32.add
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          i32.const 9067
          call 2
        end
        local.get 0
        i64.load
        local.set 3
        local.get 2
        local.get 1
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      i64.load
      local.set 3
      local.get 2
      local.get 1
      i32.store
      i32.const 0
      i32.const 9207
      call 2
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 4
    local.get 3
    local.get 2
    call 98
    block  ;; label = @1
      local.get 2
      i32.load offset=32
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 36
          i32.add
          local.tee 6
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
            local.set 1
            local.get 0
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              call 55
            end
            local.get 4
            local.get 0
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 2
          i32.const 32
          i32.add
          i32.load
          local.set 0
          br 1 (;@2;)
        end
        local.get 4
        local.set 0
      end
      local.get 6
      local.get 4
      i32.store
      local.get 0
      call 55
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;98;) (type 32) (param i32 i32 i64 i32)
    (local i32 i32 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    local.set 5
    local.get 4
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=24
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9242
      call 2
    end
    block  ;; label = @1
      local.get 0
      i64.load
      call 4
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9288
      call 2
    end
    local.get 5
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store offset=24
    block  ;; label = @1
      local.get 3
      i32.load
      local.tee 3
      i64.load offset=8
      local.get 1
      i64.load offset=8
      local.tee 6
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9764
      call 2
    end
    local.get 1
    local.get 1
    i64.load
    local.get 3
    i64.load
    i64.sub
    local.tee 7
    i64.store
    block  ;; label = @1
      local.get 7
      i64.const -4611686018427387904
      i64.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9812
      call 2
      local.get 1
      i64.load
      local.set 7
    end
    local.get 6
    i64.const 8
    i64.shr_u
    local.set 6
    block  ;; label = @1
      local.get 7
      i64.const 4611686018427387904
      i64.lt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9834
      call 2
    end
    block  ;; label = @1
      local.get 6
      local.get 1
      i32.const 8
      i32.add
      i64.load
      i64.const 8
      i64.shr_u
      i64.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9339
      call 2
    end
    local.get 4
    local.tee 3
    i32.const -32
    i32.add
    local.tee 4
    global.set 0
    local.get 5
    local.get 4
    i32.store offset=12
    local.get 5
    local.get 4
    i32.store offset=8
    local.get 5
    local.get 3
    i32.const -8
    i32.add
    i32.store offset=16
    local.get 5
    i32.const 8
    i32.add
    local.get 1
    call 71
    drop
    local.get 1
    i32.load offset=28
    local.get 2
    local.get 4
    i32.const 24
    call 34
    block  ;; label = @1
      local.get 6
      local.get 0
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      local.get 6
      i64.const 1
      i64.add
      i64.store
    end
    local.get 5
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store offset=40
    block  ;; label = @1
      local.get 5
      i32.const 24
      i32.add
      local.get 5
      i32.const 40
      i32.add
      i32.const 8
      call 61
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 32
        i32.add
        local.tee 4
        i32.load
        local.tee 1
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        i64.load
        local.get 0
        i64.load offset=8
        i64.const -4157508551318700032
        local.get 5
        i32.const 32
        i32.add
        local.get 6
        call 30
        local.tee 1
        i32.store
      end
      local.get 1
      local.get 2
      local.get 5
      i32.const 40
      i32.add
      call 38
    end
    local.get 5
    i32.const 48
    i32.add
    global.set 0)
  (func (;99;) (type 35) (param i64 i64 i64)
    (local i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 3
    global.set 0
    call 45
    block  ;; label = @1
      local.get 1
      local.get 0
      i64.ne
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i64.const 4516881727834030079
                i64.gt_s
                br_if 0 (;@6;)
                local.get 2
                i64.const -4417060045054628352
                i64.eq
                br_if 1 (;@5;)
                local.get 2
                i64.const -3617168760277827584
                i64.eq
                br_if 2 (;@4;)
                local.get 2
                i64.const -3617168760270340096
                i64.ne
                br_if 5 (;@1;)
                local.get 3
                i32.const 0
                i32.store offset=68
                local.get 3
                i32.const 1
                i32.store offset=64
                local.get 3
                local.get 3
                i64.load offset=64
                i64.store offset=24
                local.get 1
                local.get 1
                local.get 3
                i32.const 24
                i32.add
                call 100
                drop
                br 5 (;@1;)
              end
              local.get 2
              i64.const 4516881727834030080
              i64.eq
              br_if 2 (;@3;)
              local.get 2
              i64.const 8516769789752901632
              i64.eq
              br_if 3 (;@2;)
              local.get 2
              i64.const 5031766152489992192
              i64.ne
              br_if 4 (;@1;)
              local.get 3
              i32.const 0
              i32.store offset=92
              local.get 3
              i32.const 2
              i32.store offset=88
              local.get 3
              local.get 3
              i64.load offset=88
              i64.store
              local.get 1
              local.get 1
              local.get 3
              call 101
              drop
              br 4 (;@1;)
            end
            local.get 3
            i32.const 0
            i32.store offset=60
            local.get 3
            i32.const 3
            i32.store offset=56
            local.get 3
            local.get 3
            i64.load offset=56
            i64.store offset=32
            local.get 1
            local.get 1
            local.get 3
            i32.const 32
            i32.add
            call 102
            drop
            br 3 (;@1;)
          end
          local.get 3
          i32.const 0
          i32.store offset=76
          local.get 3
          i32.const 4
          i32.store offset=72
          local.get 3
          local.get 3
          i64.load offset=72
          i64.store offset=16
          local.get 1
          local.get 1
          local.get 3
          i32.const 16
          i32.add
          call 103
          drop
          br 2 (;@1;)
        end
        local.get 3
        i32.const 0
        i32.store offset=52
        local.get 3
        i32.const 5
        i32.store offset=48
        local.get 3
        local.get 3
        i64.load offset=48
        i64.store offset=40
        local.get 1
        local.get 1
        local.get 3
        i32.const 40
        i32.add
        call 102
        drop
        br 1 (;@1;)
      end
      local.get 3
      i32.const 0
      i32.store offset=84
      local.get 3
      i32.const 6
      i32.store offset=80
      local.get 3
      local.get 3
      i64.load offset=80
      i64.store offset=8
      local.get 1
      local.get 1
      local.get 3
      i32.const 8
      i32.add
      call 104
      drop
    end
    i32.const 0
    call 67
    local.get 3
    i32.const 96
    i32.add
    global.set 0)
  (func (;100;) (type 36) (param i64 i64 i32) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.tee 4
    local.get 2
    i64.load align=4
    i64.store offset=152
    i32.const 0
    local.set 2
    block  ;; label = @1
      call 35
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
          call 47
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
        local.get 5
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 2
        global.set 0
      end
      local.get 2
      local.get 5
      call 36
      drop
    end
    local.get 4
    i32.const 144
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i64.const 0
    i64.store offset=120
    local.get 4
    i64.const 0
    i64.store offset=112
    local.get 4
    i64.const 0
    i64.store offset=128
    local.get 4
    i64.const 0
    i64.store offset=136
    local.get 4
    local.get 2
    i32.store offset=100
    local.get 4
    local.get 2
    i32.store offset=96
    local.get 4
    local.get 2
    local.get 5
    i32.add
    i32.store offset=104
    local.get 4
    local.get 4
    i32.const 96
    i32.add
    i32.store offset=192
    local.get 4
    local.get 4
    i32.const 112
    i32.add
    i32.store offset=24
    local.get 4
    i32.const 24
    i32.add
    local.get 4
    i32.const 192
    i32.add
    call 110
    local.get 4
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.tee 3
    local.get 4
    i32.load offset=104
    i32.store
    local.get 4
    local.get 4
    i64.load offset=96
    i64.store offset=8
    local.get 4
    i32.const 160
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.load
    local.tee 3
    i32.store
    local.get 4
    i32.const 176
    i32.add
    i32.const 8
    i32.add
    local.tee 6
    local.get 3
    i32.store
    local.get 4
    local.get 4
    i64.load offset=8
    local.tee 7
    i64.store offset=176
    local.get 4
    local.get 7
    i64.store offset=160
    local.get 4
    i32.const 192
    i32.add
    i32.const 8
    i32.add
    local.get 6
    i32.load
    local.tee 3
    i32.store
    local.get 4
    i32.const 48
    i32.add
    local.get 3
    i32.store
    local.get 4
    local.get 0
    i64.store offset=24
    local.get 4
    local.get 1
    i64.store offset=32
    local.get 4
    local.get 4
    i64.load offset=176
    local.tee 1
    i64.store offset=40
    local.get 4
    local.get 1
    i64.store offset=192
    local.get 4
    i32.const 64
    i32.add
    local.get 0
    i64.store
    local.get 4
    i32.const 72
    i32.add
    i64.const -1
    i64.store
    local.get 4
    i32.const 80
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 4
    i32.const 88
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i32.const 92
    i32.add
    i32.const 0
    i32.store16
    local.get 4
    local.get 0
    i64.store offset=56
    local.get 4
    local.get 4
    i32.const 152
    i32.add
    i32.store offset=196
    local.get 4
    local.get 4
    i32.const 24
    i32.add
    i32.store offset=192
    local.get 4
    i32.const 192
    i32.add
    local.get 4
    i32.const 112
    i32.add
    call 111
    block  ;; label = @1
      local.get 5
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      call 48
    end
    block  ;; label = @1
      local.get 3
      i32.load
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 84
          i32.add
          local.tee 6
          i32.load
          local.tee 5
          local.get 3
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 5
            i32.const -24
            i32.add
            local.tee 5
            i32.load
            local.set 2
            local.get 5
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 2
                i32.load8_u offset=48
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.const 56
                i32.add
                i32.load
                call 55
              end
              block  ;; label = @6
                local.get 2
                i32.load8_u offset=8
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                i32.load
                call 55
              end
              local.get 2
              call 55
            end
            local.get 3
            local.get 5
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 4
          i32.const 80
          i32.add
          i32.load
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
        local.set 2
      end
      local.get 6
      local.get 3
      i32.store
      local.get 2
      call 55
    end
    block  ;; label = @1
      local.get 4
      i32.load8_u offset=136
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 144
      i32.add
      i32.load
      call 55
    end
    local.get 4
    i32.const 208
    i32.add
    global.set 0
    i32.const 1)
  (func (;101;) (type 36) (param i64 i64 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 176
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
    i32.const 0
    local.set 2
    block  ;; label = @1
      call 35
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
          call 47
          local.set 2
          br 1 (;@2;)
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
      call 36
      drop
    end
    local.get 4
    i32.const 120
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i64.const 0
    i64.store offset=104
    local.get 4
    i64.const 0
    i64.store offset=112
    local.get 4
    local.get 2
    i32.store offset=92
    local.get 4
    local.get 2
    i32.store offset=88
    local.get 4
    local.get 2
    local.get 7
    i32.add
    i32.store offset=96
    local.get 2
    local.set 3
    block  ;; label = @1
      local.get 7
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 4
      i32.load offset=92
      local.set 3
    end
    local.get 4
    i32.const 104
    i32.add
    local.get 3
    i32.const 8
    call 9
    drop
    local.get 4
    local.get 3
    i32.const 8
    i32.add
    i32.store offset=92
    local.get 4
    i32.const 88
    i32.add
    local.get 4
    i32.const 104
    i32.add
    i32.const 8
    i32.add
    local.tee 8
    call 105
    drop
    local.get 4
    i32.const 8
    i32.add
    local.tee 3
    local.get 4
    i32.const 88
    i32.add
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 4
    local.get 4
    i64.load offset=88
    i64.store
    local.get 4
    i32.const 128
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.load
    local.tee 3
    i32.store
    local.get 4
    i32.const 144
    i32.add
    i32.const 8
    i32.add
    local.tee 9
    local.get 3
    i32.store
    local.get 4
    local.get 4
    i64.load
    local.tee 10
    i64.store offset=144
    local.get 4
    local.get 10
    i64.store offset=128
    local.get 4
    i32.const 160
    i32.add
    i32.const 8
    i32.add
    local.get 9
    i32.load
    local.tee 3
    i32.store
    local.get 4
    i32.const 40
    i32.add
    local.get 3
    i32.store
    local.get 4
    local.get 0
    i64.store offset=16
    local.get 4
    local.get 1
    i64.store offset=24
    local.get 4
    local.get 4
    i64.load offset=144
    local.tee 1
    i64.store offset=32
    local.get 4
    local.get 1
    i64.store offset=160
    local.get 4
    i32.const 56
    i32.add
    local.get 0
    i64.store
    local.get 4
    i32.const 64
    i32.add
    i64.const -1
    i64.store
    local.get 4
    i32.const 72
    i32.add
    i64.const 0
    i64.store
    local.get 4
    i32.const 80
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i32.const 84
    i32.add
    i32.const 0
    i32.store16
    local.get 4
    local.get 0
    i64.store offset=48
    local.get 4
    i32.const 16
    i32.add
    local.get 5
    i32.const 1
    i32.shr_s
    i32.add
    local.set 3
    local.get 4
    i64.load offset=104
    local.set 0
    local.get 4
    i32.const 144
    i32.add
    local.get 8
    call 63
    local.set 8
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
    local.get 4
    i32.const 160
    i32.add
    local.get 8
    call 63
    local.tee 5
    local.get 6
    call_indirect (type 1)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i32.load8_u offset=160
                      i32.const 1
                      i32.and
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load8_u offset=144
                      i32.const 1
                      i32.and
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                    local.get 5
                    i32.load offset=8
                    call 55
                    local.get 4
                    i32.load8_u offset=144
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  local.get 8
                  i32.load offset=8
                  call 55
                  local.get 7
                  i32.const 513
                  i32.lt_u
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                local.get 7
                i32.const 513
                i32.ge_u
                br_if 1 (;@5;)
              end
              local.get 4
              i32.const 72
              i32.add
              i32.load
              local.tee 3
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 2
            call 48
            local.get 4
            i32.const 72
            i32.add
            i32.load
            local.tee 3
            i32.eqz
            br_if 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 76
              i32.add
              local.tee 5
              i32.load
              local.tee 7
              local.get 3
              i32.eq
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 7
                i32.const -24
                i32.add
                local.tee 7
                i32.load
                local.set 2
                local.get 7
                i32.const 0
                i32.store
                block  ;; label = @7
                  local.get 2
                  i32.eqz
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 2
                    i32.load8_u offset=48
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    i32.const 56
                    i32.add
                    i32.load
                    call 55
                  end
                  block  ;; label = @8
                    local.get 2
                    i32.load8_u offset=8
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    i32.const 16
                    i32.add
                    i32.load
                    call 55
                  end
                  local.get 2
                  call 55
                end
                local.get 3
                local.get 7
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 4
              i32.const 72
              i32.add
              i32.load
              local.set 2
              br 1 (;@4;)
            end
            local.get 3
            local.set 2
          end
          local.get 5
          local.get 3
          i32.store
          local.get 2
          call 55
          i32.const 1
          local.set 2
          local.get 4
          i32.load8_u offset=112
          i32.const 1
          i32.and
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        i32.const 1
        local.set 2
        local.get 4
        i32.load8_u offset=112
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 4
      i32.const 120
      i32.add
      i32.load
      call 55
    end
    local.get 4
    i32.const 176
    i32.add
    global.set 0
    local.get 2)
  (func (;102;) (type 36) (param i64 i64 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
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
            call 35
            local.tee 7
            i32.eqz
            br_if 0 (;@4;)
            local.get 7
            i32.const 513
            i32.lt_u
            br_if 1 (;@3;)
            local.get 7
            call 47
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
      call 36
      drop
    end
    local.get 4
    i64.const 0
    i64.store offset=88
    local.get 4
    i64.const 0
    i64.store offset=80
    block  ;; label = @1
      local.get 7
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
    end
    local.get 2
    local.get 7
    i32.add
    local.set 3
    local.get 4
    i32.const 80
    i32.add
    i32.const 8
    i32.add
    local.set 8
    local.get 4
    i32.const 80
    i32.add
    local.get 2
    i32.const 8
    call 9
    drop
    local.get 2
    i32.const 8
    i32.add
    local.set 9
    block  ;; label = @1
      local.get 7
      i32.const -8
      i32.and
      i32.const 8
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
    end
    local.get 8
    local.get 9
    i32.const 8
    call 9
    drop
    local.get 4
    i32.const 32
    i32.add
    local.get 3
    i32.store
    local.get 4
    i32.const 48
    i32.add
    local.get 0
    i64.store
    local.get 4
    i32.const 56
    i32.add
    i64.const -1
    i64.store
    local.get 4
    i32.const 64
    i32.add
    i64.const 0
    i64.store
    local.get 4
    i32.const 72
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i32.const 76
    i32.add
    i32.const 0
    i32.store16
    local.get 4
    local.get 2
    i32.store offset=24
    local.get 4
    i32.const 28
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i32.store
    local.get 4
    local.get 1
    i64.store offset=16
    local.get 4
    local.get 0
    i64.store offset=8
    local.get 4
    local.get 0
    i64.store offset=40
    local.get 4
    i32.const 8
    i32.add
    local.get 5
    i32.const 1
    i32.shr_s
    i32.add
    local.set 3
    local.get 4
    i32.const 80
    i32.add
    i32.const 8
    i32.add
    i64.load
    local.set 0
    local.get 4
    i64.load offset=80
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 3
              local.get 1
              local.get 0
              local.get 6
              call_indirect (type 2)
              local.get 7
              i32.const 513
              i32.ge_u
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 3
            local.get 1
            local.get 0
            local.get 3
            i32.load
            local.get 6
            i32.add
            i32.load
            call_indirect (type 2)
            local.get 7
            i32.const 513
            i32.lt_u
            br_if 1 (;@3;)
          end
          local.get 2
          call 48
          local.get 4
          i32.const 64
          i32.add
          i32.load
          local.tee 5
          i32.eqz
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 4
        i32.const 64
        i32.add
        i32.load
        local.tee 5
        i32.eqz
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 68
          i32.add
          local.tee 3
          i32.load
          local.tee 7
          local.get 5
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 7
            i32.const -24
            i32.add
            local.tee 7
            i32.load
            local.set 2
            local.get 7
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 2
                i32.load8_u offset=48
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.const 56
                i32.add
                i32.load
                call 55
              end
              block  ;; label = @6
                local.get 2
                i32.load8_u offset=8
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                i32.load
                call 55
              end
              local.get 2
              call 55
            end
            local.get 5
            local.get 7
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 4
          i32.const 64
          i32.add
          i32.load
          local.set 2
          br 1 (;@2;)
        end
        local.get 5
        local.set 2
      end
      local.get 3
      local.get 5
      i32.store
      local.get 2
      call 55
    end
    local.get 4
    i32.const 96
    i32.add
    global.set 0
    i32.const 1)
  (func (;103;) (type 36) (param i64 i64 i32) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.tee 4
    local.get 2
    i64.load align=4
    i64.store offset=152
    i32.const 0
    local.set 2
    block  ;; label = @1
      call 35
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
          call 47
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
        local.get 5
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 2
        global.set 0
      end
      local.get 2
      local.get 5
      call 36
      drop
    end
    local.get 4
    i32.const 104
    i32.add
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 4
    i32.const 104
    i32.add
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i64.const 0
    i64.store offset=112
    local.get 4
    i64.const 0
    i64.store offset=104
    local.get 4
    i64.const 0
    i64.store offset=120
    local.get 4
    i64.const 0
    i64.store offset=136
    local.get 4
    local.get 2
    i32.store offset=92
    local.get 4
    local.get 2
    i32.store offset=88
    local.get 4
    local.get 2
    local.get 5
    i32.add
    i32.store offset=96
    local.get 4
    local.get 4
    i32.const 88
    i32.add
    i32.store offset=192
    local.get 4
    local.get 4
    i32.const 104
    i32.add
    i32.store offset=16
    local.get 4
    i32.const 16
    i32.add
    local.get 4
    i32.const 192
    i32.add
    call 108
    local.get 4
    i32.const 8
    i32.add
    local.tee 3
    local.get 4
    i32.load offset=96
    i32.store
    local.get 4
    local.get 4
    i64.load offset=88
    i64.store
    local.get 4
    i32.const 160
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.load
    local.tee 3
    i32.store
    local.get 4
    i32.const 176
    i32.add
    i32.const 8
    i32.add
    local.tee 6
    local.get 3
    i32.store
    local.get 4
    local.get 4
    i64.load
    local.tee 7
    i64.store offset=176
    local.get 4
    local.get 7
    i64.store offset=160
    local.get 4
    i32.const 192
    i32.add
    i32.const 8
    i32.add
    local.get 6
    i32.load
    local.tee 3
    i32.store
    local.get 4
    i32.const 16
    i32.add
    i32.const 24
    i32.add
    local.get 3
    i32.store
    local.get 4
    local.get 0
    i64.store offset=16
    local.get 4
    local.get 1
    i64.store offset=24
    local.get 4
    local.get 4
    i64.load offset=176
    local.tee 1
    i64.store offset=32
    local.get 4
    local.get 1
    i64.store offset=192
    local.get 4
    i32.const 16
    i32.add
    i32.const 40
    i32.add
    local.get 0
    i64.store
    local.get 4
    i32.const 64
    i32.add
    i64.const -1
    i64.store
    local.get 4
    i32.const 72
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 4
    i32.const 80
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i32.const 84
    i32.add
    i32.const 0
    i32.store16
    local.get 4
    local.get 0
    i64.store offset=48
    local.get 4
    local.get 4
    i32.const 152
    i32.add
    i32.store offset=196
    local.get 4
    local.get 4
    i32.const 16
    i32.add
    i32.store offset=192
    local.get 4
    i32.const 192
    i32.add
    local.get 4
    i32.const 104
    i32.add
    call 109
    block  ;; label = @1
      local.get 5
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      call 48
    end
    block  ;; label = @1
      local.get 3
      i32.load
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 76
          i32.add
          local.tee 6
          i32.load
          local.tee 5
          local.get 3
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 5
            i32.const -24
            i32.add
            local.tee 5
            i32.load
            local.set 2
            local.get 5
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 2
                i32.load8_u offset=48
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.const 56
                i32.add
                i32.load
                call 55
              end
              block  ;; label = @6
                local.get 2
                i32.load8_u offset=8
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                i32.load
                call 55
              end
              local.get 2
              call 55
            end
            local.get 3
            local.get 5
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 4
          i32.const 72
          i32.add
          i32.load
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
        local.set 2
      end
      local.get 6
      local.get 3
      i32.store
      local.get 2
      call 55
    end
    block  ;; label = @1
      local.get 4
      i32.load8_u offset=136
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 144
      i32.add
      i32.load
      call 55
    end
    local.get 4
    i32.const 208
    i32.add
    global.set 0
    i32.const 1)
  (func (;104;) (type 36) (param i64 i64 i32) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 224
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.tee 4
    local.get 2
    i64.load align=4
    i64.store offset=168
    i32.const 0
    local.set 2
    block  ;; label = @1
      call 35
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
          call 47
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
        local.get 5
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 2
        global.set 0
      end
      local.get 2
      local.get 5
      call 36
      drop
    end
    local.get 4
    i32.const 120
    i32.add
    i64.const 0
    i64.store
    local.get 4
    i32.const 136
    i32.add
    i64.const 0
    i64.store
    local.get 4
    i32.const 104
    i32.add
    i32.const 40
    i32.add
    i64.const 0
    i64.store
    local.get 4
    i32.const 104
    i32.add
    i32.const 56
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i64.const 0
    i64.store offset=112
    local.get 4
    i64.const 0
    i64.store offset=104
    local.get 4
    i64.const 0
    i64.store offset=128
    local.get 4
    i64.const 0
    i64.store offset=152
    local.get 4
    local.get 2
    i32.store offset=92
    local.get 4
    local.get 2
    i32.store offset=88
    local.get 4
    local.get 2
    local.get 5
    i32.add
    i32.store offset=96
    local.get 4
    local.get 4
    i32.const 88
    i32.add
    i32.store offset=208
    local.get 4
    local.get 4
    i32.const 104
    i32.add
    i32.store offset=16
    local.get 4
    i32.const 16
    i32.add
    local.get 4
    i32.const 208
    i32.add
    call 106
    local.get 4
    i32.const 8
    i32.add
    local.tee 3
    local.get 4
    i32.load offset=96
    i32.store
    local.get 4
    local.get 4
    i64.load offset=88
    i64.store
    local.get 4
    i32.const 176
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.load
    local.tee 3
    i32.store
    local.get 4
    i32.const 192
    i32.add
    i32.const 8
    i32.add
    local.tee 6
    local.get 3
    i32.store
    local.get 4
    local.get 4
    i64.load
    local.tee 7
    i64.store offset=192
    local.get 4
    local.get 7
    i64.store offset=176
    local.get 4
    i32.const 208
    i32.add
    i32.const 8
    i32.add
    local.get 6
    i32.load
    local.tee 3
    i32.store
    local.get 4
    i32.const 40
    i32.add
    local.get 3
    i32.store
    local.get 4
    local.get 0
    i64.store offset=16
    local.get 4
    local.get 1
    i64.store offset=24
    local.get 4
    local.get 4
    i64.load offset=192
    local.tee 1
    i64.store offset=32
    local.get 4
    local.get 1
    i64.store offset=208
    local.get 4
    i32.const 16
    i32.add
    i32.const 40
    i32.add
    local.get 0
    i64.store
    local.get 4
    i32.const 64
    i32.add
    i64.const -1
    i64.store
    local.get 4
    i32.const 16
    i32.add
    i32.const 56
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 4
    i32.const 80
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i32.const 84
    i32.add
    i32.const 0
    i32.store16
    local.get 4
    local.get 0
    i64.store offset=48
    local.get 4
    local.get 4
    i32.const 168
    i32.add
    i32.store offset=212
    local.get 4
    local.get 4
    i32.const 16
    i32.add
    i32.store offset=208
    local.get 4
    i32.const 208
    i32.add
    local.get 4
    i32.const 104
    i32.add
    call 107
    block  ;; label = @1
      local.get 5
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      call 48
    end
    block  ;; label = @1
      local.get 3
      i32.load
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 76
          i32.add
          local.tee 6
          i32.load
          local.tee 5
          local.get 3
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 5
            i32.const -24
            i32.add
            local.tee 5
            i32.load
            local.set 2
            local.get 5
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 2
                i32.load8_u offset=48
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.const 56
                i32.add
                i32.load
                call 55
              end
              block  ;; label = @6
                local.get 2
                i32.load8_u offset=8
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                i32.load
                call 55
              end
              local.get 2
              call 55
            end
            local.get 3
            local.get 5
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 4
          i32.const 72
          i32.add
          i32.load
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
        local.set 2
      end
      local.get 6
      local.get 3
      i32.store
      local.get 2
      call 55
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.load8_u offset=152
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 4
              i32.load8_u offset=140
              i32.const 1
              i32.and
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 4
            i32.const 160
            i32.add
            i32.load
            call 55
            local.get 4
            i32.load8_u offset=140
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 4
          i32.const 148
          i32.add
          i32.load
          call 55
          local.get 4
          i32.load offset=128
          local.tee 3
          i32.eqz
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=128
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 132
          i32.add
          local.tee 6
          i32.load
          local.tee 5
          local.get 3
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const -12
              i32.add
              local.tee 2
              i32.load8_u
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.const -4
              i32.add
              i32.load
              call 55
            end
            local.get 2
            local.set 5
            local.get 3
            local.get 2
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 4
          i32.const 128
          i32.add
          i32.load
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
        local.set 2
      end
      local.get 6
      local.get 3
      i32.store
      local.get 2
      call 55
    end
    local.get 4
    i32.const 224
    i32.add
    global.set 0
    i32.const 1)
  (func (;105;) (type 21) (param i32 i32) (result i32)
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
    call 113
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
                call 53
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
              call 66
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
          call 66
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
        call 62
        unreachable
      end
      local.get 2
      local.get 3
      i32.store offset=20
      local.get 3
      call 55
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func (;106;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.load offset=8
      local.get 4
      i32.load offset=4
      local.tee 5
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 4
      i32.const 4
      i32.add
      i32.load
      local.set 5
    end
    local.get 3
    local.get 5
    i32.const 8
    call 9
    drop
    local.get 4
    i32.const 4
    i32.add
    local.tee 4
    local.get 4
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 0
    i32.load
    local.tee 0
    i32.const 8
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.load offset=8
      local.get 4
      i32.load offset=4
      local.tee 5
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 4
      i32.const 4
      i32.add
      i32.load
      local.set 5
    end
    local.get 3
    local.get 5
    i32.const 8
    call 9
    drop
    local.get 4
    i32.const 4
    i32.add
    local.tee 5
    local.get 5
    i32.load
    i32.const 8
    i32.add
    local.tee 5
    i32.store
    local.get 2
    i64.const 0
    i64.store offset=8
    block  ;; label = @1
      local.get 4
      i32.const 8
      i32.add
      i32.load
      local.get 5
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 4
      i32.const 4
      i32.add
      i32.load
      local.set 5
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 5
    i32.const 8
    call 9
    drop
    local.get 0
    i32.const 16
    i32.add
    local.get 2
    i64.load offset=8
    i64.store
    local.get 4
    i32.const 4
    i32.add
    local.tee 4
    local.get 4
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 1
    i32.load
    local.get 0
    i32.const 24
    i32.add
    call 122
    drop
    local.get 1
    i32.load
    local.get 0
    i32.const 36
    i32.add
    call 105
    drop
    local.get 1
    i32.load
    local.get 0
    i32.const 48
    i32.add
    call 105
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;107;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    local.tee 3
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=48
    local.get 2
    i32.const 0
    i32.store offset=56
    local.get 2
    local.get 1
    i64.load offset=8
    i64.store offset=64
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.get 1
    i32.load offset=24
    i32.sub
    local.tee 4
    i32.const 12
    i32.div_s
    local.set 5
    local.get 1
    i64.load
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 357913942
                  i32.ge_u
                  br_if 1 (;@6;)
                  local.get 2
                  i32.const 56
                  i32.add
                  local.get 4
                  call 53
                  local.tee 4
                  local.get 5
                  i32.const 12
                  i32.mul
                  i32.add
                  i32.store
                  local.get 2
                  local.get 4
                  i32.store offset=48
                  local.get 2
                  local.get 4
                  i32.store offset=52
                  local.get 1
                  i32.const 24
                  i32.add
                  i32.load
                  local.tee 5
                  local.get 1
                  i32.const 28
                  i32.add
                  i32.load
                  local.tee 7
                  i32.eq
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 4
                    local.get 5
                    call 63
                    local.set 8
                    local.get 4
                    i32.const 12
                    i32.add
                    local.set 4
                    local.get 7
                    local.get 5
                    i32.const 12
                    i32.add
                    local.tee 5
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 2
                  local.get 8
                  i32.const 12
                  i32.add
                  i32.store offset=52
                end
                local.get 2
                i32.const 32
                i32.add
                local.get 1
                i32.const 36
                i32.add
                call 63
                local.set 4
                local.get 2
                i32.const 16
                i32.add
                local.get 1
                i32.const 48
                i32.add
                call 63
                local.set 5
                local.get 2
                i32.const 8
                i32.add
                local.get 3
                i64.load
                i64.store
                local.get 2
                local.get 2
                i64.load offset=64
                i64.store
                local.get 0
                local.get 6
                local.get 2
                local.get 2
                i32.const 48
                i32.add
                local.get 4
                local.get 5
                call 124
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.load8_u
                    i32.const 1
                    i32.and
                    br_if 0 (;@8;)
                    local.get 4
                    i32.load8_u
                    i32.const 1
                    i32.and
                    br_if 1 (;@7;)
                    br 3 (;@5;)
                  end
                  local.get 5
                  i32.load offset=8
                  call 55
                  local.get 4
                  i32.load8_u
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 2 (;@5;)
                end
                local.get 4
                i32.load offset=8
                call 55
                local.get 2
                i32.load offset=48
                local.tee 7
                br_if 2 (;@4;)
                br 3 (;@3;)
              end
              local.get 2
              i32.const 48
              i32.add
              call 68
              unreachable
            end
            local.get 2
            i32.load offset=48
            local.tee 7
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 2
          i32.load offset=52
          local.tee 5
          local.get 7
          i32.eq
          br_if 1 (;@2;)
          loop  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const -12
              i32.add
              local.tee 4
              i32.load8_u
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.const -4
              i32.add
              i32.load
              call 55
            end
            local.get 4
            local.set 5
            local.get 7
            local.get 4
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 2
          i32.load offset=48
          local.set 4
          br 2 (;@1;)
        end
        local.get 2
        i32.const 80
        i32.add
        global.set 0
        return
      end
      local.get 7
      local.set 4
    end
    local.get 2
    local.get 7
    i32.store offset=52
    local.get 4
    call 55
    local.get 2
    i32.const 80
    i32.add
    global.set 0)
  (func (;108;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.load offset=8
      local.get 4
      i32.load offset=4
      local.tee 5
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 4
      i32.const 4
      i32.add
      i32.load
      local.set 5
    end
    local.get 3
    local.get 5
    i32.const 8
    call 9
    drop
    local.get 4
    i32.const 4
    i32.add
    local.tee 4
    local.get 4
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 0
    i32.load
    local.tee 5
    i32.const 8
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.load offset=8
      local.get 4
      i32.load offset=4
      local.tee 0
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 4
      i32.const 4
      i32.add
      i32.load
      local.set 0
    end
    local.get 3
    local.get 0
    i32.const 8
    call 9
    drop
    local.get 4
    i32.const 4
    i32.add
    local.tee 4
    local.get 4
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 5
    i32.const 16
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.load offset=8
      local.get 4
      i32.load offset=4
      local.tee 0
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 4
      i32.const 4
      i32.add
      i32.load
      local.set 0
    end
    local.get 3
    local.get 0
    i32.const 8
    call 9
    drop
    local.get 4
    i32.const 4
    i32.add
    local.tee 0
    local.get 0
    i32.load
    i32.const 8
    i32.add
    local.tee 3
    i32.store
    local.get 2
    i64.const 0
    i64.store offset=8
    block  ;; label = @1
      local.get 4
      i32.const 8
      i32.add
      i32.load
      local.get 3
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 0
      i32.load
      local.set 3
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 3
    i32.const 8
    call 9
    drop
    local.get 5
    i32.const 24
    i32.add
    local.get 2
    i64.load offset=8
    i64.store
    local.get 0
    local.get 0
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 1
    i32.load
    local.get 5
    i32.const 32
    i32.add
    call 105
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;109;) (type 8) (param i32 i32)
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
    call 63
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
    call 63
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
    call_indirect (type 3)
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
        call 55
        local.get 1
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      i32.load offset=8
      call 55
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
  (func (;110;) (type 8) (param i32 i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.load offset=8
      local.get 3
      i32.load offset=4
      local.tee 4
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 3
      i32.const 4
      i32.add
      i32.load
      local.set 4
    end
    local.get 2
    local.get 4
    i32.const 8
    call 9
    drop
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    local.get 3
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 0
    i32.load
    local.tee 0
    i32.const 8
    i32.add
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.load offset=8
      local.get 3
      i32.load offset=4
      local.tee 4
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 3
      i32.const 4
      i32.add
      i32.load
      local.set 4
    end
    local.get 2
    local.get 4
    i32.const 8
    call 9
    drop
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    local.get 3
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 0
    i32.const 16
    i32.add
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.load offset=8
      local.get 3
      i32.load offset=4
      local.tee 4
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 3
      i32.const 4
      i32.add
      i32.load
      local.set 4
    end
    local.get 2
    local.get 4
    i32.const 8
    call 9
    drop
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    local.get 3
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 1
    i32.load
    local.get 0
    i32.const 24
    i32.add
    call 105
    drop)
  (func (;111;) (type 8) (param i32 i32)
    (local i32 i64 i64 i64 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i64.load offset=16
    local.set 3
    local.get 1
    i64.load offset=8
    local.set 4
    local.get 1
    i64.load
    local.set 5
    local.get 2
    local.get 1
    i32.const 24
    i32.add
    call 63
    local.set 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.tee 0
    i32.load offset=4
    local.tee 6
    i32.const 1
    i32.shr_s
    i32.add
    local.set 7
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      local.get 6
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 7
      i32.load
      local.get 0
      i32.add
      i32.load
      local.set 0
    end
    local.get 7
    local.get 5
    local.get 4
    local.get 3
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    call 63
    local.tee 6
    local.get 0
    call_indirect (type 4)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load8_u offset=16
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
        call 55
        local.get 1
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      i32.load offset=8
      call 55
      local.get 2
      i32.const 32
      i32.add
      global.set 0
      return
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;112;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.load offset=8
      local.get 4
      i32.load offset=4
      local.tee 5
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 4
      i32.const 4
      i32.add
      i32.load
      local.set 5
    end
    local.get 3
    local.get 5
    i32.const 8
    call 9
    drop
    local.get 4
    i32.const 4
    i32.add
    local.tee 4
    local.get 4
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 1
    i32.load
    local.get 0
    i32.load offset=4
    call 105
    drop
    local.get 0
    i32.load offset=8
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.load offset=8
      local.get 4
      i32.load offset=4
      local.tee 5
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 4
      i32.const 4
      i32.add
      i32.load
      local.set 5
    end
    local.get 3
    local.get 5
    i32.const 8
    call 9
    drop
    local.get 4
    i32.const 4
    i32.add
    local.tee 4
    local.get 4
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 0
    i32.load offset=12
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.load offset=8
      local.get 4
      i32.load offset=4
      local.tee 5
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 4
      i32.const 4
      i32.add
      i32.load
      local.set 5
    end
    local.get 6
    local.get 5
    i32.const 8
    call 9
    drop
    local.get 4
    i32.const 4
    i32.add
    local.tee 5
    local.get 5
    i32.load
    i32.const 8
    i32.add
    local.tee 3
    i32.store
    local.get 2
    i64.const 0
    i64.store offset=8
    block  ;; label = @1
      local.get 4
      i32.const 8
      i32.add
      i32.load
      local.get 3
      i32.sub
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 5
      i32.load
      local.set 3
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 3
    i32.const 8
    call 9
    drop
    local.get 6
    local.get 2
    i64.load offset=8
    i64.store offset=8
    local.get 5
    local.get 5
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 1
    i32.load
    local.get 0
    i32.load offset=16
    call 105
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;113;) (type 21) (param i32 i32) (result i32)
    (local i32 i64 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=4
    local.set 2
    i64.const 0
    local.set 3
    local.get 0
    i32.const 8
    i32.add
    local.set 4
    local.get 0
    i32.const 4
    i32.add
    local.set 5
    i32.const 0
    local.set 6
    loop  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 4
        i32.load
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 0
        i32.const 9203
        call 2
        local.get 5
        i32.load
        local.set 2
      end
      local.get 2
      i32.load8_u
      local.set 7
      local.get 5
      local.get 2
      i32.const 1
      i32.add
      local.tee 8
      i32.store
      local.get 3
      local.get 7
      i32.const 127
      i32.and
      local.get 6
      i32.const 255
      i32.and
      local.tee 2
      i32.shl
      i64.extend_i32_u
      i64.or
      local.set 3
      local.get 2
      i32.const 7
      i32.add
      local.set 6
      local.get 8
      local.set 2
      local.get 7
      i32.const 128
      i32.and
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 7
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.tee 5
        local.get 3
        i32.wrap_i64
        local.tee 6
        i32.ge_u
        br_if 0 (;@2;)
        local.get 1
        local.get 6
        local.get 5
        i32.sub
        call 114
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 8
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.set 7
        local.get 1
        i32.load
        local.set 2
        br 1 (;@1;)
      end
      local.get 5
      local.get 6
      i32.le_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 4
      i32.add
      local.get 2
      local.get 6
      i32.add
      local.tee 7
      i32.store
    end
    block  ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.get 8
      i32.sub
      local.get 7
      local.get 2
      i32.sub
      local.tee 7
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9141
      call 2
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.set 8
    end
    local.get 2
    local.get 8
    local.get 7
    call 9
    drop
    local.get 0
    i32.const 4
    i32.add
    local.tee 2
    local.get 2
    i32.load
    local.get 7
    i32.add
    i32.store
    local.get 0)
  (func (;114;) (type 8) (param i32 i32)
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
              call 53
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
        call 68
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
        call 9
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
      call 55
      return
    end)
  (func (;115;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.load offset=8
      local.get 4
      i32.load offset=4
      local.tee 5
      i32.sub
      i32.const 7
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9197
      call 2
      local.get 4
      i32.const 4
      i32.add
      i32.load
      local.set 5
    end
    local.get 5
    local.get 3
    i32.const 8
    call 9
    drop
    local.get 4
    i32.const 4
    i32.add
    local.tee 4
    local.get 4
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 1
    i32.load
    local.get 0
    i32.load offset=4
    call 116
    drop
    local.get 0
    i32.load offset=8
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.load offset=8
      local.get 4
      i32.load offset=4
      local.tee 5
      i32.sub
      i32.const 7
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9197
      call 2
      local.get 4
      i32.const 4
      i32.add
      i32.load
      local.set 5
    end
    local.get 5
    local.get 3
    i32.const 8
    call 9
    drop
    local.get 4
    i32.const 4
    i32.add
    local.tee 4
    local.get 4
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 0
    i32.load offset=12
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.load offset=8
      local.get 4
      i32.load offset=4
      local.tee 5
      i32.sub
      i32.const 7
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9197
      call 2
      local.get 4
      i32.const 4
      i32.add
      i32.load
      local.set 5
    end
    local.get 5
    local.get 6
    i32.const 8
    call 9
    drop
    local.get 4
    i32.const 4
    i32.add
    local.tee 5
    local.get 5
    i32.load
    i32.const 8
    i32.add
    local.tee 3
    i32.store
    local.get 2
    local.get 6
    i64.load offset=8
    i64.store offset=8
    block  ;; label = @1
      local.get 4
      i32.const 8
      i32.add
      i32.load
      local.get 3
      i32.sub
      i32.const 7
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9197
      call 2
      local.get 5
      i32.load
      local.set 3
    end
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    call 9
    drop
    local.get 5
    local.get 5
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 1
    i32.load
    local.get 0
    i32.load offset=16
    call 116
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;116;) (type 21) (param i32 i32) (result i32)
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
    local.set 3
    local.get 0
    i32.const 8
    i32.add
    local.set 5
    local.get 0
    i32.const 4
    i32.add
    local.set 6
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
      block  ;; label = @2
        local.get 5
        i32.load
        local.get 3
        i32.sub
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 9197
        call 2
        local.get 6
        i32.load
        local.set 3
      end
      local.get 3
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 9
      drop
      local.get 6
      local.get 6
      i32.load
      i32.const 1
      i32.add
      local.tee 3
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
      local.tee 6
      i32.const 1
      i32.shr_u
      local.get 6
      i32.const 1
      i32.and
      local.tee 7
      select
      local.tee 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=8
      local.get 1
      i32.const 1
      i32.add
      local.get 7
      select
      local.set 7
      block  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.get 3
        i32.sub
        local.get 6
        i32.ge_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 9197
        call 2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 3
      end
      local.get 3
      local.get 7
      local.get 6
      call 9
      drop
      local.get 0
      i32.const 4
      i32.add
      local.tee 3
      local.get 3
      i32.load
      local.get 6
      i32.add
      i32.store
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;117;) (type 8) (param i32 i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.load offset=8
      local.get 3
      i32.load offset=4
      local.tee 4
      i32.sub
      i32.const 7
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9197
      call 2
      local.get 3
      i32.const 4
      i32.add
      i32.load
      local.set 4
    end
    local.get 4
    local.get 2
    i32.const 8
    call 9
    drop
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    local.get 3
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 0
    i32.load
    local.tee 0
    i32.const 8
    i32.add
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.load offset=8
      local.get 3
      i32.load offset=4
      local.tee 4
      i32.sub
      i32.const 7
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9197
      call 2
      local.get 3
      i32.const 4
      i32.add
      i32.load
      local.set 4
    end
    local.get 4
    local.get 2
    i32.const 8
    call 9
    drop
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    local.get 3
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 0
    i32.const 16
    i32.add
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.load offset=8
      local.get 3
      i32.load offset=4
      local.tee 4
      i32.sub
      i32.const 7
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9197
      call 2
      local.get 3
      i32.const 4
      i32.add
      i32.load
      local.set 4
    end
    local.get 4
    local.get 2
    i32.const 8
    call 9
    drop
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    local.get 3
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 1
    i32.load
    local.get 0
    i32.const 24
    i32.add
    call 116
    drop)
  (func (;118;) (type 21) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.get 0
      i32.load offset=4
      local.tee 2
      i32.sub
      i32.const 7
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9197
      call 2
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.set 2
    end
    local.get 2
    local.get 1
    i32.const 8
    call 9
    drop
    local.get 0
    i32.const 4
    i32.add
    local.tee 2
    local.get 2
    i32.load
    i32.const 8
    i32.add
    local.tee 3
    i32.store
    local.get 1
    i32.const 8
    i32.add
    local.set 4
    block  ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.get 3
      i32.sub
      i32.const 7
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9197
      call 2
      local.get 2
      i32.load
      local.set 3
    end
    local.get 3
    local.get 4
    i32.const 8
    call 9
    drop
    local.get 2
    local.get 2
    i32.load
    i32.const 8
    i32.add
    i32.store
    local.get 0
    local.get 1
    i32.const 16
    i32.add
    call 119
    local.get 1
    i32.const 28
    i32.add
    call 120)
  (func (;119;) (type 21) (param i32 i32) (result i32)
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
      block  ;; label = @2
        local.get 5
        i32.load
        local.get 4
        i32.sub
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 9197
        call 2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 4
      end
      local.get 4
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 9
      drop
      local.get 0
      i32.const 4
      i32.add
      local.tee 4
      local.get 4
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
      i32.const 8
      i32.add
      local.set 5
      local.get 0
      i32.const 4
      i32.add
      local.set 6
      loop  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.load
          local.get 4
          i32.sub
          i32.const 7
          i32.gt_s
          br_if 0 (;@3;)
          i32.const 0
          i32.const 9197
          call 2
          local.get 6
          i32.load
          local.set 4
        end
        local.get 4
        local.get 7
        i32.const 8
        call 9
        drop
        local.get 6
        local.get 6
        i32.load
        i32.const 8
        i32.add
        local.tee 4
        i32.store
        block  ;; label = @3
          local.get 5
          i32.load
          local.get 4
          i32.sub
          i32.const 7
          i32.gt_s
          br_if 0 (;@3;)
          i32.const 0
          i32.const 9197
          call 2
          local.get 6
          i32.load
          local.set 4
        end
        local.get 4
        local.get 7
        i32.const 8
        i32.add
        i32.const 8
        call 9
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
  (func (;120;) (type 21) (param i32 i32) (result i32)
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
      block  ;; label = @2
        local.get 5
        i32.load
        local.get 4
        i32.sub
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 9197
        call 2
        local.get 6
        i32.load
        local.set 4
      end
      local.get 4
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      call 9
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
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9197
      call 2
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.set 4
    end
    local.get 4
    local.get 7
    local.get 6
    call 9
    drop
    local.get 0
    i32.const 4
    i32.add
    local.tee 4
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
  (func (;121;) (type 27) (param i32) (result i32)
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
        i32.load offset=64
        local.get 1
        i32.const 8
        i32.add
        call 42
        local.tee 2
        i32.const -1
        i32.gt_s
        br_if 1 (;@1;)
        i32.const 0
        i32.const 9534
        call 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        i64.load
        local.get 2
        i64.load offset=8
        i64.const -3665743729458675712
        call 43
        local.tee 2
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 9480
        call 2
      end
      local.get 2
      local.get 1
      i32.const 8
      i32.add
      call 42
      local.tee 2
      i32.const -1
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 9480
      call 2
    end
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.load
    local.get 2
    call 84
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;122;) (type 21) (param i32 i32) (result i32)
    (local i32 i64 i32 i32 i32 i32)
    local.get 0
    i32.load offset=4
    local.set 2
    i64.const 0
    local.set 3
    local.get 0
    i32.const 8
    i32.add
    local.set 4
    local.get 0
    i32.const 4
    i32.add
    local.set 5
    i32.const 0
    local.set 6
    loop  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 4
        i32.load
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 0
        i32.const 9203
        call 2
        local.get 5
        i32.load
        local.set 2
      end
      local.get 2
      i32.load8_u
      local.set 7
      local.get 5
      local.get 2
      i32.const 1
      i32.add
      local.tee 2
      i32.store
      local.get 3
      local.get 7
      i32.const 127
      i32.and
      local.get 6
      i32.const 255
      i32.and
      local.tee 6
      i32.shl
      i64.extend_i32_u
      i64.or
      local.set 3
      local.get 6
      i32.const 7
      i32.add
      local.set 6
      local.get 2
      local.set 2
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
          local.tee 7
          local.get 1
          i32.load
          local.tee 5
          i32.sub
          i32.const 12
          i32.div_s
          local.tee 6
          local.get 3
          i32.wrap_i64
          local.tee 2
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          local.get 6
          i32.sub
          call 123
          local.get 1
          i32.load
          local.tee 2
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.tee 7
          i32.ne
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 6
          local.get 2
          i32.le_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 5
            local.get 2
            i32.const 12
            i32.mul
            i32.add
            local.tee 6
            local.get 7
            i32.eq
            br_if 0 (;@4;)
            loop  ;; label = @5
              block  ;; label = @6
                local.get 7
                i32.const -12
                i32.add
                local.tee 2
                i32.load8_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 7
                i32.const -4
                i32.add
                i32.load
                call 55
              end
              local.get 2
              local.set 7
              local.get 6
              local.get 2
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 1
          i32.const 4
          i32.add
          local.get 6
          i32.store
          local.get 6
          local.set 7
        end
        local.get 1
        i32.load
        local.tee 2
        local.get 7
        i32.eq
        br_if 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 0
        local.get 2
        call 105
        drop
        local.get 7
        local.get 2
        i32.const 12
        i32.add
        local.tee 2
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;123;) (type 8) (param i32 i32)
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
            call 53
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
      call 68
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
          call 55
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
      call 55
    end)
  (func (;124;) (type 5) (param i32 i64 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 6
    global.set 0
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.tee 0
    i32.load offset=4
    local.tee 7
    i32.const 1
    i32.shr_s
    i32.add
    local.set 8
    local.get 0
    i32.load
    local.set 9
    block  ;; label = @1
      local.get 7
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 8
      i32.load
      local.get 9
      i32.add
      i32.load
      local.set 9
    end
    local.get 6
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    local.tee 10
    local.get 2
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 6
    i64.const 0
    i64.store offset=48
    local.get 6
    i32.const 0
    i32.store offset=56
    local.get 6
    local.get 2
    i64.load
    i64.store offset=64
    local.get 3
    i32.load offset=4
    local.get 3
    i32.load
    i32.sub
    local.tee 2
    i32.const 12
    i32.div_s
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 357913942
                  i32.ge_u
                  br_if 1 (;@6;)
                  local.get 6
                  i32.const 56
                  i32.add
                  local.get 2
                  call 53
                  local.tee 2
                  local.get 0
                  i32.const 12
                  i32.mul
                  i32.add
                  i32.store
                  local.get 6
                  local.get 2
                  i32.store offset=48
                  local.get 6
                  local.get 2
                  i32.store offset=52
                  local.get 3
                  i32.load
                  local.tee 0
                  local.get 3
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 3
                  i32.eq
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 2
                    local.get 0
                    call 63
                    local.set 7
                    local.get 2
                    i32.const 12
                    i32.add
                    local.set 2
                    local.get 3
                    local.get 0
                    i32.const 12
                    i32.add
                    local.tee 0
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 6
                  local.get 7
                  i32.const 12
                  i32.add
                  i32.store offset=52
                end
                local.get 6
                i32.const 32
                i32.add
                local.get 4
                call 63
                local.set 2
                local.get 6
                i32.const 16
                i32.add
                local.get 5
                call 63
                local.set 0
                local.get 6
                i32.const 8
                i32.add
                local.get 10
                i64.load
                i64.store
                local.get 6
                local.get 6
                i64.load offset=64
                i64.store
                local.get 8
                local.get 1
                local.get 6
                local.get 6
                i32.const 48
                i32.add
                local.get 2
                local.get 0
                local.get 9
                call_indirect (type 5)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load8_u
                    i32.const 1
                    i32.and
                    br_if 0 (;@8;)
                    local.get 2
                    i32.load8_u
                    i32.const 1
                    i32.and
                    br_if 1 (;@7;)
                    br 3 (;@5;)
                  end
                  local.get 0
                  i32.load offset=8
                  call 55
                  local.get 2
                  i32.load8_u
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 2 (;@5;)
                end
                local.get 2
                i32.load offset=8
                call 55
                local.get 6
                i32.load offset=48
                local.tee 3
                br_if 2 (;@4;)
                br 3 (;@3;)
              end
              local.get 6
              i32.const 48
              i32.add
              call 68
              unreachable
            end
            local.get 6
            i32.load offset=48
            local.tee 3
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 6
          i32.load offset=52
          local.tee 0
          local.get 3
          i32.eq
          br_if 1 (;@2;)
          loop  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const -12
              i32.add
              local.tee 2
              i32.load8_u
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.const -4
              i32.add
              i32.load
              call 55
            end
            local.get 2
            local.set 0
            local.get 3
            local.get 2
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 6
          i32.load offset=48
          local.set 2
          br 2 (;@1;)
        end
        local.get 6
        i32.const 80
        i32.add
        global.set 0
        return
      end
      local.get 3
      local.set 2
    end
    local.get 6
    local.get 3
    i32.store offset=52
    local.get 2
    call 55
    local.get 6
    i32.const 80
    i32.add
    global.set 0)
  (table (;0;) 7 7 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 8192))
  (global (;1;) i32 (i32.const 9935))
  (global (;2;) i32 (i32.const 9935))
  (export "apply" (func 99))
  (elem (;0;) (i32.const 1) func 83 69 93 89 95 73)
  (data (;0;) (i32.const 8220) "failed to allocate pages\00issuer account does not exist\00")
  (data (;1;) (i32.const 8275) "invalid symbol name\00")
  (data (;2;) (i32.const 8295) "token with symbol already exists\00")
  (data (;3;) (i32.const 8328) "to account does not exist\00")
  (data (;4;) (i32.const 8354) "quantity must be a whole number\00")
  (data (;5;) (i32.const 8386) "memo has more than 256 bytes\00")
  (data (;6;) (i32.const 8415) "name has more than 32 bytes\00")
  (data (;7;) (i32.const 8443) "token with symbol does not exist. create token before issue\00")
  (data (;8;) (i32.const 8503) "invalid quantity\00")
  (data (;9;) (i32.const 8520) "must issue positive quantity of NFT\00")
  (data (;10;) (i32.const 8556) "symbol precision mismatch\00")
  (data (;11;) (i32.const 8582) "mismatch between number of tokens and uris provided\00")
  (data (;12;) (i32.const 8634) "cannot transfer to self\00")
  (data (;13;) (i32.const 8658) "token with specified ID does not exist\00")
  (data (;14;) (i32.const 8697) "sender does not own token with specified ID\00")
  (data (;15;) (i32.const 8741) "cannot transfer quantity, not equal to 1\00")
  (data (;16;) (i32.const 8782) "token is not found or is not owned by account\00")
  (data (;17;) (i32.const 8828) "payer does not own token with specified ID\00")
  (data (;18;) (i32.const 8871) "token with id does not exist\00")
  (data (;19;) (i32.const 8900) "token not owned by account\00")
  (data (;20;) (i32.const 8927) "no balance object found\00")
  (data (;21;) (i32.const 8951) "overdrawn balance\00")
  (data (;22;) (i32.const 8969) "string is too long to be a valid symbol_code\00")
  (data (;23;) (i32.const 9014) "only uppercase letters allowed in symbol_code string\00")
  (data (;24;) (i32.const 9067) "object passed to iterator_to is not in multi_index\00")
  (data (;25;) (i32.const 9118) "error reading iterator\00")
  (data (;26;) (i32.const 9141) "read\00")
  (data (;27;) (i32.const 9146) "cannot create objects in table of another contract\00")
  (data (;28;) (i32.const 9197) "write\00")
  (data (;29;) (i32.const 9203) "get\00")
  (data (;30;) (i32.const 9207) "cannot pass end iterator to modify\00")
  (data (;31;) (i32.const 9242) "object passed to modify is not in multi_index\00")
  (data (;32;) (i32.const 9288) "cannot modify objects in table of another contract\00")
  (data (;33;) (i32.const 9339) "updater cannot change primary key when modifying an object\00")
  (data (;34;) (i32.const 9398) "cannot increment end iterator\00")
  (data (;35;) (i32.const 9428) "next primary key in table is at autoincrement limit\00")
  (data (;36;) (i32.const 9480) "cannot decrement end iterator when the table is empty\00")
  (data (;37;) (i32.const 9534) "cannot decrement iterator at beginning of table\00")
  (data (;38;) (i32.const 9582) "cannot pass end iterator to erase\00")
  (data (;39;) (i32.const 9616) "object passed to erase is not in multi_index\00")
  (data (;40;) (i32.const 9661) "cannot erase objects in table of another contract\00")
  (data (;41;) (i32.const 9711) "attempt to remove object that was not in multi_index\00")
  (data (;42;) (i32.const 9764) "attempt to subtract asset with different symbol\00")
  (data (;43;) (i32.const 9812) "subtraction underflow\00")
  (data (;44;) (i32.const 9834) "subtraction overflow\00")
  (data (;45;) (i32.const 9855) "attempt to add asset with different symbol\00")
  (data (;46;) (i32.const 9898) "addition underflow\00")
  (data (;47;) (i32.const 9917) "addition overflow\00")
  (data (;48;) (i32.const 0) "\d0&\00\00"))
