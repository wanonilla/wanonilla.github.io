(module
  (type (;0;) (func (param i32 i32 i32)))
  (type (;1;) (func (param i32 i64)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i64 i32 i32 i32)))
  (type (;4;) (func))
  (type (;5;) (func (result i32)))
  (type (;6;) (func (param i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (param i64)))
  (type (;10;) (func (param i64 i64 i64 i64) (result i32)))
  (type (;11;) (func (result i64)))
  (type (;12;) (func (param i64 i64 i64 i32 i64) (result i32)))
  (type (;13;) (func (param i64 i64 i64 i64 i32 i32) (result i32)))
  (type (;14;) (func (param i64 i64 i64 i64 i32) (result i32)))
  (type (;15;) (func (param i32 i64 i32 i32)))
  (type (;16;) (func (param i32 i64 i32)))
  (type (;17;) (func (param i64 i64 i64 i32 i32) (result i32)))
  (type (;18;) (func (param i32 i64 i64 i64 i64)))
  (type (;19;) (func (param i64 i64) (result i32)))
  (type (;20;) (func (param i32 f64)))
  (type (;21;) (func (param i32 f32)))
  (type (;22;) (func (param i64 i64) (result f64)))
  (type (;23;) (func (param i64 i64) (result f32)))
  (type (;24;) (func (param i64 i64 i64)))
  (type (;25;) (func (param i32 i32 i32 i32)))
  (type (;26;) (func (param i32 i32 i64 i32)))
  (type (;27;) (func (param i32) (result i32)))
  (type (;28;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
  (import "env" "eosio_assert" (func (;0;) (type 2)))
  (import "env" "action_data_size" (func (;1;) (type 5)))
  (import "env" "read_action_data" (func (;2;) (type 6)))
  (import "env" "memcpy" (func (;3;) (type 7)))
  (import "env" "prints" (func (;4;) (type 8)))
  (import "env" "printn" (func (;5;) (type 9)))
  (import "env" "require_auth" (func (;6;) (type 9)))
  (import "env" "db_find_i64" (func (;7;) (type 10)))
  (import "env" "current_receiver" (func (;8;) (type 11)))
  (import "env" "printui" (func (;9;) (type 9)))
  (import "env" "db_next_i64" (func (;10;) (type 6)))
  (import "env" "db_idx64_find_primary" (func (;11;) (type 12)))
  (import "env" "db_idx64_next" (func (;12;) (type 6)))
  (import "env" "db_get_i64" (func (;13;) (type 7)))
  (import "env" "db_store_i64" (func (;14;) (type 13)))
  (import "env" "db_idx64_store" (func (;15;) (type 14)))
  (import "env" "db_update_i64" (func (;16;) (type 15)))
  (import "env" "db_idx64_update" (func (;17;) (type 16)))
  (import "env" "db_remove_i64" (func (;18;) (type 8)))
  (import "env" "db_idx64_remove" (func (;19;) (type 8)))
  (import "env" "db_idx64_lowerbound" (func (;20;) (type 17)))
  (import "env" "db_idx64_upperbound" (func (;21;) (type 17)))
  (import "env" "abort" (func (;22;) (type 4)))
  (import "env" "memset" (func (;23;) (type 7)))
  (import "env" "memmove" (func (;24;) (type 7)))
  (import "env" "__unordtf2" (func (;25;) (type 10)))
  (import "env" "__eqtf2" (func (;26;) (type 10)))
  (import "env" "__multf3" (func (;27;) (type 18)))
  (import "env" "__addtf3" (func (;28;) (type 18)))
  (import "env" "__subtf3" (func (;29;) (type 18)))
  (import "env" "__netf2" (func (;30;) (type 10)))
  (import "env" "__fixunstfsi" (func (;31;) (type 19)))
  (import "env" "__floatunsitf" (func (;32;) (type 2)))
  (import "env" "__fixtfsi" (func (;33;) (type 19)))
  (import "env" "__floatsitf" (func (;34;) (type 2)))
  (import "env" "__extenddftf2" (func (;35;) (type 20)))
  (import "env" "__extendsftf2" (func (;36;) (type 21)))
  (import "env" "__divtf3" (func (;37;) (type 18)))
  (import "env" "__letf2" (func (;38;) (type 10)))
  (import "env" "__trunctfdf2" (func (;39;) (type 22)))
  (import "env" "__getf2" (func (;40;) (type 10)))
  (import "env" "__trunctfsf2" (func (;41;) (type 23)))
  (import "env" "set_blockchain_parameters_packed" (func (;42;) (type 2)))
  (import "env" "get_blockchain_parameters_packed" (func (;43;) (type 6)))
  (func (;44;) (type 4))
  (func (;45;) (type 24) (param i64 i64 i64)
    (local i32 i64)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 3
    global.set 0
    call 44
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
      i64.store offset=120
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i64.const 4579251524919623679
                  i64.le_s
                  br_if 0 (;@7;)
                  local.get 2
                  i64.const 7111746761571434495
                  i64.gt_s
                  br_if 1 (;@6;)
                  local.get 2
                  i64.const 4579251524919623680
                  i64.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i64.const 5031766152489992192
                  i64.ne
                  br_if 6 (;@1;)
                  local.get 3
                  i32.const 0
                  i32.store offset=108
                  local.get 3
                  i32.const 1
                  i32.store offset=104
                  local.get 3
                  local.get 3
                  i64.load offset=104
                  i64.store offset=16
                  local.get 3
                  i32.const 120
                  i32.add
                  local.get 3
                  i32.const 16
                  i32.add
                  call 47
                  drop
                  br 6 (;@1;)
                end
                local.get 2
                i64.const -4997502827547852800
                i64.eq
                br_if 2 (;@4;)
                local.get 2
                i64.const -3075276126730321920
                i64.eq
                br_if 3 (;@3;)
                local.get 2
                i64.const 3680975047310180352
                i64.ne
                br_if 5 (;@1;)
                local.get 3
                i32.const 0
                i32.store offset=68
                local.get 3
                i32.const 2
                i32.store offset=64
                local.get 3
                local.get 3
                i64.load offset=64
                i64.store offset=56
                local.get 3
                i32.const 120
                i32.add
                local.get 3
                i32.const 56
                i32.add
                call 49
                drop
                br 5 (;@1;)
              end
              local.get 2
              i64.const 7111746761571434496
              i64.eq
              br_if 3 (;@2;)
              local.get 2
              i64.const 7684013976526520320
              i64.ne
              br_if 4 (;@1;)
              local.get 3
              i32.const 0
              i32.store offset=116
              local.get 3
              i32.const 3
              i32.store offset=112
              local.get 3
              local.get 3
              i64.load offset=112
              i64.store offset=8
              local.get 3
              i32.const 120
              i32.add
              local.get 3
              i32.const 8
              i32.add
              call 51
              drop
              br 4 (;@1;)
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
            i64.store offset=48
            local.get 3
            i32.const 120
            i32.add
            local.get 3
            i32.const 48
            i32.add
            call 53
            drop
            br 3 (;@1;)
          end
          local.get 3
          i32.const 0
          i32.store offset=84
          local.get 3
          i32.const 5
          i32.store offset=80
          local.get 3
          local.get 3
          i64.load offset=80
          i64.store offset=40
          local.get 3
          i32.const 120
          i32.add
          local.get 3
          i32.const 40
          i32.add
          call 51
          drop
          br 2 (;@1;)
        end
        local.get 3
        i32.const 0
        i32.store offset=92
        local.get 3
        i32.const 6
        i32.store offset=88
        local.get 3
        local.get 3
        i64.load offset=88
        i64.store offset=32
        local.get 3
        i32.const 120
        i32.add
        local.get 3
        i32.const 32
        i32.add
        call 47
        drop
        br 1 (;@1;)
      end
      local.get 3
      i32.const 0
      i32.store offset=100
      local.get 3
      i32.const 7
      i32.store offset=96
      local.get 3
      local.get 3
      i64.load offset=96
      i64.store offset=24
      local.get 3
      i32.const 120
      i32.add
      local.get 3
      i32.const 24
      i32.add
      call 51
      drop
    end
    i32.const 0
    call 80
    local.get 3
    i32.const 128
    i32.add
    global.set 0)
  (func (;46;) (type 3) (param i32 i64 i32 i32 i32)
    (local i32 i64 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 3
    i32.store offset=60
    local.get 5
    local.get 1
    i64.store offset=64
    local.get 1
    call 6
    local.get 5
    i32.const 48
    i32.add
    local.tee 3
    i32.const 0
    i32.store
    local.get 5
    i64.const -1
    i64.store offset=32
    local.get 5
    i64.const 0
    i64.store offset=40
    local.get 5
    i32.const 0
    i32.store8 offset=52
    local.get 5
    local.get 0
    i64.load
    local.tee 6
    i64.store offset=16
    local.get 5
    local.get 6
    i64.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        local.get 6
        i64.const -5915276602496778240
        local.get 1
        call 7
        local.tee 0
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 5
        i32.const 16
        i32.add
        local.get 0
        call 59
        i32.load offset=36
        local.get 5
        i32.const 16
        i32.add
        i32.eq
        i32.const 8399
        call 0
        local.get 5
        i64.load offset=64
        local.set 1
        i32.const 0
        local.set 0
        br 1 (;@1;)
      end
      i32.const 1
      local.set 0
    end
    local.get 0
    i32.const 8263
    call 0
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    local.get 4
    i32.store offset=12
    local.get 5
    local.get 5
    i32.const 64
    i32.add
    i32.store
    local.get 5
    local.get 5
    i32.const 60
    i32.add
    i32.store offset=8
    local.get 5
    local.get 1
    i64.store offset=104
    local.get 5
    i64.load offset=16
    call 8
    i64.eq
    i32.const 8473
    call 0
    local.get 5
    local.get 5
    i32.store offset=84
    local.get 5
    local.get 5
    i32.const 16
    i32.add
    i32.store offset=80
    local.get 5
    local.get 5
    i32.const 104
    i32.add
    i32.store offset=88
    i32.const 48
    call 70
    local.tee 2
    i32.const 0
    i32.store offset=16
    local.get 2
    i64.const 0
    i64.store offset=8 align=4
    local.get 2
    i64.const 0
    i64.store offset=24 align=4
    local.get 2
    i32.const 0
    i32.store offset=32
    local.get 2
    local.get 5
    i32.const 16
    i32.add
    i32.store offset=36
    local.get 5
    i32.const 80
    i32.add
    local.get 2
    call 60
    local.get 5
    local.get 2
    i32.store offset=96
    local.get 5
    local.get 2
    i64.load
    local.tee 1
    i64.store offset=80
    local.get 5
    local.get 2
    i32.load offset=40
    local.tee 0
    i32.store offset=76
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 44
              i32.add
              local.tee 7
              i32.load
              local.tee 4
              local.get 3
              i32.load
              i32.ge_u
              br_if 0 (;@5;)
              local.get 4
              local.get 1
              i64.store offset=8
              local.get 4
              local.get 0
              i32.store offset=16
              local.get 5
              i32.const 0
              i32.store offset=96
              local.get 4
              local.get 2
              i32.store
              local.get 7
              local.get 4
              i32.const 24
              i32.add
              i32.store
              local.get 5
              i32.load offset=96
              local.set 2
              local.get 5
              i32.const 0
              i32.store offset=96
              local.get 2
              i32.eqz
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 5
            i32.const 40
            i32.add
            local.get 5
            i32.const 96
            i32.add
            local.get 5
            i32.const 80
            i32.add
            local.get 5
            i32.const 76
            i32.add
            call 61
            local.get 5
            i32.load offset=96
            local.set 2
            local.get 5
            i32.const 0
            i32.store offset=96
            local.get 2
            br_if 1 (;@3;)
          end
          local.get 5
          i32.load offset=40
          local.tee 0
          i32.eqz
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 2
          i32.load8_u offset=24
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 32
          i32.add
          i32.load
          call 72
        end
        block  ;; label = @3
          local.get 2
          i32.load8_u offset=8
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 16
          i32.add
          i32.load
          call 72
        end
        local.get 2
        call 72
        local.get 5
        i32.load offset=40
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.const 44
          i32.add
          local.tee 3
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
              block  ;; label = @6
                local.get 2
                i32.load8_u offset=24
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.const 32
                i32.add
                i32.load
                call 72
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
                call 72
              end
              local.get 2
              call 72
            end
            local.get 0
            local.get 4
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 5
          i32.const 40
          i32.add
          i32.load
          local.set 2
          br 1 (;@2;)
        end
        local.get 0
        local.set 2
      end
      local.get 3
      local.get 0
      i32.store
      local.get 2
      call 72
    end
    local.get 5
    i32.const 112
    i32.add
    global.set 0)
  (func (;47;) (type 6) (param i32 i32) (result i32)
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
          call 82
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        local.get 0
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 1
        global.set 0
      end
      local.get 1
      local.get 0
      call 2
      drop
    end
    local.get 3
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i64.const 0
    i64.store offset=16
    local.get 3
    i64.const 0
    i64.store offset=32
    local.get 3
    local.get 1
    local.get 0
    i32.add
    i32.store offset=72
    local.get 3
    local.get 1
    i32.store offset=64
    local.get 0
    i32.const 7
    i32.gt_u
    i32.const 8390
    call 0
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    call 3
    drop
    local.get 3
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=68
    local.get 3
    i32.const 64
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    call 57
    drop
    local.get 3
    i32.load offset=72
    local.get 3
    i32.load offset=68
    i32.sub
    i32.const 3
    i32.gt_u
    i32.const 8390
    call 0
    local.get 3
    i32.const 28
    i32.add
    local.get 3
    i32.load offset=68
    i32.const 4
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=68
    i32.const 4
    i32.add
    i32.store offset=68
    local.get 3
    i32.const 64
    i32.add
    local.get 3
    i32.const 32
    i32.add
    call 57
    drop
    block  ;; label = @1
      local.get 0
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      call 85
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
    i32.const 8
    i32.add
    call 58
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
      call 72
    end
    block  ;; label = @1
      local.get 3
      i32.load8_u offset=16
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 24
      i32.add
      i32.load
      call 72
    end
    local.get 3
    i32.const 80
    i32.add
    global.set 0
    i32.const 1)
  (func (;48;) (type 0) (param i32 i32 i32)
    (local i32 i64 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 64
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i64.const -1
    i64.store offset=48
    local.get 3
    i64.const 0
    i64.store offset=56
    local.get 3
    i32.const 0
    i32.store8 offset=68
    local.get 3
    local.get 0
    i64.load
    local.tee 4
    i64.store offset=32
    local.get 3
    local.get 4
    i64.store offset=40
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 1
    i64.extend_i32_u
    i64.store offset=72
    local.get 3
    i32.const 16
    i32.add
    local.get 3
    i32.const 24
    i32.add
    local.get 3
    i32.const 72
    i32.add
    call 64
    local.get 3
    local.get 2
    i64.extend_i32_u
    i64.store offset=72
    local.get 3
    i32.const 8
    i32.add
    local.get 3
    i32.const 24
    i32.add
    local.get 3
    i32.const 72
    i32.add
    call 66
    local.get 3
    i32.load offset=12
    local.set 0
    local.get 3
    i32.load offset=16
    local.set 1
    local.get 3
    local.get 3
    i32.load offset=20
    local.tee 2
    i32.store offset=76
    local.get 3
    local.get 1
    i32.store offset=72
    block  ;; label = @1
      local.get 2
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load8_u offset=8
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 2
            i32.const 8
            i32.add
            i32.const 1
            i32.add
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          i32.const 16
          i32.add
          i32.load
          local.set 1
        end
        local.get 1
        call 4
        i32.const 8373
        call 4
        local.get 2
        i64.load32_u offset=20
        call 9
        i32.const 8378
        call 4
        local.get 3
        i32.const 72
        i32.add
        call 65
        drop
        local.get 3
        i32.load offset=76
        local.tee 2
        local.get 0
        i32.ne
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 3
      i32.load offset=56
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 60
          i32.add
          local.tee 5
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
            local.set 2
            local.get 1
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 2
                i32.load8_u offset=24
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.const 32
                i32.add
                i32.load
                call 72
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
                call 72
              end
              local.get 2
              call 72
            end
            local.get 0
            local.get 1
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const 56
          i32.add
          i32.load
          local.set 2
          br 1 (;@2;)
        end
        local.get 0
        local.set 2
      end
      local.get 5
      local.get 0
      i32.store
      local.get 2
      call 72
    end
    local.get 3
    i32.const 80
    i32.add
    global.set 0)
  (func (;49;) (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
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
            call 1
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 513
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            call 82
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
      call 2
      drop
    end
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 1
    i32.const 3
    i32.gt_u
    i32.const 8390
    call 0
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    i32.const 4
    call 3
    drop
    local.get 1
    i32.const -4
    i32.and
    i32.const 4
    i32.ne
    i32.const 8390
    call 0
    local.get 3
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    local.get 2
    i32.const 4
    i32.add
    i32.const 4
    call 3
    drop
    block  ;; label = @1
      local.get 1
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      call 85
    end
    local.get 0
    local.get 4
    i32.const 1
    i32.shr_s
    i32.add
    local.set 1
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 3
    i32.load offset=8
    local.set 0
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
    local.get 0
    local.get 2
    local.get 5
    call_indirect (type 0)
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    i32.const 1)
  (func (;50;) (type 1) (param i32 i64)
    i32.const 8256
    call 4
    local.get 1
    call 5)
  (func (;51;) (type 6) (param i32 i32) (result i32)
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
            call 1
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 513
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            call 82
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
      call 2
      drop
    end
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 1
    i32.const 7
    i32.gt_u
    i32.const 8390
    call 0
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    call 3
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
      call 85
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
    call_indirect (type 1)
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    i32.const 1)
  (func (;52;) (type 2) (param i32 i32)
    (local i32 i64 i64 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    i32.const 8356
    call 4
    local.get 1
    i64.extend_i32_u
    local.tee 3
    call 9
    i32.const 8371
    call 4
    local.get 2
    i32.const 56
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i64.const -1
    i64.store offset=40
    local.get 2
    i64.const 0
    i64.store offset=48
    local.get 2
    i32.const 0
    i32.store8 offset=60
    local.get 2
    local.get 0
    i64.load
    local.tee 4
    i64.store offset=24
    local.get 2
    local.get 4
    i64.store offset=32
    local.get 2
    local.get 2
    i32.const 24
    i32.add
    i32.store offset=16
    local.get 2
    local.get 3
    i64.store
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 16
    i32.add
    local.get 2
    call 64
    block  ;; label = @1
      local.get 2
      i32.load offset=12
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 1
        i32.ne
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=8
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 0
            i32.const 8
            i32.add
            i32.const 1
            i32.add
            local.set 5
            br 1 (;@3;)
          end
          local.get 0
          i32.const 16
          i32.add
          i32.load
          local.set 5
        end
        local.get 5
        call 4
        i32.const 8373
        call 4
        local.get 0
        i32.const 20
        i32.add
        i64.load32_u
        call 9
        i32.const 8378
        call 4
        local.get 2
        i32.const 8
        i32.add
        call 65
        drop
        local.get 2
        i32.load offset=12
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=48
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 52
          i32.add
          local.tee 6
          i32.load
          local.tee 5
          local.get 1
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
              block  ;; label = @6
                local.get 0
                i32.load8_u offset=24
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 32
                i32.add
                i32.load
                call 72
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u offset=8
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 16
                i32.add
                i32.load
                call 72
              end
              local.get 0
              call 72
            end
            local.get 1
            local.get 5
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 2
          i32.const 48
          i32.add
          i32.load
          local.set 0
          br 1 (;@2;)
        end
        local.get 1
        local.set 0
      end
      local.get 6
      local.get 1
      i32.store
      local.get 0
      call 72
    end
    local.get 2
    i32.const 64
    i32.add
    global.set 0)
  (func (;53;) (type 6) (param i32 i32) (result i32)
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
          call 82
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
    local.get 3
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 3
    i32.gt_u
    i32.const 8390
    call 0
    local.get 3
    i32.const 8
    i32.add
    local.get 6
    i32.const 4
    call 3
    drop
    local.get 3
    i32.load offset=8
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 6
      call 85
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
    local.get 5
    call_indirect (type 2)
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    i32.const 1)
  (func (;54;) (type 1) (param i32 i64)
    (local i32 i64 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    call 6
    local.get 2
    i32.const 32
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i64.const -1
    i64.store offset=16
    local.get 2
    i64.const 0
    i64.store offset=24
    local.get 2
    i32.const 0
    i32.store8 offset=36
    local.get 2
    local.get 0
    i64.load
    local.tee 3
    i64.store
    local.get 2
    local.get 3
    i64.store offset=8
    i32.const 0
    local.set 0
    block  ;; label = @1
      local.get 3
      local.get 3
      i64.const -5915276602496778240
      local.get 1
      call 7
      local.tee 4
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 2
      local.get 4
      call 59
      local.tee 0
      i32.load offset=36
      local.get 2
      i32.eq
      i32.const 8399
      call 0
    end
    local.get 0
    i32.const 0
    i32.ne
    local.tee 4
    i32.const 8286
    call 0
    local.get 4
    i32.const 8721
    call 0
    local.get 4
    i32.const 8755
    call 0
    block  ;; label = @1
      local.get 0
      i32.load offset=40
      local.get 2
      i32.const 40
      i32.add
      call 10
      local.tee 4
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 2
      local.get 4
      call 59
      drop
    end
    local.get 2
    local.get 0
    call 63
    local.get 1
    call 5
    i32.const 8346
    call 4
    block  ;; label = @1
      local.get 2
      i32.load offset=24
      local.tee 5
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 28
          i32.add
          local.tee 6
          i32.load
          local.tee 4
          local.get 5
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 4
            i32.const -24
            i32.add
            local.tee 4
            i32.load
            local.set 0
            local.get 4
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 0
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 0
                i32.load8_u offset=24
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 32
                i32.add
                i32.load
                call 72
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u offset=8
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 16
                i32.add
                i32.load
                call 72
              end
              local.get 0
              call 72
            end
            local.get 5
            local.get 4
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 2
          i32.const 24
          i32.add
          i32.load
          local.set 0
          br 1 (;@2;)
        end
        local.get 5
        local.set 0
      end
      local.get 6
      local.get 5
      i32.store
      local.get 0
      call 72
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;55;) (type 3) (param i32 i64 i32 i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 3
    i32.store offset=60
    local.get 1
    call 6
    local.get 5
    i32.const 48
    i32.add
    i32.const 0
    i32.store
    local.get 5
    i64.const -1
    i64.store offset=32
    local.get 5
    i64.const 0
    i64.store offset=40
    local.get 5
    i32.const 0
    i32.store8 offset=52
    local.get 5
    local.get 0
    i64.load
    local.tee 6
    i64.store offset=16
    local.get 5
    local.get 6
    i64.store offset=24
    i32.const 0
    local.set 0
    block  ;; label = @1
      local.get 6
      local.get 6
      i64.const -5915276602496778240
      local.get 1
      call 7
      local.tee 3
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 5
      i32.const 16
      i32.add
      local.get 3
      call 59
      local.tee 0
      i32.load offset=36
      local.get 5
      i32.const 16
      i32.add
      i32.eq
      i32.const 8399
      call 0
    end
    local.get 0
    i32.const 0
    i32.ne
    local.tee 3
    i32.const 8286
    call 0
    local.get 5
    local.get 2
    i32.store
    local.get 5
    local.get 4
    i32.store offset=8
    local.get 5
    local.get 5
    i32.const 60
    i32.add
    i32.store offset=4
    local.get 3
    i32.const 8530
    call 0
    local.get 5
    i32.const 16
    i32.add
    local.get 0
    local.get 1
    local.get 5
    call 62
    block  ;; label = @1
      local.get 5
      i32.load offset=40
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.const 44
          i32.add
          local.tee 3
          i32.load
          local.tee 2
          local.get 4
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 2
            i32.const -24
            i32.add
            local.tee 2
            i32.load
            local.set 0
            local.get 2
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 0
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 0
                i32.load8_u offset=24
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 32
                i32.add
                i32.load
                call 72
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u offset=8
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 16
                i32.add
                i32.load
                call 72
              end
              local.get 0
              call 72
            end
            local.get 4
            local.get 2
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 5
          i32.const 40
          i32.add
          i32.load
          local.set 0
          br 1 (;@2;)
        end
        local.get 4
        local.set 0
      end
      local.get 3
      local.get 4
      i32.store
      local.get 0
      call 72
    end
    local.get 5
    i32.const 64
    i32.add
    global.set 0)
  (func (;56;) (type 1) (param i32 i64)
    (local i32 i64 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
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
    local.tee 3
    i64.store offset=8
    local.get 2
    local.get 3
    i64.store offset=16
    i32.const 0
    local.set 0
    block  ;; label = @1
      local.get 3
      local.get 3
      i64.const -5915276602496778240
      local.get 1
      call 7
      local.tee 4
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 2
      i32.const 8
      i32.add
      local.get 4
      call 59
      local.tee 0
      i32.load offset=36
      local.get 2
      i32.const 8
      i32.add
      i32.eq
      i32.const 8399
      call 0
    end
    local.get 0
    i32.const 0
    i32.ne
    i32.const 8286
    call 0
    local.get 0
    i64.load
    local.set 3
    i32.const 8309
    call 4
    local.get 3
    call 5
    i32.const 8319
    call 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=8
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.const 1
        i32.add
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      i32.const 16
      i32.add
      i32.load
      local.set 4
    end
    i32.const 8323
    call 4
    local.get 4
    call 4
    i32.const 8319
    call 4
    i32.const 8334
    call 4
    local.get 0
    i64.load32_u offset=20
    call 9
    i32.const 8319
    call 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=24
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 0
        i32.const 24
        i32.add
        i32.const 1
        i32.add
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.const 32
      i32.add
      i32.load
      local.set 0
    end
    i32.const 8340
    call 4
    local.get 0
    call 4
    block  ;; label = @1
      local.get 2
      i32.load offset=32
      local.tee 5
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 36
          i32.add
          local.tee 6
          i32.load
          local.tee 4
          local.get 5
          i32.eq
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 4
            i32.const -24
            i32.add
            local.tee 4
            i32.load
            local.set 0
            local.get 4
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 0
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 0
                i32.load8_u offset=24
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 32
                i32.add
                i32.load
                call 72
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u offset=8
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 16
                i32.add
                i32.load
                call 72
              end
              local.get 0
              call 72
            end
            local.get 5
            local.get 4
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
        local.get 5
        local.set 0
      end
      local.get 6
      local.get 5
      i32.store
      local.get 0
      call 72
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;57;) (type 6) (param i32 i32) (result i32)
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
    call 67
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
                call 70
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
              call 78
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
          call 78
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
        call 74
        unreachable
      end
      local.get 2
      local.get 3
      i32.store offset=20
      local.get 3
      call 72
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func (;58;) (type 2) (param i32 i32)
    (local i32 i64 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i64.load
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    i32.const 8
    i32.add
    call 75
    local.set 4
    local.get 1
    i32.load offset=20
    local.set 5
    local.get 2
    local.get 1
    i32.const 24
    i32.add
    call 75
    local.set 1
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
    local.get 3
    local.get 4
    local.get 5
    local.get 1
    local.get 0
    call_indirect (type 3)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load8_u
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.load8_u
          i32.const 1
          i32.and
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 1
        i32.load offset=8
        call 72
        local.get 4
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 4
      i32.load offset=8
      call 72
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
  (func (;59;) (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i32)
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
    call 13
    local.tee 4
    i32.const 31
    i32.shr_u
    i32.const 1
    i32.xor
    i32.const 8450
    call 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        call 82
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      local.get 4
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 2
      global.set 0
    end
    local.get 1
    local.get 2
    local.get 4
    call 13
    drop
    local.get 3
    local.get 2
    local.get 4
    i32.add
    i32.store offset=40
    local.get 3
    local.get 2
    i32.store offset=32
    i32.const 48
    call 70
    local.tee 5
    i32.const 0
    i32.store offset=16
    local.get 5
    i64.const 0
    i64.store offset=8 align=4
    local.get 5
    i64.const 0
    i64.store offset=24 align=4
    local.get 5
    i32.const 0
    i32.store offset=32
    local.get 5
    local.get 0
    i32.store offset=36
    local.get 4
    i32.const 7
    i32.gt_u
    i32.const 8390
    call 0
    local.get 5
    local.get 2
    i32.const 8
    call 3
    drop
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=36
    local.get 3
    i32.const 32
    i32.add
    local.get 5
    i32.const 8
    i32.add
    call 57
    local.tee 6
    i32.load offset=8
    local.get 6
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_u
    i32.const 8390
    call 0
    local.get 5
    i32.const 20
    i32.add
    local.get 6
    i32.load offset=4
    i32.const 4
    call 3
    drop
    local.get 6
    local.get 6
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 6
    local.get 5
    i32.const 24
    i32.add
    call 57
    drop
    local.get 5
    i32.const -1
    i32.store offset=44
    local.get 5
    local.get 1
    i32.store offset=40
    local.get 3
    local.get 5
    i32.store offset=24
    local.get 3
    local.get 5
    i64.load
    local.tee 7
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
          local.tee 8
          i32.load
          local.tee 6
          local.get 0
          i32.const 32
          i32.add
          i32.load
          i32.ge_u
          br_if 0 (;@3;)
          local.get 6
          local.get 7
          i64.store offset=8
          local.get 6
          local.get 1
          i32.store offset=16
          local.get 3
          i32.const 0
          i32.store offset=24
          local.get 6
          local.get 5
          i32.store
          local.get 8
          local.get 6
          i32.const 24
          i32.add
          i32.store
          local.get 4
          i32.const 513
          i32.ge_u
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i32.const 24
        i32.add
        local.get 3
        i32.const 24
        i32.add
        local.get 3
        i32.const 16
        i32.add
        local.get 3
        i32.const 12
        i32.add
        call 61
        local.get 4
        i32.const 513
        i32.lt_u
        br_if 1 (;@1;)
      end
      local.get 2
      call 85
    end
    local.get 3
    i32.load offset=24
    local.set 1
    local.get 3
    i32.const 0
    i32.store offset=24
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.load8_u offset=24
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 32
        i32.add
        i32.load
        call 72
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
        call 72
      end
      local.get 1
      call 72
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 5)
  (func (;60;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i32 i64 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    local.set 3
    local.get 2
    global.set 0
    local.get 1
    local.get 0
    i32.load offset=4
    local.tee 4
    i32.load
    i64.load
    i64.store
    local.get 0
    i32.load
    local.set 5
    local.get 1
    i32.const 8
    i32.add
    local.tee 6
    local.get 4
    i32.load offset=4
    call 76
    drop
    local.get 1
    local.get 4
    i32.load offset=8
    i32.load
    i32.store offset=20
    local.get 1
    i32.const 24
    i32.add
    local.tee 7
    local.get 4
    i32.load offset=12
    call 76
    drop
    local.get 1
    i32.const 12
    i32.add
    i32.load
    local.get 1
    i32.load8_u offset=8
    local.tee 4
    i32.const 1
    i32.shr_u
    local.get 4
    i32.const 1
    i32.and
    select
    local.tee 8
    i32.const 12
    i32.add
    local.set 4
    local.get 8
    i64.extend_i32_u
    local.set 9
    local.get 1
    i32.const 20
    i32.add
    local.set 8
    loop  ;; label = @1
      local.get 4
      i32.const 1
      i32.add
      local.set 4
      local.get 9
      i64.const 7
      i64.shr_u
      local.tee 9
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.get 1
    i32.const 24
    i32.add
    i32.load8_u
    local.tee 10
    i32.const 1
    i32.shr_u
    local.get 10
    i32.const 1
    i32.and
    select
    local.tee 10
    local.get 4
    i32.add
    local.set 4
    local.get 10
    i64.extend_i32_u
    local.set 9
    loop  ;; label = @1
      local.get 4
      i32.const 1
      i32.add
      local.set 4
      local.get 9
      i64.const 7
      i64.shr_u
      local.tee 9
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
        call 82
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      local.get 4
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 2
      global.set 0
    end
    local.get 3
    local.get 2
    i32.store offset=8
    local.get 3
    local.get 2
    local.get 4
    i32.add
    i32.store offset=16
    local.get 4
    i32.const 7
    i32.gt_s
    i32.const 8524
    call 0
    local.get 2
    local.get 1
    i32.const 8
    call 3
    drop
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=12
    local.get 3
    i32.const 8
    i32.add
    local.get 6
    call 69
    local.tee 6
    i32.load offset=8
    local.get 6
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 8524
    call 0
    local.get 6
    i32.load offset=4
    local.get 8
    i32.const 4
    call 3
    drop
    local.get 6
    local.get 6
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 6
    local.get 7
    call 69
    drop
    local.get 1
    local.get 5
    i64.load offset=8
    i64.const -5915276602496778240
    local.get 0
    i32.load offset=8
    i64.load
    local.get 1
    i64.load
    local.tee 9
    local.get 2
    local.get 4
    call 14
    i32.store offset=40
    block  ;; label = @1
      local.get 4
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      call 85
    end
    block  ;; label = @1
      local.get 9
      local.get 5
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 5
      i32.const 16
      i32.add
      i64.const -2
      local.get 9
      i64.const 1
      i64.add
      local.get 9
      i64.const -3
      i64.gt_u
      select
      i64.store
    end
    local.get 5
    i32.const 8
    i32.add
    i64.load
    local.set 9
    local.get 0
    i32.const 8
    i32.add
    i32.load
    i64.load
    local.set 11
    local.get 1
    i64.load
    local.set 12
    local.get 3
    local.get 1
    i32.const 20
    i32.add
    i64.load32_u
    i64.store offset=24
    local.get 1
    local.get 9
    i64.const -5915276602496778240
    local.get 11
    local.get 12
    local.get 3
    i32.const 24
    i32.add
    call 15
    i32.store offset=44
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;61;) (type 25) (param i32 i32 i32 i32)
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
          call 70
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
      call 79
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
            i32.load8_u offset=24
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 32
            i32.add
            i32.load
            call 72
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
            call 72
          end
          local.get 1
          call 72
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
      call 72
    end)
  (func (;62;) (type 26) (param i32 i32 i64 i32)
    (local i32 i32 i32 i64 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    local.get 1
    i32.load offset=36
    local.get 0
    i32.eq
    i32.const 8565
    call 0
    local.get 0
    i64.load
    call 8
    i64.eq
    i32.const 8611
    call 0
    local.get 4
    local.tee 5
    local.get 1
    i32.const 20
    i32.add
    local.tee 6
    i64.load32_u
    i64.store offset=24
    local.get 1
    i64.load
    local.set 7
    local.get 1
    i32.const 8
    i32.add
    local.tee 8
    local.get 3
    i32.load
    call 76
    drop
    local.get 6
    local.get 3
    i32.load offset=4
    i32.load
    i32.store
    local.get 1
    i32.const 24
    i32.add
    local.tee 9
    local.get 3
    i32.load offset=8
    call 76
    drop
    local.get 7
    local.get 1
    i64.load
    i64.eq
    i32.const 8662
    call 0
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
    local.tee 10
    i32.const 12
    i32.add
    local.set 3
    local.get 10
    i64.extend_i32_u
    local.set 11
    loop  ;; label = @1
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 11
      i64.const 7
      i64.shr_u
      local.tee 11
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.get 1
    i32.const 24
    i32.add
    i32.load8_u
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
    local.set 11
    loop  ;; label = @1
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 11
      i64.const 7
      i64.shr_u
      local.tee 11
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
        call 82
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
    i32.store offset=8
    local.get 5
    local.get 4
    local.get 3
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 7
    i32.gt_s
    i32.const 8524
    call 0
    local.get 4
    local.get 1
    i32.const 8
    call 3
    drop
    local.get 5
    local.get 4
    i32.const 8
    i32.add
    i32.store offset=12
    local.get 5
    i32.const 8
    i32.add
    local.get 8
    call 69
    local.tee 8
    i32.load offset=8
    local.get 8
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 8524
    call 0
    local.get 8
    i32.load offset=4
    local.get 6
    i32.const 4
    call 3
    drop
    local.get 8
    local.get 8
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 8
    local.get 9
    call 69
    drop
    local.get 1
    i32.load offset=40
    local.get 2
    local.get 4
    local.get 3
    call 16
    block  ;; label = @1
      local.get 3
      i32.const 513
      i32.lt_u
      br_if 0 (;@1;)
      local.get 4
      call 85
    end
    block  ;; label = @1
      local.get 7
      local.get 0
      i64.load offset=16
      i64.lt_u
      br_if 0 (;@1;)
      local.get 0
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
    local.get 5
    local.get 6
    i64.load32_u
    i64.store offset=40
    block  ;; label = @1
      local.get 5
      i32.const 24
      i32.add
      local.get 5
      i32.const 40
      i32.add
      i32.const 8
      call 81
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.load offset=44
        local.tee 3
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 1
        i32.const 44
        i32.add
        local.get 0
        i64.load
        local.get 0
        i64.load offset=8
        i64.const -5915276602496778240
        local.get 5
        i32.const 32
        i32.add
        local.get 7
        call 11
        local.tee 3
        i32.store
      end
      local.get 3
      local.get 2
      local.get 5
      i32.const 40
      i32.add
      call 17
    end
    local.get 5
    i32.const 48
    i32.add
    global.set 0)
  (func (;63;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=36
    local.get 0
    i32.eq
    i32.const 8785
    call 0
    local.get 0
    i64.load
    call 8
    i64.eq
    i32.const 8830
    call 0
    local.get 0
    i32.load offset=24
    local.tee 3
    local.set 4
    block  ;; label = @1
      local.get 3
      local.get 0
      i32.const 28
      i32.add
      local.tee 5
      i32.load
      local.tee 6
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 6
        i32.const -24
        i32.add
        i32.load
        i64.load
        local.get 1
        i64.load
        local.tee 7
        i64.ne
        br_if 0 (;@2;)
        local.get 6
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.const 24
      i32.add
      local.set 8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 8
          local.get 6
          i32.eq
          br_if 1 (;@2;)
          local.get 6
          i32.const -48
          i32.add
          local.set 9
          local.get 6
          i32.const -24
          i32.add
          local.tee 4
          local.set 6
          local.get 9
          i32.load
          i64.load
          local.get 7
          i64.ne
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 3
      local.set 4
    end
    local.get 4
    local.get 3
    i32.ne
    i32.const 8880
    call 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          local.get 5
          i32.load
          local.tee 3
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          local.set 6
          loop  ;; label = @4
            local.get 6
            i32.load
            local.set 9
            local.get 6
            i32.const 0
            i32.store
            local.get 6
            i32.const -24
            i32.add
            local.tee 8
            i32.load
            local.set 4
            local.get 8
            local.get 9
            i32.store
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                i32.load8_u offset=24
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.const 32
                i32.add
                i32.load
                call 72
              end
              block  ;; label = @6
                local.get 4
                i32.load8_u offset=8
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.const 16
                i32.add
                i32.load
                call 72
              end
              local.get 4
              call 72
            end
            local.get 6
            i32.const -8
            i32.add
            local.get 6
            i32.const 16
            i32.add
            i32.load
            i32.store
            local.get 6
            i32.const -16
            i32.add
            local.get 6
            i32.const 8
            i32.add
            i64.load
            i64.store
            local.get 3
            local.get 6
            i32.const 24
            i32.add
            local.tee 6
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 6
          i32.const -24
          i32.add
          local.set 9
          local.get 0
          i32.const 28
          i32.add
          i32.load
          local.tee 4
          i32.const 24
          i32.add
          local.get 6
          i32.ne
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 4
        i32.const -24
        i32.add
        local.set 9
      end
      loop  ;; label = @2
        local.get 4
        i32.const -24
        i32.add
        local.tee 4
        i32.load
        local.set 6
        local.get 4
        i32.const 0
        i32.store
        block  ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 6
            i32.load8_u offset=24
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 32
            i32.add
            i32.load
            call 72
          end
          block  ;; label = @4
            local.get 6
            i32.load8_u offset=8
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 16
            i32.add
            i32.load
            call 72
          end
          local.get 6
          call 72
        end
        local.get 9
        local.get 4
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 28
    i32.add
    local.get 9
    i32.store
    local.get 1
    i32.load offset=40
    call 18
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=44
        local.tee 6
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        i64.load
        local.get 0
        i64.load offset=8
        i64.const -5915276602496778240
        local.get 2
        i32.const 8
        i32.add
        local.get 1
        i64.load
        call 11
        local.tee 6
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
      end
      local.get 6
      call 19
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;64;) (type 0) (param i32 i32 i32)
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
      i64.const -5915276602496778240
      local.get 3
      local.get 3
      i32.const 8
      i32.add
      call 20
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
          i32.load offset=36
          local.get 7
          i32.eq
          i32.const 8399
          call 0
          br 1 (;@2;)
        end
        local.get 7
        local.get 7
        i64.load
        local.get 7
        i64.load offset=8
        i64.const -5915276602496778240
        local.get 6
        call 7
        call 59
        local.tee 4
        i32.load offset=36
        local.get 7
        i32.eq
        i32.const 8399
        call 0
      end
      local.get 4
      local.get 5
      i32.store offset=44
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
  (func (;65;) (type 27) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    i32.const 0
    local.set 2
    local.get 0
    i32.load offset=4
    i32.const 0
    i32.ne
    i32.const 8755
    call 0
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 3
      i32.load offset=44
      local.tee 4
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.load
      i32.load
      local.tee 4
      i64.load
      local.get 4
      i64.load offset=8
      i64.const -5915276602496778240
      local.get 1
      i32.const 8
      i32.add
      local.get 3
      i64.load
      call 11
      local.set 4
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.get 4
      i32.store offset=44
    end
    local.get 1
    i64.const 0
    i64.store offset=8
    block  ;; label = @1
      local.get 4
      local.get 1
      i32.const 8
      i32.add
      call 12
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
              local.tee 4
              i32.load
              local.tee 2
              i64.load
              local.get 6
              i64.eq
              br_if 1 (;@4;)
              local.get 4
              local.set 3
              local.get 8
              local.get 4
              i32.ne
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 8
          local.get 3
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=36
          local.get 7
          i32.eq
          i32.const 8399
          call 0
          br 1 (;@2;)
        end
        local.get 7
        local.get 7
        i64.load
        local.get 7
        i64.load offset=8
        i64.const -5915276602496778240
        local.get 6
        call 7
        call 59
        local.tee 2
        i32.load offset=36
        local.get 7
        i32.eq
        i32.const 8399
        call 0
      end
      local.get 2
      local.get 5
      i32.store offset=44
    end
    local.get 0
    i32.const 4
    i32.add
    local.get 2
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;66;) (type 0) (param i32 i32 i32)
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
      i64.const -5915276602496778240
      local.get 3
      local.get 3
      i32.const 8
      i32.add
      call 21
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
          i32.load offset=36
          local.get 7
          i32.eq
          i32.const 8399
          call 0
          br 1 (;@2;)
        end
        local.get 7
        local.get 7
        i64.load
        local.get 7
        i64.load offset=8
        i64.const -5915276602496778240
        local.get 6
        call 7
        call 59
        local.tee 4
        i32.load offset=36
        local.get 7
        i32.eq
        i32.const 8399
        call 0
      end
      local.get 4
      local.get 5
      i32.store offset=44
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
  (func (;67;) (type 6) (param i32 i32) (result i32)
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
      i32.const 8395
      call 0
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
        call 68
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
    i32.const 8390
    call 0
    local.get 7
    local.get 0
    i32.const 4
    i32.add
    local.tee 3
    i32.load
    local.get 2
    call 3
    drop
    local.get 3
    local.get 3
    i32.load
    local.get 2
    i32.add
    i32.store
    local.get 0)
  (func (;68;) (type 2) (param i32 i32)
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
              call 70
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
        call 79
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
      call 72
      return
    end)
  (func (;69;) (type 6) (param i32 i32) (result i32)
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
      i32.const 8524
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
      i32.const 8524
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
  (func (;70;) (type 27) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      local.get 0
      select
      local.tee 1
      call 82
      local.tee 0
      br_if 0 (;@1;)
      loop  ;; label = @2
        i32.const 0
        local.set 0
        i32.const 0
        i32.load offset=8936
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call_indirect (type 4)
        local.get 1
        call 82
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;71;) (type 27) (param i32) (result i32)
    local.get 0
    call 70)
  (func (;72;) (type 8) (param i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 85
    end)
  (func (;73;) (type 8) (param i32)
    local.get 0
    call 72)
  (func (;74;) (type 8) (param i32)
    call 22
    unreachable)
  (func (;75;) (type 6) (param i32 i32) (result i32)
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
        call 70
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
      call 3
      drop
      local.get 1
      local.get 2
      i32.add
      i32.const 0
      i32.store8
      local.get 0
      return
    end
    call 22
    unreachable)
  (func (;76;) (type 6) (param i32 i32) (result i32)
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
            call 77
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
      call 24
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
  (func (;77;) (type 28) (param i32 i32 i32 i32 i32 i32 i32 i32)
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
      call 70
      local.set 2
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 8
        local.get 4
        call 3
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
        call 3
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
        call 3
        drop
      end
      block  ;; label = @2
        local.get 1
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 8
        call 72
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
    call 22
    unreachable)
  (func (;78;) (type 2) (param i32 i32)
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
                  call 70
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
          call 22
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
      call 3
      drop
    end
    block  ;; label = @1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      call 72
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
  (func (;79;) (type 8) (param i32)
    call 22
    unreachable)
  (func (;80;) (type 8) (param i32))
  (func (;81;) (type 7) (param i32 i32 i32) (result i32)
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
  (func (;82;) (type 27) (param i32) (result i32)
    i32.const 8948
    local.get 0
    call 83)
  (func (;83;) (type 6) (param i32 i32) (result i32)
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
              call 84
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
            i32.const 17344
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
  (func (;84;) (type 27) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8388
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=8940
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=8944
        local.set 2
        br 1 (;@1;)
      end
      memory.size
      local.set 2
      i32.const 0
      i32.const 1
      i32.store8 offset=8940
      i32.const 0
      local.get 2
      i32.const 16
      i32.shl
      local.tee 2
      i32.store offset=8944
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
            i32.load offset=8944
            local.set 3
          end
          i32.const 0
          local.set 5
          i32.const 0
          local.get 3
          i32.store offset=8944
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
            i32.load8_u offset=8940
            br_if 0 (;@4;)
            memory.size
            local.set 3
            i32.const 0
            i32.const 1
            i32.store8 offset=8940
            i32.const 0
            local.get 3
            i32.const 16
            i32.shl
            local.tee 3
            i32.store offset=8944
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
            i32.load offset=8944
            local.set 6
          end
          i32.const 0
          local.get 6
          local.get 7
          i32.add
          i32.store offset=8944
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
  (func (;85;) (type 8) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=17332
        local.tee 1
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 17140
        local.set 2
        local.get 1
        i32.const 12
        i32.mul
        i32.const 17140
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
  (table (;0;) 8 8 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 8192))
  (global (;1;) i32 (i32.const 17430))
  (global (;2;) i32 (i32.const 17430))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "apply" (func 45))
  (export "_ZdlPv" (func 72))
  (export "_Znwj" (func 70))
  (export "_Znaj" (func 71))
  (export "_ZdaPv" (func 73))
  (elem (;0;) (i32.const 1) func 46 48 50 52 54 55 56)
  (data (;0;) (i32.const 8192) "onerror action's are only valid from the \22eosio\22 system account\00")
  (data (;1;) (i32.const 8256) "Hello \00")
  (data (;2;) (i32.const 8263) "Account already exists\00")
  (data (;3;) (i32.const 8286) "Account does not exist\00")
  (data (;4;) (i32.const 8309) "Account: \00")
  (data (;5;) (i32.const 8319) " , \00")
  (data (;6;) (i32.const 8323) "Username: \00")
  (data (;7;) (i32.const 8334) "Age: \00")
  (data (;8;) (i32.const 8340) "Bio: \00")
  (data (;9;) (i32.const 8346) " deleted!\00")
  (data (;10;) (i32.const 8356) "Checking age: \00")
  (data (;11;) (i32.const 8371) "\0a\00")
  (data (;12;) (i32.const 8373) " is \00")
  (data (;13;) (i32.const 8378) " years old\0a\00")
  (data (;14;) (i32.const 8390) "read\00")
  (data (;15;) (i32.const 8395) "get\00")
  (data (;16;) (i32.const 8399) "object passed to iterator_to is not in multi_index\00")
  (data (;17;) (i32.const 8450) "error reading iterator\00")
  (data (;18;) (i32.const 8473) "cannot create objects in table of another contract\00")
  (data (;19;) (i32.const 8524) "write\00")
  (data (;20;) (i32.const 8530) "cannot pass end iterator to modify\00")
  (data (;21;) (i32.const 8565) "object passed to modify is not in multi_index\00")
  (data (;22;) (i32.const 8611) "cannot modify objects in table of another contract\00")
  (data (;23;) (i32.const 8662) "updater cannot change primary key when modifying an object\00")
  (data (;24;) (i32.const 8721) "cannot pass end iterator to erase\00")
  (data (;25;) (i32.const 8755) "cannot increment end iterator\00")
  (data (;26;) (i32.const 8785) "object passed to erase is not in multi_index\00")
  (data (;27;) (i32.const 8830) "cannot erase objects in table of another contract\00")
  (data (;28;) (i32.const 8880) "attempt to remove object that was not in multi_index\00")
  (data (;29;) (i32.const 17344) "malloc_from_freed was designed to only be called after _heap was completely allocated\00"))
