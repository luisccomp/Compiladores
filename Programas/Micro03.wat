(module
    (import "env" "memory" (memory 256))
    (import "env" "table" (table 0 anyfunc))
    (import "stdio" "printf" (func $printf (param i32)))
    (import "stdio" "readInt" (func $read_int (result i32)))
    (func $main
        (local $numero i32)
        (call $printf
            (i32.const 0))
        (set_local $numero
            (call $read_int))
        (if (i32.ge_s (get_local $numero) (i32.const 100))
            (then
                (if (i32.le_s (get_local $numero) (i32.const 200))
                    (then
                        (call $printf
                            (i32.const 20)))
                    (else
                        (call $printf
                            (i32.const 63)))))
            (else
                (call $printf
                    (i32.const 63)))))
    (export "main" (func $main))
    (data (i32.const 0) "Digite um numero: \00")
    (data (i32.const 20) "O numero esta no intervalo entre 100 e 200\n\00")
    (data (i32.const 63) "O numero nao esta no intervalo entre 100 e 200\n\00"))
