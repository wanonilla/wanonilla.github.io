(module
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i64 i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i64)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (param i64 i64 i64 i64) (result i32)))
  (type (;10;) (func (result i64)))
  (type (;11;) (func (param i32 i64 i32 i32)))
  (type (;12;) (func (param i64 i64 i64 i64 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i64 i64 i64 i64)))
  (type (;14;) (func (param i64 i64) (result i32)))
  (type (;15;) (func (param i32 f64)))
  (type (;16;) (func (param i32 f32)))
  (type (;17;) (func (param i64 i64) (result f64)))
  (type (;18;) (func (param i64 i64) (result f32)))
  (type (;19;) (func (param i64 i64 i64)))
  (type (;20;) (func (param i32 i32 i64 i32)))
  (type (;21;) (func (param i32 i32 i64)))
  (type (;22;) (func (param i32 i32 i32 i32)))
  (type (;23;) (func (param i32 i32) (result i64)))
  (type (;24;) (func (param i32) (result i32)))
  (type (;25;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
  (import "env" "eosio_assert" (func (;0;) (type 3)))
  (import "env" "action_data_size" (func (;1;) (type 4)))
  (import "env" "read_action_data" (func (;2;) (type 5)))
  (import "env" "memcpy" (func (;3;) (type 6)))
  (import "env" "require_auth" (func (;4;) (type 7)))
  (import "env" "prints" (func (;5;) (type 8)))
  (import "env" "printui" (func (;6;) (type 7)))
  (import "env" "db_find_i64" (func (;7;) (type 9)))
  (import "env" "current_time" (func (;8;) (type 10)))
  (import "env" "current_receiver" (func (;9;) (type 10)))
  (import "env" "db_get_i64" (func (;10;) (type 6)))
  (import "env" "db_update_i64" (func (;11;) (type 11)))
  (import "env" "db_store_i64" (func (;12;) (type 12)))
  (import "env" "abort" (func (;13;) (type 2)))
  (import "env" "memset" (func (;14;) (type 6)))
  (import "env" "memmove" (func (;15;) (type 6)))
  (import "env" "__unordtf2" (func (;16;) (type 9)))
  (import "env" "__eqtf2" (func (;17;) (type 9)))
  (import "env" "__multf3" (func (;18;) (type 13)))
  (import "env" "__addtf3" (func (;19;) (type 13)))
  (import "env" "__subtf3" (func (;20;) (type 13)))
  (import "env" "__netf2" (func (;21;) (type 9)))
  (import "env" "__fixunstfsi" (func (;22;) (type 14)))
  (import "env" "__floatunsitf" (func (;23;) (type 3)))
  (import "env" "__fixtfsi" (func (;24;) (type 14)))
  (import "env" "__floatsitf" (func (;25;) (type 3)))
  (import "env" "__extenddftf2" (func (;26;) (type 15)))
  (import "env" "__extendsftf2" (func (;27;) (type 16)))
  (import "env" "__divtf3" (func (;28;) (type 13)))
  (import "env" "__letf2" (func (;29;) (type 9)))
  (import "env" "__trunctfdf2" (func (;30;) (type 17)))
  (import "env" "__getf2" (func (;31;) (type 9)))
  (import "env" "__trunctfsf2" (func (;32;) (type 18)))
  (import "env" "set_blockchain_parameters_packed" (func (;33;) (type 3)))
  (import "env" "get_blockchain_parameters_packed" (func (;34;) (type 5)))
  (func (;35;) (type 2))
  (func (;36;) (type 19) (param i64 i64 i64)
    (local i32 i64 i32 i32 i32 i32)
    global.get 0
    i32.const 208
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
      i32.const 136
      i32.add
      local.get 0
      i64.store
      local.get 3
      i32.const 144
      i32.add
      i64.const -1
      i64.store
      local.get 3
      i32.const 152
      i32.add
      i64.const 0
      i64.store
      local.get 3
      i32.const 160
      i32.add
      i32.const 0
      i32.store
      local.get 3
      i32.const 176
      i32.add
      local.get 0
      i64.store
      local.get 3
      i32.const 184
      i32.add
      i64.const -1
      i64.store
      local.get 3
      i32.const 192
      i32.add
      i64.const 0
      i64.store
      local.get 3
      i32.const 200
      i32.add
      i32.const 0
      i32.store
      local.get 3
      local.get 0
      i64.store offset=128
      local.get 3
      local.get 0
      i64.store offset=120
      local.get 3
      local.get 0
      i64.store offset=168
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        i64.const 3966832710906806271
                        i64.le_s
                        br_if 0 (;@10;)
                        local.get 2
                        i64.const 5031766163945160703
                        i64.gt_s
                        br_if 1 (;@9;)
                        local.get 2
                        i64.const 3966832710906806272
                        i64.eq
                        br_if 3 (;@7;)
                        local.get 2
                        i64.const 4220811163761377280
                        i64.ne
                        br_if 2 (;@8;)
                        local.get 3
                        i32.const 0
                        i32.store offset=92
                        local.get 3
                        i32.const 1
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
                        call 38
                        drop
                        local.get 3
                        i32.const 192
                        i32.add
                        i32.load
                        local.tee 5
                        br_if 7 (;@3;)
                        br 8 (;@2;)
                      end
                      local.get 2
                      i64.const -6030906305282048000
                      i64.eq
                      br_if 3 (;@6;)
                      local.get 2
                      i64.const -3075276115275153408
                      i64.eq
                      br_if 4 (;@5;)
                      local.get 2
                      i64.const -2184005390763556864
                      i64.ne
                      br_if 1 (;@8;)
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
                      call 38
                      drop
                      local.get 3
                      i32.const 192
                      i32.add
                      i32.load
                      local.tee 5
                      br_if 6 (;@3;)
                      br 7 (;@2;)
                    end
                    local.get 2
                    i64.const 6527011819733647360
                    i64.eq
                    br_if 4 (;@4;)
                    local.get 2
                    i64.const 5031766163945160704
                    i64.ne
                    br_if 0 (;@8;)
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
                    call 41
                    drop
                  end
                  local.get 3
                  i32.const 192
                  i32.add
                  i32.load
                  local.tee 5
                  i32.eqz
                  br_if 5 (;@2;)
                  br 4 (;@3;)
                end
                local.get 3
                i32.const 0
                i32.store offset=84
                local.get 3
                i32.const 4
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
                call 38
                drop
                local.get 3
                i32.const 192
                i32.add
                i32.load
                local.tee 5
                br_if 3 (;@3;)
                br 4 (;@2;)
              end
              local.get 3
              i32.const 0
              i32.store offset=76
              local.get 3
              i32.const 5
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
              call 38
              drop
              local.get 3
              i32.const 192
              i32.add
              i32.load
              local.tee 5
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            local.get 3
            i32.const 0
            i32.store offset=108
            local.get 3
            i32.const 6
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
            call 45
            drop
            local.get 3
            i32.const 192
            i32.add
            i32.load
            local.tee 5
            br_if 1 (;@3;)
            br 2 (;@2;)
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
          call 38
          drop
          local.get 3
          i32.const 192
          i32.add
          i32.load
          local.tee 5
          i32.eqz
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 196
            i32.add
            local.tee 6
            i32.load
            local.tee 7
            local.get 5
            i32.eq
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 7
              i32.const -24
              i32.add
              local.tee 7
              i32.load
              local.set 8
              local.get 7
              i32.const 0
              i32.store
              block  ;; label = @6
                local.get 8
                i32.eqz
                br_if 0 (;@6;)
                local.get 8
                call 73
              end
              local.get 5
              local.get 7
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 3
            i32.const 192
            i32.add
            i32.load
            local.set 7
            br 1 (;@3;)
          end
          local.get 5
          local.set 7
        end
        local.get 6
        local.get 5
        i32.store
        local.get 7
        call 73
      end
      local.get 3
      i32.const 152
      i32.add
      i32.load
      local.tee 5
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 156
          i32.add
          local.tee 6
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
            local.set 8
            local.get 7
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 8
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 8
                i32.load8_u offset=16
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 8
                i32.const 24
                i32.add
                i32.load
                call 73
              end
              local.get 8
              call 73
            end
            local.get 5
            local.get 7
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const 152
          i32.add
          i32.load
          local.set 7
          br 1 (;@2;)
        end
        local.get 5
        local.set 7
      end
      local.get 6
      local.get 5
      i32.store
      local.get 7
      call 73
    end
    i32.const 0
    call 81
    local.get 3
    i32.const 208
    i32.add
    global.set 0)
  (func (;37;) (type 0) (param i32 i64)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.const 8
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 32
        i32.add
        i32.load
        local.tee 4
        local.get 0
        i32.const 36
        i32.add
        i32.load
        local.tee 5
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            i32.const -24
            i32.add
            local.tee 6
            i32.load
            local.tee 7
            i64.load
            local.get 1
            i64.eq
            br_if 1 (;@3;)
            local.get 6
            local.set 5
            local.get 4
            local.get 6
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 4
        local.get 5
        i32.eq
        br_if 0 (;@2;)
        local.get 7
        i32.load offset=76
        local.get 3
        i32.eq
        i32.const 8269
        call 0
        br 1 (;@1;)
      end
      i32.const 0
      local.set 7
      local.get 3
      i64.load
      local.get 0
      i32.const 16
      i32.add
      i64.load
      i64.const -6146428328942239744
      local.get 1
      call 7
      local.tee 6
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 3
      local.get 6
      call 51
      local.tee 7
      i32.load offset=76
      local.get 3
      i32.eq
      i32.const 8269
      call 0
    end
    local.get 7
    i32.const 0
    i32.ne
    local.tee 5
    i32.const 8708
    call 0
    local.get 2
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.tee 6
    local.get 7
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 7
    i64.load
    i64.store offset=16
    local.get 2
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    local.get 7
    i32.const 16
    i32.add
    call 76
    local.set 4
    local.get 2
    i32.const 16
    i32.add
    i32.const 68
    i32.add
    local.get 7
    i32.const 68
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 2
    i32.const 16
    i32.add
    i32.const 60
    i32.add
    local.get 7
    i32.const 60
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 2
    i32.const 16
    i32.add
    i32.const 52
    i32.add
    local.get 7
    i32.const 52
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 2
    local.get 7
    i32.const 44
    i32.add
    i64.load align=4
    i64.store offset=60 align=4
    local.get 2
    local.get 7
    i32.const 36
    i32.add
    i64.load align=4
    i64.store offset=52 align=4
    local.get 2
    local.get 7
    i64.load offset=28 align=4
    i64.store offset=44 align=4
    local.get 6
    i64.load
    call 4
    local.get 2
    i32.load8_u offset=56
    i32.const 0
    i32.ne
    local.get 2
    i32.load offset=52
    i32.eqz
    i32.and
    i32.const 8729
    call 0
    local.get 2
    i32.const 100
    call 8
    i64.const 1000000
    i64.div_u
    i32.wrap_i64
    local.tee 8
    local.get 2
    i32.load offset=60
    i32.sub
    i32.const 100
    i32.mul
    i32.const 36000
    i32.div_u
    local.tee 6
    i32.sub
    i32.const 0
    local.get 6
    i32.const 252
    i32.and
    i32.const 100
    i32.lt_u
    local.tee 0
    select
    i32.store8 offset=57
    block  ;; label = @1
      block  ;; label = @2
        i32.const 100
        i32.const -56
        local.get 6
        i32.sub
        local.get 0
        select
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        local.tee 6
        i32.const 0
        i32.le_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 56
        i32.add
        local.get 6
        i32.store8
        br 1 (;@1;)
      end
      local.get 2
      i32.const 16
      i32.add
      i32.const 36
      i32.add
      local.get 8
      i32.store
      local.get 2
      i32.const 56
      i32.add
      i32.const 0
      i32.store8
    end
    local.get 2
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=8
    local.get 5
    i32.const 8442
    call 0
    local.get 3
    local.get 7
    i64.const 0
    local.get 2
    i32.const 8
    i32.add
    call 54
    block  ;; label = @1
      local.get 4
      i32.load8_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 40
      i32.add
      i32.load
      call 73
    end
    local.get 2
    i32.const 96
    i32.add
    global.set 0)
  (func (;38;) (type 5) (param i32 i32) (result i32)
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
    i32.const 8343
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
    call_indirect (type 0)
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    i32.const 1)
  (func (;39;) (type 0) (param i32 i64)
    i32.const 8895
    call 5)
  (func (;40;) (type 1) (param i32 i64 i32)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i64.store offset=56
    local.get 1
    call 4
    local.get 3
    i32.const 32
    i32.add
    local.get 0
    call 49
    i32.const 8256
    call 5
    local.get 0
    i64.load
    local.set 1
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    local.get 0
    i32.store offset=16
    local.get 3
    local.get 3
    i32.const 56
    i32.add
    i32.store offset=24
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    local.get 3
    i32.const 16
    i32.add
    call 50
    local.get 3
    i32.const 64
    i32.add
    global.set 0)
  (func (;41;) (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.tee 3
    local.get 0
    i32.store offset=44
    local.get 3
    local.get 1
    i64.load align=4
    i64.store offset=32
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
    i32.const 0
    i32.store
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i64.const 0
    i64.store offset=16
    local.get 3
    local.get 1
    local.get 0
    i32.add
    i32.store offset=56
    local.get 3
    local.get 1
    i32.store offset=48
    local.get 0
    i32.const 7
    i32.gt_u
    i32.const 8343
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
    i32.store offset=52
    local.get 3
    i32.const 48
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    call 47
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
    i32.const 32
    i32.add
    i32.store offset=52
    local.get 3
    local.get 3
    i32.const 44
    i32.add
    i32.store offset=48
    local.get 3
    i32.const 48
    i32.add
    local.get 3
    i32.const 8
    i32.add
    call 48
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
      call 73
    end
    local.get 3
    i32.const 64
    i32.add
    global.set 0
    i32.const 1)
  (func (;42;) (type 0) (param i32 i64)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.const 8
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 32
        i32.add
        i32.load
        local.tee 4
        local.get 0
        i32.const 36
        i32.add
        i32.load
        local.tee 5
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            i32.const -24
            i32.add
            local.tee 6
            i32.load
            local.tee 7
            i64.load
            local.get 1
            i64.eq
            br_if 1 (;@3;)
            local.get 6
            local.set 5
            local.get 4
            local.get 6
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 4
        local.get 5
        i32.eq
        br_if 0 (;@2;)
        local.get 7
        i32.load offset=76
        local.get 3
        i32.eq
        i32.const 8269
        call 0
        br 1 (;@1;)
      end
      i32.const 0
      local.set 7
      local.get 3
      i64.load
      local.get 0
      i32.const 16
      i32.add
      i64.load
      i64.const -6146428328942239744
      local.get 1
      call 7
      local.tee 6
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 3
      local.get 6
      call 51
      local.tee 7
      i32.load offset=76
      local.get 3
      i32.eq
      i32.const 8269
      call 0
    end
    local.get 7
    i32.const 0
    i32.ne
    local.tee 5
    i32.const 8708
    call 0
    local.get 2
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.tee 6
    local.get 7
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 7
    i64.load
    i64.store offset=16
    local.get 2
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    local.get 7
    i32.const 16
    i32.add
    call 76
    local.set 4
    local.get 2
    i32.const 16
    i32.add
    i32.const 68
    i32.add
    local.get 7
    i32.const 68
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 2
    i32.const 16
    i32.add
    i32.const 60
    i32.add
    local.get 7
    i32.const 60
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 2
    i32.const 16
    i32.add
    i32.const 52
    i32.add
    local.get 7
    i32.const 52
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 2
    local.get 7
    i32.const 44
    i32.add
    i64.load align=4
    i64.store offset=60 align=4
    local.get 2
    local.get 7
    i32.const 36
    i32.add
    i64.load align=4
    i64.store offset=52 align=4
    local.get 2
    local.get 7
    i64.load offset=28 align=4
    i64.store offset=44 align=4
    local.get 6
    i64.load
    call 4
    local.get 2
    i32.load8_u offset=56
    i32.const 0
    i32.ne
    local.get 2
    i32.load offset=52
    i32.eqz
    i32.and
    i32.const 8729
    call 0
    local.get 2
    i32.const 100
    call 8
    i64.const 1000000
    i64.div_u
    i32.wrap_i64
    local.tee 8
    local.get 2
    i32.load offset=60
    i32.sub
    i32.const 100
    i32.mul
    i32.const 36000
    i32.div_u
    local.tee 6
    i32.sub
    i32.const 0
    local.get 6
    i32.const 252
    i32.and
    i32.const 100
    i32.lt_u
    local.tee 0
    select
    i32.store8 offset=57
    block  ;; label = @1
      block  ;; label = @2
        i32.const 100
        i32.const -56
        local.get 6
        i32.sub
        local.get 0
        select
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        local.tee 6
        i32.const 0
        i32.le_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 56
        i32.add
        local.get 6
        i32.store8
        br 1 (;@1;)
      end
      local.get 2
      i32.const 16
      i32.add
      i32.const 36
      i32.add
      local.get 8
      i32.store
      local.get 2
      i32.const 56
      i32.add
      i32.const 0
      i32.store8
    end
    local.get 2
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=8
    local.get 5
    i32.const 8442
    call 0
    local.get 3
    local.get 7
    i64.const 0
    local.get 2
    i32.const 8
    i32.add
    call 55
    block  ;; label = @1
      local.get 4
      i32.load8_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 40
      i32.add
      i32.load
      call 73
    end
    local.get 2
    i32.const 96
    i32.add
    global.set 0)
  (func (;43;) (type 0) (param i32 i64)
    i32.const 8875
    call 5)
  (func (;44;) (type 1) (param i32 i64 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    i64.load
    call 4
    local.get 1
    call 6
    i32.const 8690
    call 5
    local.get 2
    i64.extend_i32_u
    call 6
    i32.const 8692
    call 5
    local.get 0
    i32.const 8
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 32
        i32.add
        i32.load
        local.tee 5
        local.get 0
        i32.const 36
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
            local.tee 2
            i32.load
            local.tee 7
            i64.load
            local.get 1
            i64.eq
            br_if 1 (;@3;)
            local.get 2
            local.set 6
            local.get 5
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 5
        local.get 6
        i32.eq
        br_if 0 (;@2;)
        local.get 7
        i32.load offset=76
        local.get 4
        i32.eq
        i32.const 8269
        call 0
        br 1 (;@1;)
      end
      i32.const 0
      local.set 7
      local.get 4
      i64.load
      local.get 0
      i32.const 16
      i32.add
      i64.load
      i64.const -6146428328942239744
      local.get 1
      call 7
      local.tee 2
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 4
      local.get 2
      call 51
      local.tee 7
      i32.load offset=76
      local.get 4
      i32.eq
      i32.const 8269
      call 0
    end
    local.get 7
    i32.const 0
    i32.ne
    local.tee 6
    i32.const 8708
    call 0
    local.get 3
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.get 7
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 3
    local.get 7
    i64.load
    i64.store offset=16
    local.get 3
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    local.get 7
    i32.const 16
    i32.add
    call 76
    local.set 5
    local.get 3
    i32.const 16
    i32.add
    i32.const 68
    i32.add
    local.get 7
    i32.const 68
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 3
    i32.const 16
    i32.add
    i32.const 60
    i32.add
    local.get 7
    i32.const 60
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 3
    i32.const 16
    i32.add
    i32.const 52
    i32.add
    local.get 7
    i32.const 52
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 3
    local.get 7
    i32.const 36
    i32.add
    i64.load align=4
    i64.store offset=52 align=4
    local.get 3
    local.get 7
    i32.const 44
    i32.add
    i64.load align=4
    i64.store offset=60 align=4
    local.get 3
    local.get 7
    i64.load offset=28 align=4
    i64.store offset=44 align=4
    local.get 3
    i32.load8_u offset=56
    i32.const 0
    i32.ne
    local.get 3
    i32.load offset=52
    i32.eqz
    i32.and
    i32.const 8729
    call 0
    local.get 3
    i32.const 100
    call 8
    i64.const 1000000
    i64.div_u
    i32.wrap_i64
    local.tee 8
    local.get 3
    i32.load offset=60
    i32.sub
    i32.const 100
    i32.mul
    i32.const 36000
    i32.div_u
    local.tee 2
    i32.sub
    i32.const 0
    local.get 2
    i32.const 252
    i32.and
    i32.const 100
    i32.lt_u
    local.tee 0
    select
    i32.store8 offset=57
    block  ;; label = @1
      block  ;; label = @2
        i32.const 100
        i32.const -56
        local.get 2
        i32.sub
        local.get 0
        select
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        local.tee 2
        i32.const 0
        i32.le_s
        br_if 0 (;@2;)
        local.get 3
        i32.const 56
        i32.add
        local.get 2
        i32.store8
        br 1 (;@1;)
      end
      local.get 3
      i32.const 16
      i32.add
      i32.const 36
      i32.add
      local.get 8
      i32.store
      local.get 3
      i32.const 56
      i32.add
      i32.const 0
      i32.store8
    end
    local.get 3
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=8
    local.get 6
    i32.const 8442
    call 0
    local.get 4
    local.get 7
    i64.const 0
    local.get 3
    i32.const 8
    i32.add
    call 52
    block  ;; label = @1
      local.get 5
      i32.load8_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 40
      i32.add
      i32.load
      call 73
    end
    local.get 3
    i32.const 96
    i32.add
    global.set 0)
  (func (;45;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64)
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
    local.get 3
    i64.const 0
    i64.store
    local.get 1
    i32.const 7
    i32.gt_u
    i32.const 8343
    call 0
    local.get 3
    local.get 6
    i32.const 8
    call 3
    drop
    local.get 1
    i32.const -4
    i32.and
    i32.const 8
    i32.ne
    i32.const 8343
    call 0
    local.get 3
    i32.const 8
    i32.add
    local.tee 2
    local.get 6
    i32.const 8
    i32.add
    i32.const 4
    call 3
    drop
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
    local.get 2
    i32.load
    local.set 6
    local.get 3
    i64.load
    local.set 7
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
    local.get 7
    local.get 6
    local.get 5
    call_indirect (type 1)
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    i32.const 1)
  (func (;46;) (type 0) (param i32 i64)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.const 8
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 32
        i32.add
        i32.load
        local.tee 4
        local.get 0
        i32.const 36
        i32.add
        i32.load
        local.tee 5
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            i32.const -24
            i32.add
            local.tee 6
            i32.load
            local.tee 7
            i64.load
            local.get 1
            i64.eq
            br_if 1 (;@3;)
            local.get 6
            local.set 5
            local.get 4
            local.get 6
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 4
        local.get 5
        i32.eq
        br_if 0 (;@2;)
        local.get 7
        i32.load offset=76
        local.get 3
        i32.eq
        i32.const 8269
        call 0
        br 1 (;@1;)
      end
      i32.const 0
      local.set 7
      local.get 3
      i64.load
      local.get 0
      i32.const 16
      i32.add
      i64.load
      i64.const -6146428328942239744
      local.get 1
      call 7
      local.tee 6
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 3
      local.get 6
      call 51
      local.tee 7
      i32.load offset=76
      local.get 3
      i32.eq
      i32.const 8269
      call 0
    end
    local.get 7
    i32.const 0
    i32.ne
    local.tee 5
    i32.const 8708
    call 0
    local.get 2
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.get 7
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 7
    i64.load
    i64.store offset=16
    local.get 2
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    local.get 7
    i32.const 16
    i32.add
    call 76
    local.set 4
    local.get 2
    i32.const 16
    i32.add
    i32.const 68
    i32.add
    local.get 7
    i32.const 68
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 2
    i32.const 16
    i32.add
    i32.const 60
    i32.add
    local.get 7
    i32.const 60
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 2
    i32.const 16
    i32.add
    i32.const 52
    i32.add
    local.get 7
    i32.const 52
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 2
    local.get 7
    i32.const 36
    i32.add
    i64.load align=4
    i64.store offset=52 align=4
    local.get 2
    local.get 7
    i32.const 44
    i32.add
    i64.load align=4
    i64.store offset=60 align=4
    local.get 2
    local.get 7
    i64.load offset=28 align=4
    i64.store offset=44 align=4
    local.get 2
    i32.load8_u offset=56
    i32.const 0
    i32.ne
    local.get 2
    i32.load offset=52
    i32.eqz
    i32.and
    i32.const 8729
    call 0
    local.get 2
    i32.const 100
    call 8
    i64.const 1000000
    i64.div_u
    i32.wrap_i64
    local.tee 8
    local.get 2
    i32.load offset=60
    i32.sub
    i32.const 100
    i32.mul
    i32.const 36000
    i32.div_u
    local.tee 6
    i32.sub
    i32.const 0
    local.get 6
    i32.const 252
    i32.and
    i32.const 100
    i32.lt_u
    local.tee 0
    select
    i32.store8 offset=57
    block  ;; label = @1
      block  ;; label = @2
        i32.const 100
        i32.const -56
        local.get 6
        i32.sub
        local.get 0
        select
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        local.tee 6
        i32.const 0
        i32.le_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 56
        i32.add
        local.get 6
        i32.store8
        br 1 (;@1;)
      end
      local.get 2
      i32.const 16
      i32.add
      i32.const 36
      i32.add
      local.get 8
      i32.store
      local.get 2
      i32.const 56
      i32.add
      i32.const 0
      i32.store8
    end
    local.get 2
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=8
    local.get 5
    i32.const 8442
    call 0
    local.get 3
    local.get 7
    i64.const 0
    local.get 2
    i32.const 8
    i32.add
    call 53
    block  ;; label = @1
      local.get 4
      i32.load8_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 40
      i32.add
      i32.load
      call 73
    end
    local.get 2
    i32.const 96
    i32.add
    global.set 0)
  (func (;47;) (type 5) (param i32 i32) (result i32)
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
    call 69
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
                call 71
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
              call 79
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
          call 79
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
        call 75
        unreachable
      end
      local.get 2
      local.get 3
      i32.store offset=20
      local.get 3
      call 73
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func (;48;) (type 3) (param i32 i32)
    (local i32 i64 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i64.load
    local.set 3
    local.get 2
    local.get 1
    i32.const 8
    i32.add
    call 76
    local.set 1
    local.get 0
    i32.load
    i32.load
    local.get 0
    i32.load offset=4
    local.tee 0
    i32.load offset=4
    local.tee 4
    i32.const 1
    i32.shr_s
    i32.add
    local.set 5
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      local.get 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.load
      local.get 0
      i32.add
      i32.load
      local.set 0
    end
    local.get 5
    local.get 3
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    call 76
    local.tee 4
    local.get 0
    call_indirect (type 1)
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
        local.get 4
        i32.load offset=8
        call 73
        local.get 1
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      i32.load offset=8
      call 73
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
  (func (;49;) (type 3) (param i32 i32)
    (local i32 i64 i32 i64 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i64.const 10000
    i64.store offset=8
    local.get 0
    i64.const 1000000000
    i64.store
    local.get 0
    i32.const 16
    i32.add
    i64.const 1397703940
    i64.store
    i32.const 1
    i32.const 8373
    call 0
    i64.const 5459781
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
          local.get 3
          i64.const 8
          i64.shr_u
          local.set 5
          block  ;; label = @4
            local.get 3
            i64.const 65280
            i64.and
            i64.const 0
            i64.eq
            br_if 0 (;@4;)
            local.get 5
            local.set 3
            i32.const 1
            local.set 6
            local.get 4
            local.tee 7
            i32.const 1
            i32.add
            local.set 4
            local.get 7
            i32.const 6
            i32.lt_s
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 5
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
            local.get 4
            i32.const 6
            i32.lt_s
            local.set 6
            local.get 4
            i32.const 1
            i32.add
            local.tee 7
            local.set 4
            local.get 6
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 6
          local.get 7
          i32.const 1
          i32.add
          local.set 4
          local.get 7
          i32.const 6
          i32.lt_s
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      local.set 6
    end
    local.get 6
    i32.const 8422
    call 0
    local.get 1
    i32.const 48
    i32.add
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 76
              i32.add
              i32.load
              local.tee 4
              local.get 1
              i32.const 72
              i32.add
              i32.load
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              i32.const -24
              i32.add
              i32.load
              local.tee 4
              i32.load offset=24
              local.get 8
              i32.eq
              i32.const 8269
              call 0
              local.get 4
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 8
            i64.load
            local.get 1
            i32.const 56
            i32.add
            i64.load
            i64.const -6146845789370777600
            i64.const -6146845789370777600
            call 7
            local.tee 4
            i32.const 0
            i32.lt_s
            br_if 1 (;@3;)
            local.get 8
            local.get 4
            call 56
            i32.load offset=24
            local.get 8
            i32.eq
            i32.const 8269
            call 0
          end
          local.get 1
          i32.const 76
          i32.add
          i32.load
          local.tee 4
          local.get 1
          i32.const 72
          i32.add
          i32.load
          i32.eq
          br_if 1 (;@2;)
          local.get 4
          i32.const -24
          i32.add
          i32.load
          local.tee 4
          i32.load offset=24
          local.get 8
          i32.eq
          i32.const 8269
          call 0
          br 2 (;@1;)
        end
        i32.const 1
        i32.const 8373
        call 0
        i64.const 5459781
        local.set 3
        i32.const 0
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              i32.wrap_i64
              i32.const 24
              i32.shl
              i32.const -1073741825
              i32.add
              i32.const 452984830
              i32.gt_u
              br_if 1 (;@4;)
              local.get 3
              i64.const 8
              i64.shr_u
              local.set 5
              block  ;; label = @6
                local.get 3
                i64.const 65280
                i64.and
                i64.const 0
                i64.eq
                br_if 0 (;@6;)
                local.get 5
                local.set 3
                i32.const 1
                local.set 6
                local.get 4
                local.tee 7
                i32.const 1
                i32.add
                local.set 4
                local.get 7
                i32.const 6
                i32.lt_s
                br_if 1 (;@5;)
                br 3 (;@3;)
              end
              local.get 5
              local.set 3
              loop  ;; label = @6
                local.get 3
                i64.const 65280
                i64.and
                i64.const 0
                i64.ne
                br_if 2 (;@4;)
                local.get 3
                i64.const 8
                i64.shr_u
                local.set 3
                local.get 4
                i32.const 6
                i32.lt_s
                local.set 6
                local.get 4
                i32.const 1
                i32.add
                local.tee 7
                local.set 4
                local.get 6
                br_if 0 (;@6;)
              end
              i32.const 1
              local.set 6
              local.get 7
              i32.const 1
              i32.add
              local.set 4
              local.get 7
              i32.const 6
              i32.lt_s
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          i32.const 0
          local.set 6
        end
        local.get 6
        i32.const 8422
        call 0
        local.get 0
        i32.const 8
        i32.add
        i64.const 10000
        i64.store
        local.get 0
        i64.const 1000000000
        i64.store
        local.get 0
        i32.const 16
        i32.add
        i64.const 1397703940
        i64.store
        local.get 8
        local.get 0
        local.get 1
        i64.load
        call 57
        local.get 2
        i32.const 32
        i32.add
        global.set 0
        return
      end
      i32.const 0
      local.set 4
      local.get 1
      i32.const 48
      i32.add
      i64.load
      local.get 1
      i32.const 56
      i32.add
      i64.load
      i64.const -6146845789370777600
      i64.const -6146845789370777600
      call 7
      local.tee 6
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 8
      local.get 6
      call 56
      local.tee 4
      i32.load offset=24
      local.get 8
      i32.eq
      i32.const 8269
      call 0
    end
    local.get 4
    i32.const 0
    i32.ne
    i32.const 8348
    call 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 4
    i32.const 16
    i32.add
    i64.load
    local.tee 3
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 4
    i32.const 8
    i32.add
    i64.load
    local.tee 5
    i64.store
    local.get 0
    local.get 4
    i64.load
    local.tee 9
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 5
    i64.store
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    i64.store
    local.get 2
    local.get 9
    i64.store offset=8
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;50;) (type 20) (param i32 i32 i64 i32)
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
    call 9
    i64.eq
    i32.const 8639
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
    i32.const 88
    call 71
    local.tee 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i64.const 0
    i64.store offset=16 align=4
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    i32.const 0
    i32.store offset=36
    local.get 3
    i32.const 25700
    i32.store16 offset=40
    local.get 3
    i32.const 100
    i32.store8 offset=48
    local.get 3
    i32.const 0
    i32.store offset=56
    local.get 3
    i32.const 25601
    i32.store16 offset=60
    local.get 3
    i32.const 100
    i32.store8 offset=68
    local.get 3
    local.get 1
    i32.store offset=76
    local.get 4
    i32.const 16
    i32.add
    local.get 3
    call 58
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
    i32.load offset=80
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
      call 59
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 4
    i32.load offset=32
    local.set 3
    local.get 4
    i32.const 0
    i32.store offset=32
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        i32.load8_u offset=16
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 24
        i32.add
        i32.load
        call 73
      end
      local.get 3
      call 73
    end
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func (;51;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 112
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
      i32.const 112
      i32.add
      global.set 0
      local.get 5
      return
    end
    local.get 1
    i32.const 0
    i32.const 0
    call 10
    local.tee 4
    i32.const 31
    i32.shr_u
    i32.const 1
    i32.xor
    i32.const 8320
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
    call 10
    drop
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    local.get 2
    i32.store offset=16
    local.get 3
    local.get 2
    local.get 4
    i32.add
    i32.store offset=24
    i32.const 88
    call 71
    local.tee 5
    i64.const 0
    i64.store offset=8
    local.get 5
    i64.const 0
    i64.store offset=16 align=4
    local.get 5
    i32.const 0
    i32.store offset=24
    local.get 5
    i32.const 0
    i32.store offset=36
    local.get 5
    i32.const 25700
    i32.store16 offset=40
    local.get 5
    i32.const 100
    i32.store8 offset=48
    local.get 5
    i32.const 0
    i32.store offset=56
    local.get 5
    i32.const 25601
    i32.store16 offset=60
    local.get 5
    i32.const 100
    i32.store8 offset=68
    local.get 5
    local.get 0
    i32.store offset=76
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
    i32.const 16
    i32.add
    i32.store offset=48
    local.get 3
    local.get 5
    i32.const 28
    i32.add
    i32.store offset=52
    local.get 3
    local.get 5
    i32.const 32
    i32.add
    i32.store offset=56
    local.get 3
    local.get 5
    i32.const 36
    i32.add
    i32.store offset=60
    local.get 3
    local.get 5
    i32.const 40
    i32.add
    i32.store offset=64
    local.get 3
    local.get 5
    i32.const 41
    i32.add
    i32.store offset=68
    local.get 3
    local.get 5
    i32.const 44
    i32.add
    i32.store offset=72
    local.get 3
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=76
    local.get 3
    local.get 5
    i32.const 52
    i32.add
    i32.store offset=80
    local.get 3
    local.get 5
    i32.const 56
    i32.add
    i32.store offset=84
    local.get 3
    local.get 5
    i32.const 60
    i32.add
    i32.store offset=88
    local.get 3
    local.get 5
    i32.const 61
    i32.add
    i32.store offset=92
    local.get 3
    local.get 5
    i32.const 64
    i32.add
    i32.store offset=96
    local.get 3
    local.get 5
    i32.const 68
    i32.add
    i32.store offset=100
    local.get 3
    local.get 5
    i32.const 72
    i32.add
    i32.store offset=104
    local.get 3
    i32.const 40
    i32.add
    local.get 3
    i32.const 32
    i32.add
    call 68
    local.get 5
    local.get 1
    i32.store offset=80
    local.get 3
    local.get 5
    i32.store offset=32
    local.get 3
    local.get 5
    i64.load
    local.tee 6
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
          local.tee 7
          i32.load
          local.tee 8
          local.get 0
          i32.const 32
          i32.add
          i32.load
          i32.ge_u
          br_if 0 (;@3;)
          local.get 8
          local.get 6
          i64.store offset=8
          local.get 8
          local.get 1
          i32.store offset=16
          local.get 3
          i32.const 0
          i32.store offset=32
          local.get 8
          local.get 5
          i32.store
          local.get 7
          local.get 8
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
        i32.const 32
        i32.add
        local.get 3
        i32.const 40
        i32.add
        local.get 3
        i32.const 12
        i32.add
        call 59
        local.get 4
        i32.const 513
        i32.lt_u
        br_if 1 (;@1;)
      end
      local.get 2
      call 85
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
        i32.load8_u offset=16
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 24
        i32.add
        i32.load
        call 73
      end
      local.get 1
      call 73
    end
    local.get 3
    i32.const 112
    i32.add
    global.set 0
    local.get 5)
  (func (;52;) (type 20) (param i32 i32 i64 i32)
    (local i32 i32 i64 i32 i64 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 4
    local.set 5
    local.get 4
    global.set 0
    local.get 1
    i32.load offset=76
    local.get 0
    i32.eq
    i32.const 8477
    call 0
    local.get 0
    i64.load
    call 9
    i64.eq
    i32.const 8523
    call 0
    local.get 1
    local.get 3
    i32.load
    local.tee 3
    i32.load16_u offset=40
    i32.store16 offset=40
    local.get 1
    local.get 3
    i32.load8_u offset=48
    i32.store8 offset=48
    local.get 1
    local.get 3
    i32.load8_u offset=61
    i32.store8 offset=61
    local.get 1
    local.get 3
    i32.load8_u offset=68
    i32.store8 offset=68
    local.get 1
    local.get 3
    i32.load offset=36
    i32.store offset=36
    local.get 1
    i64.load
    local.set 6
    i32.const 1
    i32.const 8574
    call 0
    local.get 1
    i32.const 20
    i32.add
    i32.load
    local.get 1
    i32.load8_u offset=16
    local.tee 3
    i32.const 1
    i32.shr_u
    local.get 3
    i32.const 1
    i32.and
    select
    local.tee 7
    i32.const 51
    i32.add
    local.set 3
    local.get 7
    i64.extend_i32_u
    local.set 8
    local.get 1
    i32.const 16
    i32.add
    local.set 7
    local.get 1
    i32.const 68
    i32.add
    local.set 9
    local.get 1
    i32.const 61
    i32.add
    local.set 10
    local.get 1
    i32.const 48
    i32.add
    local.set 11
    local.get 1
    i32.const 41
    i32.add
    local.set 12
    local.get 1
    i32.const 36
    i32.add
    local.set 13
    local.get 1
    i32.const 40
    i32.add
    local.set 14
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
    i32.store offset=16
    local.get 5
    local.get 7
    i32.store offset=32
    local.get 5
    local.get 13
    i32.store offset=44
    local.get 5
    local.get 14
    i32.store offset=48
    local.get 5
    local.get 12
    i32.store offset=52
    local.get 5
    local.get 11
    i32.store offset=60
    local.get 5
    local.get 10
    i32.store offset=76
    local.get 5
    local.get 9
    i32.store offset=84
    local.get 5
    local.get 1
    i32.store offset=24
    local.get 5
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=28
    local.get 5
    local.get 1
    i32.const 28
    i32.add
    i32.store offset=36
    local.get 5
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=40
    local.get 5
    local.get 1
    i32.const 44
    i32.add
    i32.store offset=56
    local.get 5
    local.get 1
    i32.const 52
    i32.add
    i32.store offset=64
    local.get 5
    local.get 1
    i32.const 56
    i32.add
    i32.store offset=68
    local.get 5
    local.get 1
    i32.const 60
    i32.add
    i32.store offset=72
    local.get 5
    local.get 1
    i32.const 64
    i32.add
    i32.store offset=80
    local.get 5
    local.get 1
    i32.const 72
    i32.add
    i32.store offset=88
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.const 16
    i32.add
    call 65
    local.get 1
    i32.load offset=80
    local.get 2
    local.get 4
    local.get 3
    call 11
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 513
          i32.ge_u
          br_if 0 (;@3;)
          local.get 6
          local.get 0
          i64.load offset=16
          i64.ge_u
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 4
        call 85
        local.get 6
        local.get 0
        i64.load offset=16
        i64.lt_u
        br_if 1 (;@1;)
      end
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
      local.get 5
      i32.const 96
      i32.add
      global.set 0
      return
    end
    local.get 5
    i32.const 96
    i32.add
    global.set 0)
  (func (;53;) (type 20) (param i32 i32 i64 i32)
    (local i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i64 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 4
    local.set 5
    local.get 4
    global.set 0
    local.get 1
    i32.load offset=76
    local.get 0
    i32.eq
    i32.const 8477
    call 0
    local.get 0
    i64.load
    call 9
    i64.eq
    i32.const 8523
    call 0
    local.get 1
    local.get 3
    i32.load
    local.tee 6
    i32.load16_u offset=40
    i32.store16 offset=40
    local.get 1
    local.get 6
    i32.load8_u offset=48
    i32.store8 offset=48
    local.get 1
    local.get 6
    i32.load8_u offset=61
    i32.store8 offset=61
    local.get 1
    local.get 6
    i32.load8_u offset=68
    i32.store8 offset=68
    local.get 1
    local.get 6
    i32.load offset=36
    i32.store offset=36
    local.get 1
    i32.const 40
    i32.add
    local.set 7
    local.get 1
    i64.load
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          call 8
          i64.const 1000000
          i64.div_u
          i32.wrap_i64
          local.get 3
          i32.load
          i32.load offset=44
          i32.sub
          i32.const 10800
          i32.le_u
          br_if 0 (;@3;)
          local.get 7
          i32.load8_u
          local.tee 9
          i32.const 0
          i32.ne
          local.set 10
          local.get 1
          i32.load8_u offset=60
          local.tee 6
          i32.eqz
          local.set 3
          local.get 6
          br_if 1 (;@2;)
          local.get 9
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.const 40
          i32.add
          i32.const 25700
          i32.store16
          local.get 1
          call 8
          i64.const 1000000
          i64.div_u
          i64.store32 offset=44
          br 2 (;@1;)
        end
        i32.const 0
        local.set 3
        local.get 7
        i32.load8_u
        i32.const 0
        i32.ne
        local.set 10
        local.get 1
        i32.load8_u offset=60
        local.set 6
      end
      block  ;; label = @2
        local.get 6
        i32.const 255
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 8746
        call 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 10
        br_if 1 (;@1;)
        i32.const 8779
        call 5
        br 1 (;@1;)
      end
      i32.const 8763
      call 5
    end
    local.get 1
    i32.const 68
    i32.add
    local.set 10
    local.get 1
    i32.const 61
    i32.add
    local.set 9
    local.get 1
    i32.const 48
    i32.add
    local.set 11
    local.get 1
    i32.const 41
    i32.add
    local.set 12
    local.get 1
    i32.const 36
    i32.add
    local.set 13
    local.get 8
    local.get 1
    i64.load
    i64.eq
    i32.const 8574
    call 0
    local.get 1
    i32.const 20
    i32.add
    i32.load
    local.get 1
    i32.load8_u offset=16
    local.tee 6
    i32.const 1
    i32.shr_u
    local.get 6
    i32.const 1
    i32.and
    select
    local.tee 3
    i32.const 51
    i32.add
    local.set 6
    local.get 3
    i64.extend_i32_u
    local.set 14
    local.get 1
    i32.const 16
    i32.add
    local.set 15
    loop  ;; label = @1
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      local.get 14
      i64.const 7
      i64.shr_u
      local.tee 14
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 6
        call 82
        local.set 3
        br 1 (;@1;)
      end
      local.get 4
      local.get 6
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 3
      global.set 0
    end
    local.get 5
    local.get 3
    i32.store offset=4
    local.get 5
    local.get 3
    i32.store
    local.get 5
    local.get 3
    local.get 6
    i32.add
    i32.store offset=8
    local.get 5
    local.get 5
    i32.store offset=16
    local.get 5
    local.get 15
    i32.store offset=32
    local.get 5
    local.get 13
    i32.store offset=44
    local.get 5
    local.get 7
    i32.store offset=48
    local.get 5
    local.get 12
    i32.store offset=52
    local.get 5
    local.get 11
    i32.store offset=60
    local.get 5
    local.get 9
    i32.store offset=76
    local.get 5
    local.get 10
    i32.store offset=84
    local.get 5
    local.get 1
    i32.store offset=24
    local.get 5
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=28
    local.get 5
    local.get 1
    i32.const 28
    i32.add
    i32.store offset=36
    local.get 5
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=40
    local.get 5
    local.get 1
    i32.const 44
    i32.add
    i32.store offset=56
    local.get 5
    local.get 1
    i32.const 52
    i32.add
    i32.store offset=64
    local.get 5
    local.get 1
    i32.const 56
    i32.add
    i32.store offset=68
    local.get 5
    local.get 1
    i32.const 60
    i32.add
    i32.store offset=72
    local.get 5
    local.get 1
    i32.const 64
    i32.add
    i32.store offset=80
    local.get 5
    local.get 1
    i32.const 72
    i32.add
    i32.store offset=88
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.const 16
    i32.add
    call 65
    local.get 1
    i32.load offset=80
    local.get 2
    local.get 3
    local.get 6
    call 11
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 513
          i32.ge_u
          br_if 0 (;@3;)
          local.get 8
          local.get 0
          i64.load offset=16
          i64.ge_u
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 3
        call 85
        local.get 8
        local.get 0
        i64.load offset=16
        i64.lt_u
        br_if 1 (;@1;)
      end
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
      local.get 5
      i32.const 96
      i32.add
      global.set 0
      return
    end
    local.get 5
    i32.const 96
    i32.add
    global.set 0)
  (func (;54;) (type 20) (param i32 i32 i64 i32)
    (local i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i64 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 4
    local.set 5
    local.get 4
    global.set 0
    local.get 1
    i32.load offset=76
    local.get 0
    i32.eq
    i32.const 8477
    call 0
    local.get 0
    i64.load
    call 9
    i64.eq
    i32.const 8523
    call 0
    local.get 1
    local.get 3
    i32.load
    local.tee 6
    i32.load16_u offset=40
    i32.store16 offset=40
    local.get 1
    local.get 6
    i32.load8_u offset=48
    i32.store8 offset=48
    local.get 1
    local.get 6
    i32.load8_u offset=61
    i32.store8 offset=61
    local.get 1
    local.get 6
    i32.load8_u offset=68
    i32.store8 offset=68
    local.get 1
    local.get 6
    i32.load offset=36
    i32.store offset=36
    local.get 1
    i32.const 40
    i32.add
    local.set 7
    local.get 1
    i64.load
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          call 8
          i64.const 1000000
          i64.div_u
          i32.wrap_i64
          local.get 3
          i32.load
          i32.load offset=56
          i32.sub
          i32.const 28801
          i32.lt_u
          br_if 0 (;@3;)
          local.get 7
          i32.load8_u
          local.set 6
          block  ;; label = @4
            local.get 1
            i32.load8_u offset=60
            local.tee 3
            br_if 0 (;@4;)
            local.get 6
            i32.const 255
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 60
            i32.add
            i32.const 1
            i32.store8
            local.get 1
            call 8
            i64.const 1000000
            i64.div_u
            i64.store32 offset=52
            br 3 (;@1;)
          end
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 8800
        call 5
        br 1 (;@1;)
      end
      local.get 6
      i32.const 255
      i32.and
      br_if 0 (;@1;)
      i32.const 8818
      call 5
    end
    local.get 1
    i32.const 68
    i32.add
    local.set 9
    local.get 1
    i32.const 61
    i32.add
    local.set 10
    local.get 1
    i32.const 48
    i32.add
    local.set 11
    local.get 1
    i32.const 41
    i32.add
    local.set 12
    local.get 1
    i32.const 36
    i32.add
    local.set 13
    local.get 8
    local.get 1
    i64.load
    i64.eq
    i32.const 8574
    call 0
    local.get 1
    i32.const 20
    i32.add
    i32.load
    local.get 1
    i32.load8_u offset=16
    local.tee 6
    i32.const 1
    i32.shr_u
    local.get 6
    i32.const 1
    i32.and
    select
    local.tee 3
    i32.const 51
    i32.add
    local.set 6
    local.get 3
    i64.extend_i32_u
    local.set 14
    local.get 1
    i32.const 16
    i32.add
    local.set 15
    loop  ;; label = @1
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      local.get 14
      i64.const 7
      i64.shr_u
      local.tee 14
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 6
        call 82
        local.set 3
        br 1 (;@1;)
      end
      local.get 4
      local.get 6
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 3
      global.set 0
    end
    local.get 5
    local.get 3
    i32.store offset=4
    local.get 5
    local.get 3
    i32.store
    local.get 5
    local.get 3
    local.get 6
    i32.add
    i32.store offset=8
    local.get 5
    local.get 5
    i32.store offset=16
    local.get 5
    local.get 15
    i32.store offset=32
    local.get 5
    local.get 13
    i32.store offset=44
    local.get 5
    local.get 7
    i32.store offset=48
    local.get 5
    local.get 12
    i32.store offset=52
    local.get 5
    local.get 11
    i32.store offset=60
    local.get 5
    local.get 10
    i32.store offset=76
    local.get 5
    local.get 9
    i32.store offset=84
    local.get 5
    local.get 1
    i32.store offset=24
    local.get 5
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=28
    local.get 5
    local.get 1
    i32.const 28
    i32.add
    i32.store offset=36
    local.get 5
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=40
    local.get 5
    local.get 1
    i32.const 44
    i32.add
    i32.store offset=56
    local.get 5
    local.get 1
    i32.const 52
    i32.add
    i32.store offset=64
    local.get 5
    local.get 1
    i32.const 56
    i32.add
    i32.store offset=68
    local.get 5
    local.get 1
    i32.const 60
    i32.add
    i32.store offset=72
    local.get 5
    local.get 1
    i32.const 64
    i32.add
    i32.store offset=80
    local.get 5
    local.get 1
    i32.const 72
    i32.add
    i32.store offset=88
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.const 16
    i32.add
    call 65
    local.get 1
    i32.load offset=80
    local.get 2
    local.get 3
    local.get 6
    call 11
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 513
          i32.ge_u
          br_if 0 (;@3;)
          local.get 8
          local.get 0
          i64.load offset=16
          i64.ge_u
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 3
        call 85
        local.get 8
        local.get 0
        i64.load offset=16
        i64.lt_u
        br_if 1 (;@1;)
      end
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
      local.get 5
      i32.const 96
      i32.add
      global.set 0
      return
    end
    local.get 5
    i32.const 96
    i32.add
    global.set 0)
  (func (;55;) (type 20) (param i32 i32 i64 i32)
    (local i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 4
    local.set 5
    local.get 4
    global.set 0
    local.get 1
    i32.load offset=76
    local.get 0
    i32.eq
    i32.const 8477
    call 0
    local.get 0
    i64.load
    call 9
    i64.eq
    i32.const 8523
    call 0
    local.get 1
    local.get 3
    i32.load
    local.tee 6
    i32.load16_u offset=40
    i32.store16 offset=40
    local.get 1
    local.get 6
    i32.load8_u offset=48
    i32.store8 offset=48
    local.get 1
    local.get 6
    i32.load8_u offset=61
    i32.store8 offset=61
    local.get 1
    local.get 6
    i32.load8_u offset=68
    i32.store8 offset=68
    local.get 1
    local.get 6
    i32.load offset=36
    i32.store offset=36
    local.get 1
    i32.const 40
    i32.add
    local.set 7
    local.get 1
    i64.load
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        call 8
        i64.const 1000000
        i64.div_u
        i32.wrap_i64
        local.get 3
        i32.load
        i32.load offset=52
        i32.sub
        i32.const 14401
        i32.lt_u
        br_if 0 (;@2;)
        local.get 7
        i32.load8_u
        local.set 6
        block  ;; label = @3
          local.get 1
          i32.load8_u offset=60
          local.tee 3
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 6
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 60
          i32.add
          i32.const 0
          i32.store8
          call 8
          local.set 9
          local.get 1
          i32.const 48
          i32.add
          i32.const 100
          i32.store8
          local.get 1
          local.get 9
          i64.const 1000000
          i64.div_u
          i64.store32 offset=56
          br 2 (;@1;)
        end
        local.get 3
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 6
        i32.const 255
        i32.and
        br_if 1 (;@1;)
        i32.const 8853
        call 5
        br 1 (;@1;)
      end
      i32.const 8840
      call 5
    end
    local.get 1
    i32.const 68
    i32.add
    local.set 10
    local.get 1
    i32.const 61
    i32.add
    local.set 11
    local.get 1
    i32.const 48
    i32.add
    local.set 12
    local.get 1
    i32.const 41
    i32.add
    local.set 13
    local.get 1
    i32.const 36
    i32.add
    local.set 14
    local.get 8
    local.get 1
    i64.load
    i64.eq
    i32.const 8574
    call 0
    local.get 1
    i32.const 20
    i32.add
    i32.load
    local.get 1
    i32.load8_u offset=16
    local.tee 6
    i32.const 1
    i32.shr_u
    local.get 6
    i32.const 1
    i32.and
    select
    local.tee 3
    i32.const 51
    i32.add
    local.set 6
    local.get 3
    i64.extend_i32_u
    local.set 9
    local.get 1
    i32.const 16
    i32.add
    local.set 15
    loop  ;; label = @1
      local.get 6
      i32.const 1
      i32.add
      local.set 6
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
        local.get 6
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 6
        call 82
        local.set 3
        br 1 (;@1;)
      end
      local.get 4
      local.get 6
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      i32.sub
      local.tee 3
      global.set 0
    end
    local.get 5
    local.get 3
    i32.store offset=4
    local.get 5
    local.get 3
    i32.store
    local.get 5
    local.get 3
    local.get 6
    i32.add
    i32.store offset=8
    local.get 5
    local.get 5
    i32.store offset=16
    local.get 5
    local.get 15
    i32.store offset=32
    local.get 5
    local.get 14
    i32.store offset=44
    local.get 5
    local.get 7
    i32.store offset=48
    local.get 5
    local.get 13
    i32.store offset=52
    local.get 5
    local.get 12
    i32.store offset=60
    local.get 5
    local.get 11
    i32.store offset=76
    local.get 5
    local.get 10
    i32.store offset=84
    local.get 5
    local.get 1
    i32.store offset=24
    local.get 5
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=28
    local.get 5
    local.get 1
    i32.const 28
    i32.add
    i32.store offset=36
    local.get 5
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=40
    local.get 5
    local.get 1
    i32.const 44
    i32.add
    i32.store offset=56
    local.get 5
    local.get 1
    i32.const 52
    i32.add
    i32.store offset=64
    local.get 5
    local.get 1
    i32.const 56
    i32.add
    i32.store offset=68
    local.get 5
    local.get 1
    i32.const 60
    i32.add
    i32.store offset=72
    local.get 5
    local.get 1
    i32.const 64
    i32.add
    i32.store offset=80
    local.get 5
    local.get 1
    i32.const 72
    i32.add
    i32.store offset=88
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.const 16
    i32.add
    call 65
    local.get 1
    i32.load offset=80
    local.get 2
    local.get 3
    local.get 6
    call 11
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 513
          i32.ge_u
          br_if 0 (;@3;)
          local.get 8
          local.get 0
          i64.load offset=16
          i64.ge_u
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 3
        call 85
        local.get 8
        local.get 0
        i64.load offset=16
        i64.lt_u
        br_if 1 (;@1;)
      end
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
      local.get 5
      i32.const 96
      i32.add
      global.set 0
      return
    end
    local.get 5
    i32.const 96
    i32.add
    global.set 0)
  (func (;56;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
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
    local.get 1
    i32.const 0
    i32.const 0
    call 10
    local.tee 6
    i32.const 31
    i32.shr_u
    i32.const 1
    i32.xor
    i32.const 8320
    call 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 513
        i32.lt_u
        br_if 0 (;@2;)
        local.get 6
        call 82
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
    call 10
    drop
    i32.const 40
    call 71
    local.tee 9
    i64.const 10000
    i64.store offset=8
    local.get 9
    i64.const 1000000000
    i64.store
    local.get 9
    i64.const 1397703940
    i64.store offset=16
    i32.const 1
    i32.const 8373
    call 0
    local.get 9
    i32.const 16
    i32.add
    local.set 10
    local.get 9
    i32.const 8
    i32.add
    local.set 11
    i64.const 5459781
    local.set 12
    i32.const 0
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 12
          i32.wrap_i64
          i32.const 24
          i32.shl
          i32.const -1073741825
          i32.add
          i32.const 452984830
          i32.gt_u
          br_if 1 (;@2;)
          local.get 12
          i64.const 8
          i64.shr_u
          local.set 13
          block  ;; label = @4
            local.get 12
            i64.const 65280
            i64.and
            i64.const 0
            i64.eq
            br_if 0 (;@4;)
            local.get 13
            local.set 12
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
          local.get 13
          local.set 12
          loop  ;; label = @4
            local.get 12
            i64.const 65280
            i64.and
            i64.const 0
            i64.ne
            br_if 2 (;@2;)
            local.get 12
            i64.const 8
            i64.shr_u
            local.set 12
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
    i32.const 8422
    call 0
    local.get 9
    local.get 0
    i32.store offset=24
    local.get 6
    i32.const 7
    i32.gt_u
    i32.const 8343
    call 0
    local.get 9
    local.get 7
    i32.const 8
    call 3
    drop
    local.get 6
    i32.const -8
    i32.and
    local.tee 5
    i32.const 8
    i32.ne
    i32.const 8343
    call 0
    local.get 11
    local.get 7
    i32.const 8
    i32.add
    i32.const 8
    call 3
    drop
    local.get 5
    i32.const 16
    i32.ne
    i32.const 8343
    call 0
    local.get 10
    local.get 7
    i32.const 16
    i32.add
    i32.const 8
    call 3
    drop
    local.get 9
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 9
    i32.store offset=24
    local.get 3
    i64.const -6146845789370777600
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
          i64.const -6146845789370777600
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
        call 62
        local.get 6
        i32.const 513
        i32.lt_u
        br_if 1 (;@1;)
      end
      local.get 7
      call 85
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
      call 73
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 9)
  (func (;57;) (type 21) (param i32 i32 i64)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 28
          i32.add
          i32.load
          local.tee 4
          local.get 0
          i32.load offset=24
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          i32.const -24
          i32.add
          i32.load
          local.tee 4
          i32.load offset=24
          local.get 0
          i32.eq
          i32.const 8269
          call 0
          local.get 4
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i64.load
        local.get 0
        i64.load offset=8
        i64.const -6146845789370777600
        i64.const -6146845789370777600
        call 7
        local.tee 4
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
        local.get 0
        local.get 4
        call 56
        local.tee 4
        i32.load offset=24
        local.get 0
        i32.eq
        i32.const 8269
        call 0
      end
      local.get 3
      local.get 1
      i32.store
      i32.const 1
      i32.const 8442
      call 0
      local.get 0
      local.get 4
      local.get 2
      local.get 3
      call 60
      local.get 3
      i32.const 16
      i32.add
      global.set 0
      return
    end
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 0
    local.get 2
    local.get 3
    i32.const 8
    i32.add
    call 61
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;58;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 2
    local.set 3
    local.get 2
    global.set 0
    local.get 0
    i32.load
    local.set 4
    local.get 0
    i32.load offset=4
    local.get 1
    call 64
    local.get 1
    i32.const 20
    i32.add
    i32.load
    local.get 1
    i32.load8_u offset=16
    local.tee 5
    i32.const 1
    i32.shr_u
    local.get 5
    i32.const 1
    i32.and
    select
    local.tee 6
    i32.const 51
    i32.add
    local.set 5
    local.get 6
    i64.extend_i32_u
    local.set 7
    local.get 1
    i32.const 16
    i32.add
    local.set 6
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
        call 82
        local.set 2
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
    end
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 2
    i32.store
    local.get 3
    local.get 2
    local.get 5
    i32.add
    i32.store offset=8
    local.get 3
    local.get 3
    i32.store offset=16
    local.get 3
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 6
    i32.store offset=32
    local.get 3
    local.get 1
    i32.const 28
    i32.add
    i32.store offset=36
    local.get 3
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=40
    local.get 3
    local.get 1
    i32.const 36
    i32.add
    i32.store offset=44
    local.get 3
    local.get 1
    i32.const 40
    i32.add
    i32.store offset=48
    local.get 3
    local.get 1
    i32.const 41
    i32.add
    i32.store offset=52
    local.get 3
    local.get 1
    i32.const 44
    i32.add
    i32.store offset=56
    local.get 3
    local.get 1
    i32.const 48
    i32.add
    i32.store offset=60
    local.get 3
    local.get 1
    i32.const 52
    i32.add
    i32.store offset=64
    local.get 3
    local.get 1
    i32.const 56
    i32.add
    i32.store offset=68
    local.get 3
    local.get 1
    i32.const 60
    i32.add
    i32.store offset=72
    local.get 3
    local.get 1
    i32.const 61
    i32.add
    i32.store offset=76
    local.get 3
    local.get 1
    i32.const 64
    i32.add
    i32.store offset=80
    local.get 3
    local.get 1
    i32.const 68
    i32.add
    i32.store offset=84
    local.get 3
    local.get 1
    i32.const 72
    i32.add
    i32.store offset=88
    local.get 3
    i32.const 24
    i32.add
    local.get 3
    i32.const 16
    i32.add
    call 65
    local.get 1
    local.get 4
    i64.load offset=8
    i64.const -6146428328942239744
    local.get 0
    i32.load offset=8
    i64.load
    local.get 1
    i64.load
    local.tee 7
    local.get 2
    local.get 5
    call 12
    i32.store offset=80
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
        local.get 2
        call 85
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
      i32.const 96
      i32.add
      global.set 0
      return
    end
    local.get 3
    i32.const 96
    i32.add
    global.set 0)
  (func (;59;) (type 22) (param i32 i32 i32 i32)
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
          call 71
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
      call 80
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
            i32.load8_u offset=16
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 24
            i32.add
            i32.load
            call 73
          end
          local.get 1
          call 73
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
      call 73
    end)
  (func (;60;) (type 20) (param i32 i32 i64 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    local.get 1
    i32.load offset=24
    local.get 0
    i32.eq
    i32.const 8477
    call 0
    local.get 0
    i64.load
    call 9
    i64.eq
    i32.const 8523
    call 0
    local.get 1
    local.get 3
    i32.load
    local.tee 3
    i64.load
    i64.store
    local.get 1
    i32.const 16
    i32.add
    local.tee 5
    local.get 3
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 8
    i32.add
    local.tee 6
    local.get 3
    i32.const 8
    i32.add
    i64.load
    i64.store
    i32.const 1
    i32.const 8574
    call 0
    i32.const 1
    i32.const 8633
    call 0
    local.get 4
    local.get 1
    i32.const 8
    call 3
    drop
    i32.const 1
    i32.const 8633
    call 0
    local.get 4
    i32.const 8
    i32.or
    local.get 6
    i32.const 8
    call 3
    drop
    i32.const 1
    i32.const 8633
    call 0
    local.get 4
    i32.const 16
    i32.add
    local.get 5
    i32.const 8
    call 3
    drop
    local.get 1
    i32.load offset=28
    local.get 2
    local.get 4
    i32.const 24
    call 11
    block  ;; label = @1
      local.get 0
      i64.load offset=16
      i64.const -6146845789370777600
      i64.gt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      i64.const -6146845789370777599
      i64.store
    end
    local.get 4
    i32.const 32
    i32.add
    global.set 0)
  (func (;61;) (type 20) (param i32 i32 i64 i32)
    (local i32 i32 i64 i32 i32)
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
    call 9
    i64.eq
    i32.const 8639
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
    i32.const 40
    call 71
    local.tee 5
    i64.const 10000
    i64.store offset=8
    local.get 5
    i64.const 1000000000
    i64.store
    local.get 5
    i64.const 1397703940
    i64.store offset=16
    i32.const 1
    i32.const 8373
    call 0
    i64.const 5459781
    local.set 2
    i32.const 0
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.wrap_i64
          i32.const 24
          i32.shl
          i32.const -1073741825
          i32.add
          i32.const 452984830
          i32.gt_u
          br_if 1 (;@2;)
          local.get 2
          i64.const 8
          i64.shr_u
          local.set 6
          block  ;; label = @4
            local.get 2
            i64.const 65280
            i64.and
            i64.const 0
            i64.eq
            br_if 0 (;@4;)
            local.get 6
            local.set 2
            i32.const 1
            local.set 7
            local.get 3
            local.tee 8
            i32.const 1
            i32.add
            local.set 3
            local.get 8
            i32.const 6
            i32.lt_s
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 6
          local.set 2
          loop  ;; label = @4
            local.get 2
            i64.const 65280
            i64.and
            i64.const 0
            i64.ne
            br_if 2 (;@2;)
            local.get 2
            i64.const 8
            i64.shr_u
            local.set 2
            local.get 3
            i32.const 6
            i32.lt_s
            local.set 7
            local.get 3
            i32.const 1
            i32.add
            local.tee 8
            local.set 3
            local.get 7
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 7
          local.get 8
          i32.const 1
          i32.add
          local.set 3
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
    i32.const 8422
    call 0
    local.get 5
    local.get 1
    i32.store offset=24
    local.get 4
    i32.const 16
    i32.add
    local.get 5
    call 63
    local.get 4
    local.get 5
    i32.store offset=32
    local.get 4
    i64.const -6146845789370777600
    i64.store offset=16
    local.get 4
    local.get 5
    i32.load offset=28
    local.tee 7
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 28
        i32.add
        local.tee 8
        i32.load
        local.tee 3
        local.get 1
        i32.const 32
        i32.add
        i32.load
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        i64.const -6146845789370777600
        i64.store offset=8
        local.get 3
        local.get 7
        i32.store offset=16
        local.get 4
        i32.const 0
        i32.store offset=32
        local.get 3
        local.get 5
        i32.store
        local.get 8
        local.get 3
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
      call 62
    end
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 4
    i32.load offset=32
    local.set 3
    local.get 4
    i32.const 0
    i32.store offset=32
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call 73
    end
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func (;62;) (type 22) (param i32 i32 i32 i32)
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
          call 71
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
      call 80
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
          call 73
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
      call 73
    end)
  (func (;63;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 3
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load
    local.tee 4
    i64.load
    i64.store
    local.get 1
    i32.const 16
    i32.add
    local.tee 5
    local.get 4
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 8
    i32.add
    local.tee 6
    local.get 4
    i32.const 8
    i32.add
    i64.load
    i64.store
    i32.const 1
    i32.const 8633
    call 0
    local.get 2
    local.get 1
    i32.const 8
    call 3
    drop
    i32.const 1
    i32.const 8633
    call 0
    local.get 2
    i32.const 8
    i32.or
    local.get 6
    i32.const 8
    call 3
    drop
    i32.const 1
    i32.const 8633
    call 0
    local.get 2
    i32.const 16
    i32.add
    local.get 5
    i32.const 8
    call 3
    drop
    local.get 1
    local.get 3
    i64.load offset=8
    i64.const -6146845789370777600
    local.get 0
    i32.load offset=8
    i64.load
    i64.const -6146845789370777600
    local.get 2
    i32.const 24
    call 12
    i32.store offset=28
    block  ;; label = @1
      local.get 3
      i64.load offset=16
      i64.const -6146845789370777600
      i64.gt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 16
      i32.add
      i64.const -6146845789370777599
      i64.store
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;64;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64 i64)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 3
    local.get 2
    i32.const 32
    i32.add
    local.tee 4
    i32.const 0
    i32.store
    local.get 2
    i64.const 0
    i64.store offset=16
    local.get 2
    i64.const 0
    i64.store offset=24
    local.get 2
    i32.const 0
    i32.store8 offset=36
    local.get 2
    i64.const 0
    i64.store offset=40
    local.get 2
    i32.const 25700
    i32.store16 offset=48
    local.get 2
    i32.const 0
    i32.store offset=52
    local.get 2
    i32.const 100
    i32.store8 offset=56
    local.get 2
    i64.const 0
    i64.store offset=60 align=4
    local.get 2
    i32.const 25601
    i32.store16 offset=68
    local.get 2
    i32.const 0
    i32.store offset=72
    local.get 2
    i32.const 100
    i32.store8 offset=76
    local.get 2
    i32.const 0
    i32.store offset=80
    local.get 2
    i32.const 88
    i32.add
    local.get 3
    call 49
    local.get 2
    local.get 2
    i64.load offset=88
    i64.const 1
    i64.add
    i64.store offset=88
    local.get 3
    i32.const 48
    i32.add
    local.get 2
    i32.const 88
    i32.add
    local.get 3
    i64.load
    call 57
    local.get 2
    local.get 2
    i64.load offset=88
    i64.store offset=8
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.tee 5
    local.get 0
    i32.load offset=4
    call 77
    drop
    local.get 2
    local.get 0
    i32.load offset=8
    i64.load
    i64.store offset=16
    local.get 2
    call 8
    i64.const 1000000
    i64.div_u
    i32.wrap_i64
    local.tee 6
    i32.store offset=52
    local.get 2
    local.get 6
    i32.store offset=40
    local.get 2
    local.get 6
    i32.store offset=72
    local.get 2
    local.get 6
    i32.store offset=60
    local.get 2
    local.get 6
    i32.store offset=80
    local.get 3
    local.get 0
    i32.load offset=4
    call 66
    local.set 7
    local.get 0
    i32.load offset=8
    i64.load
    local.set 8
    local.get 1
    local.get 2
    i64.load offset=8
    local.tee 9
    i64.store
    local.get 1
    i32.const 8
    i32.add
    local.get 2
    i64.load offset=16
    i64.store
    local.get 2
    local.get 8
    local.get 9
    local.get 7
    local.get 2
    i64.load32_u offset=40
    i64.add
    i64.add
    i64.add
    i64.const 109
    i64.rem_u
    i64.store8 offset=36
    local.get 1
    i32.const 16
    i32.add
    local.get 5
    call 77
    drop
    local.get 1
    i32.const 68
    i32.add
    local.get 2
    i64.load offset=76 align=4
    i64.store align=4
    local.get 1
    i32.const 60
    i32.add
    local.get 2
    i64.load offset=68 align=4
    i64.store align=4
    local.get 1
    i32.const 52
    i32.add
    local.get 2
    i64.load offset=60 align=4
    i64.store align=4
    local.get 1
    i32.const 44
    i32.add
    local.get 2
    i64.load offset=52 align=4
    i64.store align=4
    local.get 1
    i32.const 36
    i32.add
    local.get 2
    i64.load offset=44 align=4
    i64.store align=4
    local.get 1
    local.get 2
    i64.load offset=36 align=4
    i64.store offset=28 align=4
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=24
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load
      call 73
    end
    local.get 2
    i32.const 112
    i32.add
    global.set 0)
  (func (;65;) (type 3) (param i32 i32)
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
    i32.const 8633
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
    i32.load offset=4
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
    i32.const 8633
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
    local.get 1
    i32.load
    local.get 0
    i32.load offset=8
    call 67
    drop
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 0
    i32.gt_s
    i32.const 8633
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=16
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 8633
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 4
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=20
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 8633
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 4
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=24
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 0
    i32.gt_s
    i32.const 8633
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=28
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 0
    i32.gt_s
    i32.const 8633
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=32
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 8633
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 4
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=36
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 0
    i32.gt_s
    i32.const 8633
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=40
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 8633
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 4
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=44
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 8633
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 4
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=48
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 0
    i32.gt_s
    i32.const 8633
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=52
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 0
    i32.gt_s
    i32.const 8633
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=56
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 8633
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 4
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=60
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 0
    i32.gt_s
    i32.const 8633
    call 0
    local.get 3
    i32.load offset=4
    local.get 2
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=64
    local.set 3
    local.get 1
    i32.load
    local.tee 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_s
    i32.const 8633
    call 0
    local.get 0
    i32.load offset=4
    local.get 3
    i32.const 4
    call 3
    drop
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4)
  (func (;66;) (type 23) (param i32 i32) (result i64)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=8
    local.get 1
    i32.const 1
    i32.add
    local.get 1
    i32.load8_u
    local.tee 3
    i32.const 1
    i32.and
    local.tee 4
    select
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            local.get 3
            i32.const 1
            i32.shr_u
            local.get 4
            select
            local.tee 4
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const -4
            i32.add
            local.set 6
            local.get 5
            local.set 1
            local.get 4
            local.set 3
            loop  ;; label = @5
              local.get 2
              i32.const 12
              i32.add
              local.get 1
              i32.const 4
              call 3
              drop
              local.get 2
              i32.load offset=12
              i32.const 1540483477
              i32.mul
              local.tee 7
              i32.const 24
              i32.shr_u
              local.get 7
              i32.xor
              i32.const 1540483477
              i32.mul
              local.get 3
              i32.const 1540483477
              i32.mul
              i32.xor
              local.set 3
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 4
              i32.const -4
              i32.add
              local.tee 4
              i32.const 3
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 5
            local.get 6
            i32.const -4
            i32.and
            local.tee 1
            i32.add
            i32.const 4
            i32.add
            local.set 5
            local.get 6
            local.get 1
            i32.sub
            local.tee 4
            i32.const 1
            i32.eq
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          local.get 4
          local.set 3
          local.get 4
          i32.const 1
          i32.eq
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          local.get 4
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          i32.const 3
          i32.ne
          br_if 2 (;@1;)
          local.get 5
          i32.load8_u offset=2
          i32.const 16
          i32.shl
          local.get 3
          i32.xor
          local.set 3
        end
        local.get 5
        i32.load8_u offset=1
        i32.const 8
        i32.shl
        local.get 3
        i32.xor
        local.set 3
      end
      local.get 3
      local.get 5
      i32.load8_u
      i32.xor
      i32.const 1540483477
      i32.mul
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 3
    i32.const 13
    i32.shr_u
    local.get 3
    i32.xor
    i32.const 1540483477
    i32.mul
    local.tee 1
    i32.const 15
    i32.shr_u
    local.get 1
    i32.xor
    i64.extend_i32_u)
  (func (;67;) (type 5) (param i32 i32) (result i32)
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
      i32.const 8633
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
      i32.const 8633
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
  (func (;68;) (type 3) (param i32 i32)
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
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
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
    i32.load offset=4
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
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
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
    i32.load offset=8
    call 47
    drop
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.ne
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=16
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_u
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 4
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=20
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_u
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 4
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=24
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.ne
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=28
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.ne
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=32
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_u
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 4
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=36
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.ne
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=40
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_u
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 4
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=44
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_u
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 4
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=48
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.ne
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=52
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.ne
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=56
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_u
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 4
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=60
    local.set 2
    local.get 1
    i32.load
    local.tee 3
    i32.load offset=8
    local.get 3
    i32.load offset=4
    i32.ne
    i32.const 8343
    call 0
    local.get 2
    local.get 3
    i32.load offset=4
    i32.const 1
    call 3
    drop
    local.get 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 0
    i32.load offset=64
    local.set 3
    local.get 1
    i32.load
    local.tee 0
    i32.load offset=8
    local.get 0
    i32.load offset=4
    i32.sub
    i32.const 3
    i32.gt_u
    i32.const 8343
    call 0
    local.get 3
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
    i32.store offset=4)
  (func (;69;) (type 5) (param i32 i32) (result i32)
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
      i32.const 8725
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
        call 70
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
    i32.const 8343
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
  (func (;70;) (type 3) (param i32 i32)
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
              call 71
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
        call 80
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
      call 73
      return
    end)
  (func (;71;) (type 24) (param i32) (result i32)
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
        i32.load offset=8916
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call_indirect (type 2)
        local.get 1
        call 82
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;72;) (type 24) (param i32) (result i32)
    local.get 0
    call 71)
  (func (;73;) (type 8) (param i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 85
    end)
  (func (;74;) (type 8) (param i32)
    local.get 0
    call 73)
  (func (;75;) (type 8) (param i32)
    call 13
    unreachable)
  (func (;76;) (type 5) (param i32 i32) (result i32)
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
        call 71
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
    call 13
    unreachable)
  (func (;77;) (type 5) (param i32 i32) (result i32)
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
            call 78
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
  (func (;78;) (type 25) (param i32 i32 i32 i32 i32 i32 i32 i32)
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
      call 71
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
        call 73
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
  (func (;79;) (type 3) (param i32 i32)
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
                  call 71
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
      call 3
      drop
    end
    block  ;; label = @1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      call 73
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
  (func (;80;) (type 8) (param i32)
    call 13
    unreachable)
  (func (;81;) (type 8) (param i32))
  (func (;82;) (type 24) (param i32) (result i32)
    i32.const 8928
    local.get 0
    call 83)
  (func (;83;) (type 5) (param i32 i32) (result i32)
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
            i32.const 17324
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
  (func (;84;) (type 24) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8388
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=8920
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=8924
        local.set 2
        br 1 (;@1;)
      end
      memory.size
      local.set 2
      i32.const 0
      i32.const 1
      i32.store8 offset=8920
      i32.const 0
      local.get 2
      i32.const 16
      i32.shl
      local.tee 2
      i32.store offset=8924
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
            i32.load offset=8924
            local.set 3
          end
          i32.const 0
          local.set 5
          i32.const 0
          local.get 3
          i32.store offset=8924
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
            i32.load8_u offset=8920
            br_if 0 (;@4;)
            memory.size
            local.set 3
            i32.const 0
            i32.const 1
            i32.store8 offset=8920
            i32.const 0
            local.get 3
            i32.const 16
            i32.shl
            local.tee 3
            i32.store offset=8924
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
            i32.load offset=8924
            local.set 6
          end
          i32.const 0
          local.get 6
          local.get 7
          i32.add
          i32.store offset=8924
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
        i32.load offset=17312
        local.tee 1
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 17120
        local.set 2
        local.get 1
        i32.const 12
        i32.mul
        i32.const 17120
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
  (global (;1;) i32 (i32.const 17410))
  (global (;2;) i32 (i32.const 17410))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "apply" (func 36))
  (export "_ZdlPv" (func 73))
  (export "_Znwj" (func 71))
  (export "_Znaj" (func 72))
  (export "_ZdaPv" (func 74))
  (elem (;0;) (i32.const 1) func 37 39 40 42 43 44 46)
  (data (;0;) (i32.const 8192) "onerror action's are only valid from the \22eosio\22 system account\00")
  (data (;1;) (i32.const 8256) "creating pet\00")
  (data (;2;) (i32.const 8269) "object passed to iterator_to is not in multi_index\00")
  (data (;3;) (i32.const 8320) "error reading iterator\00")
  (data (;4;) (i32.const 8343) "read\00")
  (data (;5;) (i32.const 8348) "singleton does not exist\00")
  (data (;6;) (i32.const 8373) "magnitude of asset amount must be less than 2^62\00")
  (data (;7;) (i32.const 8422) "invalid symbol name\00")
  (data (;8;) (i32.const 8442) "cannot pass end iterator to modify\00")
  (data (;9;) (i32.const 8477) "object passed to modify is not in multi_index\00")
  (data (;10;) (i32.const 8523) "cannot modify objects in table of another contract\00")
  (data (;11;) (i32.const 8574) "updater cannot change primary key when modifying an object\00")
  (data (;12;) (i32.const 8633) "write\00")
  (data (;13;) (i32.const 8639) "cannot create objects in table of another contract\00")
  (data (;14;) (i32.const 8690) "|\00")
  (data (;15;) (i32.const 8692) ": updating pet \00")
  (data (;16;) (i32.const 8708) "E404|Invalid pet\00")
  (data (;17;) (i32.const 8725) "get\00")
  (data (;18;) (i32.const 8729) "E099|Pet is dead\00")
  (data (;19;) (i32.const 8746) "I111|Zzzzzzzz...\00")
  (data (;20;) (i32.const 8763) "I110|Not hungry\00")
  (data (;21;) (i32.const 8779) "I199|Dead don't feed\00")
  (data (;22;) (i32.const 8800) "I201|Not now sir!\00")
  (data (;23;) (i32.const 8818) "I299|Dead don't sleep\00")
  (data (;24;) (i32.const 8840) "I301|Zzzzzzz\00")
  (data (;25;) (i32.const 8853) "I399|Dead don't awake\00")
  (data (;26;) (i32.const 8875) "play lazy developer\00")
  (data (;27;) (i32.const 8895) "wash lazy developer\00")
  (data (;28;) (i32.const 17324) "malloc_from_freed was designed to only be called after _heap was completely allocated\00"))
