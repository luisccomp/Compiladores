;; Nano 04: Atribuição de uma soma de inteiros a uma variável
(module
    (import "env" "memory" (memory 256))
    (import "env" "table" (table 0 anyfunc))
    (func $main
        (local $n i32)
        (set_local $n
            (i32.add
                (i32.const 1)
                (i32.const 2))))
    (export "main" (func $main)))