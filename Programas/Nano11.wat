(module
    (import "env" "memory" (memory 256))
    (import "env" "table" (table 0 anyfunc))
    (import "stdio" "printf" (func $printf_i (param i32 i32)))
    (func $main
        (local $n i32)
        (local $m i32)
        (local $x i32)
        (set_local $n (i32.const 1))
        (set_local $m (i32.const 2))
        (set_local $x (i32.const 5))
        (block $B1
            (loop $L1
                (set_local $n
                    (i32.add
                        (get_local $n)
                        (get_local $m)))
                (call $printf_i
                    (i32.const 0)
                    (get_local $n))
                (br_if $L1 (i32.gt_s (get_local $x) (get_local $n)))
                (br $B1))))
    (data (i32.const 0) "%d\00")
    (export "main" (func $main)))