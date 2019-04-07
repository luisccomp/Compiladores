(module
    (import "env" "memory" (memory 256))
    (import "env" "table" (table 0 anyfunc))
    (import "stdio" "printf" (func $printf_i (param i32 i32)))
    (func $main
        (local $n i32)
        (set_local $n
            (i32.add
                (i32.const 1)
                (i32.div_s
                    (i32.const 1)
                    (i32.const 2))))
        (if (i32.eq (get_local $n) (i32.const 1))
            (then
                (call $printf_i
                    (i32.const 0)
                    (get_local $n)))
            (else
                (call $printf_i
                    (i32.const 0)
                    (i32.const 0)))))
    (data (i32.const 0) "%d\00")
    (export "main" (func $main)))