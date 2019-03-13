;; Nano 01: módulo mínimo
(module
    (import "env" "memory" (memory 256))
    (import "env" "table" (table 0 anyfunc))
    (func $main)
    (export "main" (func $main)))