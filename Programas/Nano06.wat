;; Nano 06: Atribuição de uma subtração de inteiros a uma variável
(module
    (import "env" "memory" (memory 256))
    (import "env" "table" (table 0 anyfunc))
    (import "stdio" "printf" (func $printf_i (param i32 i32)))
    (func $main
        (local $n i32)
        (set_local $n
            (i32.sub
                (i32.const 1)
                (i32.const 2)))
        (call $printf_i
            (i32.const 0)
            (get_local $n)))
    (data (i32.const 0) "%d\00")
    (export "main" (func $main)))