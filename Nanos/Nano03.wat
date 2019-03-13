;; Nano 03: Atribuição de um inteiro a uma variável
(module
    (import "env" "memory" (memory 256))
    (import "env" "table" (table 0 anyfunc))
    (func $main
        (local $n i32)
        (set_local $n (i32.const 1)))
    (export "main" (func $main)))