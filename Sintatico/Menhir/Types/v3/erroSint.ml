
(* This file was auto-generated based on "sintatico.msg". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 0 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 1 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 34 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 35 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 36 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 72 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 47 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 48 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 49 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 51 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 52 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 55 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 56 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 57 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 58 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 61 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 62 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 63 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 64 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 73 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 74 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 95 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 89 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 97 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 98 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 99 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 65 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 66 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 53 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 67 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 68 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 59 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 60 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 42 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 41 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 70 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 75 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 77 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 76 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 105 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 84 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 43 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 85 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 86 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 45 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 46 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 102 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 103 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 81 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 3 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 2 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 6 ->
        "estado 6: esperava um tipo. Exemplo:\n   x : inteiro;\n"
    | 7 ->
        "estado 7: esperava a definicao de um campo. Exemplo:\n   i: registro\n         parte_real: inteiro;\n         parte_imag: inteiro;\n      fim registro;\n"
    | 8 ->
        "estado 8: esperava ':'. Exemplo:\n   x: inteiro;\n"
    | 9 ->
        "estado 9: esperava um tipo. Exemplo:\n   x: inteiro;\n"
    | 25 ->
        "estado 25: esperava um ';'.\n"
    | 26 ->
        "estado 26: uma declaracao foi encontrada. Para continuar era\n   esperado uma outra declaracao ou a palavra 'inicio'.\n"
    | 29 ->
        "estado 29: espera a palavra 'registro'. Exemplo:\n   i: registro\n         parte_real: inteiro;\n         parte_imag: inteiro;\n      fim registro;\n"
    | 31 ->
        "estado 31: esperava um ';'.\n"
    | 107 ->
        "estado 107: uma declaracao foi encontrada. Para continuar era\n   esperado uma outra declaracao ou a palavra 'inicio'.\n"
    | 13 ->
        "estado 13: esperava um '['. Exemplo:\n   arranjo [1..10] de inteiro;\n"
    | 14 ->
        "estado 14: esperava os limites do vetor. Exemplo:\n   arranjo [1..10] de inteiro;\n"
    | 15 ->
        "estado 15: esperava '..'. Exemplo:\n   1 .. 10\n"
    | 16 ->
        "estado 16: esperava um numero inteiro. Exemplo:\n   1 .. 10\n"
    | 18 ->
        "estado 18: esperava um ']'. Exemplo\n   arranjo [1..10] de inteiro;\n"
    | 19 ->
        "estado 19: esperava a palavra reservada 'de'. Exemplo:\n   arranjo [1..10] de inteiro;\n"
    | 20 ->
        "estado 20: esperava um tipo. Exemplo\n   arranjo [1..10] de inteiro;\n"
    | _ ->
        raise Not_found
