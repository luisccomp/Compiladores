(module
    (import "env" "memory" (memory 256))
    (import "env" "table" (table 0 anyfunc))
    (import "stdio" "printf" (func $printf (param i32)))
    (import "stdio" "printf" (func $printf_if (param i32 f32)))
    (import "stdio" "readFloat" (func $read_float (result f32)))
    (func $main
        (local $cel f32)
        (local $far f32)
        (call $printf
            (i32.const 0))
        (call $printf
            (i32.const 48))
        ;; Lendo um float do teclado
        (set_local $cel
            (call $read_float))
        ;; Convertendo a temperatura para Farenheit
        (set_local $far
            (f32.div
                (f32.add
                    (f32.mul
                        (f32.const 9)
                        (get_local $cel))
                    (f32.const 160.0))
                (f32.const 5.0)))
        (call $printf_if
            (i32.const 88)
            (get_local $far)))
    (export "main" (func $main))
    (data (i32.const 0) "Tabela de conversao: Celcius -> Farenheit\n\00")
    (data (i32.const 48) "Digite a temperatura em Celcius: \00")
    (data (i32.const 88) "A nova temperatura e: %f F\n\00"))