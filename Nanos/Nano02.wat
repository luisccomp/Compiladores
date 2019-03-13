;; Nano 02: declaração de uma variável
(module
    (import "env" "memory" (memory 256))
    (import "env" "table" (table 0 anyfunc))
    (func $main
        (local $n i32))
    (export "main" (func $main)))