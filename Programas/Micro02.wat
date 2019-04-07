(module
    (import "env" "memory" (memory 256))
    (import "env" "table" (table 0 anyfunc))
    (import "stdio" "printf" (func $printf (param i32)))
    (import "stdio" "printf" (func $printf_ii (param i32 i32 i32)))
    (import "stdio" "readInt" (func $read_int (result i32)))
    (func $main
        (local $num1 i32)
        (local $num2 i32)
        (call $printf
            (i32.const 0))
        ;; Lendo um inteiro a partir do teclado
        (set_local $num1
            (call $read_int))
        (call $printf
            (i32.const 32))
        ;; Lendo outro inteiro do teclado
        (set_local $num2
            (call $read_int))
        ;; Comparando os numros
        (if (i32.gt_s (get_local $num1) (get_local $num2))
            (then
                (call $printf_ii
                    (i32.const 64)
                    (get_local $num1)
                    (get_local $num2)))
            (else
                (call $printf_ii
                    (i32.const 128)
                    (get_local $num2)
                    (get_local $num1)))))
    (export "main" (func $main))
    (data (i32.const 0) "Digite o primeiro numero: \00")
    (data (i32.const 32) "Digite o seguindo numero: \00")
    (data (i32.const 64) "O primeiro numero %d e maior que o segundo %d\n\00")
    (data (i32.const 128) "O segundo numero %d e maior que o primeiro %d\n\00"))