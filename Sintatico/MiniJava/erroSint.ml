
(* This file was auto-generated based on "sintatico.msg". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 0 ->
        "Erro: Declara\195\167\195\163o de programa inv\195\161lida (0). Exemplo: public class Exemplo { }\n"
    | 1 ->
        "Erro: Declara\195\167\195\163o de programa inv\195\161lida (1). Exemplo: public class Exemplo { }\n"
    | 2 ->
        "Erro: Declara\195\167\195\163o de programa inv\195\161lida (2). Exemplo: public class Exemplo { }\n"
    | 3 ->
        "Erro: Declara\195\167\195\163o de programa inv\195\161lida (3). Exemplo: public class Exemplo { }\n"
    | 4 ->
        "Erro: Declara\195\167\195\163o de programa inv\195\161lida (4). Exemplo: public class Exemplo { }\n"
    | 5 ->
        "Erro: declara\195\167\195\163o de fun\195\167\195\163o inv\195\161lida (5). Esperava \"public static tipo nome ( params ) {}\".\n"
    | 6 ->
        "Erro: declara\195\167\195\163o de fun\195\167\195\163o inv\195\161lida (6). Esperava \"public static tipo nome ( params ) {}\".\n"
    | 13 ->
        "Erro: declara\195\167\195\163o de fun\195\167\195\163o inv\195\161lida (13). Esperava \"public static tipo nome ( params ) {}\".\n"
    | 14 ->
        "Erro: declara\195\167\195\163o de fun\195\167\195\163o inv\195\161lida (14). Esperava \"public static tipo nome ( params ) {}\".\n"
    | 15 ->
        "Erro: declara\195\167\195\163o de fun\195\167\195\163o inv\195\161lida (15). Esperava \"public static tipo nome ( params ) {}\".\n"
    | 16 ->
        "Erro: Tipo mal declarado (16). Esperava \"tipo identificador\".\n"
    | 18 ->
        "Esperava \")\" ap\195\179s declara\195\167\195\163o de par\195\162metros.\n"
    | 19 ->
        "Erro: Ap\195\179s \",\" esperava outro par\195\162metro do tipo \"tipo identificador\".\n"
    | 22 ->
        "Erro: faltou o corpo da fun\195\167\195\163o.\n"
    | 31 ->
        "Comando while mal declarado. Esperava \"while (express\195\163o) { comandos... }\".\n"
    | 32 ->
        "Comando while mal declarado. Esperava \"while (express\195\163o) { comandos... }\".\n"
    | 80 ->
        "Comando while mal declarado. Esperava \"while (express\195\163o) { comandos... }\".\n"
    | 81 ->
        "Comando while mal declarado, Faltou o corpo do while. Esperava \"while (express\195\163o) { comandos... }\".\n"
    | 82 ->
        "Comando while mal declarado. Esperava \"while (express\195\163o) { comandos... }\". O comando while n\195\163o foi fechado.\n"
    | 164 ->
        "Comando while mal declarado. Esperava \"while (express\195\163o) { comandos... }\". O comando while n\195\163o foi fechado.\n"
    | 131 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 24 ->
        "Erro: faltou o tipo das vari\195\161veis.\n"
    | 25 ->
        "Faltou \";\" ap\195\179s declara\195\167\195\163o dos tipos.\n"
    | 26 ->
        "Erro: ap\195\179s \",\" esperava outro identificador para vari\195\161vel.\n"
    | 168 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 23 ->
        "Fun\195\167\195\163o n\195\163o fechada.\n"
    | 83 ->
        "Comando switch mal declarado. Esperava \"switch (expressao) { cases }\".\n"
    | 84 ->
        "Comando switch mal declarado. Esperava \"switch (expressao) { cases }\".\n"
    | 85 ->
        "Comando switch mal declarado. Esperava \"switch (expressao) { cases }\".\n"
    | 86 ->
        "Erro: faltou o corpo do switch.\n"
    | 87 ->
        "Erro: faltou a declara\195\167\195\163o dos cases.\n"
    | 157 ->
        "Ap\195\179s default, esperava \":\".\n"
    | 158 ->
        "Faltou \";\"?\n"
    | 160 ->
        "Comando switch n\195\163o fechado. Faltou \"}\".\n"
    | 88 ->
        "Case mal declarado. Faltou express\195\163o.\n"
    | 89 ->
        "Faltou dois pontos ap\195\179s a express\195\163o do case.\n"
    | 90 ->
        "Falotu o break ap\195\179s os comandos.\n"
    | 153 ->
        "Faltou \"BREAK\"?\n"
    | 154 ->
        "Faltou \";\" ap\195\179s o \"break\".\n"
    | 162 ->
        "cases -> case . cases [ DEFAULT ]\n"
    | 91 ->
        "Ap\195\179s return, faltou \";\" ou uma express\195\163o.\n"
    | 134 ->
        "Ap\195\179s o comando, faltou o \";\".\n"
    | 166 ->
        "Faltou fechar a fun\195\167\195\163o.\n"
    | 33 ->
        "Ap\195\179s o \"!\", faltou uma express\195\163o.\n"
    | 79 ->
        "Express\195\163o inv\195\161lida ap\195\179s o \"!\".\n"
    | 34 ->
        "Erro: o operador \"-\" necessita de dois operadores \"op1 - op2\".\n"
    | 92 ->
        "Express\195\163o inv\195\161lida ap\195\179s o return.\n"
    | 45 ->
        "O operador \"*\" necessita de dois operadores \"op1 * op2\".\n"
    | 47 ->
        "O operador \"||\" necessita de dois operadores \"op1 || op2\".\n"
    | 48 ->
        "Expressao logica invalida.\n"
    | 49 ->
        "O operador \"%%\" necessita de dois operadores \"op1 %% op2\".\n"
    | 51 ->
        "<O operador \"-\" necessita de dois operadores \"op1 - op2\".\n"
    | 52 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 55 ->
        "O operador \"<=\" necessita de dois operadores \"op1 <= op2\".\n"
    | 56 ->
        "Expressao invalida.\n"
    | 59 ->
        "Faltou outra express\195\163o.\n"
    | 60 ->
        "Expressao invalida.\n"
    | 57 ->
        "Expressao invalida.\n"
    | 58 ->
        "Expressao invalida.\n"
    | 61 ->
        "O operador \">=\" espera dois operadores. \"a >= b\".\n"
    | 62 ->
        "Exp invalida.\n"
    | 63 ->
        "Operador \">\" esperava dois operadores \"a > b\".\n"
    | 64 ->
        "Express\195\163o inv\195\161lida.\n"
    | 65 ->
        "O operador \"==\" recebe dois operadores. \"a == b\".\n"
    | 66 ->
        "Express\195\163o inv\195\161lida.\n"
    | 67 ->
        "Operador \"&&\" recebe dois operadores. \"a && b\".\n"
    | 68 ->
        "Expressao invalida.\n"
    | 53 ->
        "O operador \"/\" recebe dois operadores \"a / b\".\n"
    | 69 ->
        "O operador \"!=\" recebe dois operadores \"a != b\".\n"
    | 70 ->
        "Express\195\163o inv\195\161lida ap\195\179s \"!=\".\n"
    | 40 ->
        "Chamada de fun\195\167\195\163o inv\195\161lida. Faltou os par\195\162metros \"id( parametros )\".\n"
    | 41 ->
        "Chamada de fun\195\167\195\163o inv\195\161lida. Os par\195\162metros s\195\163o separados por \",\".\n"
    | 133 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 42 ->
        "Faltou \")\" ap\195\179s a express\195\163o.\n"
    | 44 ->
        "Express\195\163o inv\195\161lida antes de \")\".\n"
    | 93 ->
        "Comando print mal declarado.\n"
    | 94 ->
        "Comando print mal declarado. Faltou os parametros.\n"
    | 73 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 74 ->
        "Faltou outra espress\195\163o \",\".\n"
    | 97 ->
        "Faltou \"(\" ap\195\179s o comando \"if\".\n"
    | 98 ->
        "Comando \"if\" mal declarado. Faltou express\195\163o.\n"
    | 99 ->
        "Express\195\163o mal declarada.\n"
    | 100 ->
        "Faltou o corpo do if.\n"
    | 101 ->
        "Faltou fechar o comando if com \"}\".\n"
    | 145 ->
        "Faltou fechar o comando if com \"}\" (2).\n"
    | 146 ->
        "Erro desconhecido parte else.\n"
    | 147 ->
        "Faltou o corpo do else ou declara\195\167\195\163o de if.\n"
    | 148 ->
        "Faltou fechar o comando else.\n"
    | 149 ->
        "Faltou o \"}\" do comando else.\n"
    | 102 ->
        "Identificador fora de express\195\163o.\n"
    | 103 ->
        "Faltou express\195\163o ap\195\179s \"*=\".\n"
    | 104 ->
        "Express\195\163o mal delcarada ap\195\179s \"*=\".\n"
    | 106 ->
        "Faltou express\195\163o ap\195\179s \"-=\".\n"
    | 107 ->
        "Express\195\163o invalida ap\195\179s \"-=\".\n"
    | 109 ->
        "Faltou express\195\163o \"+=\".\n"
    | 110 ->
        "Express\195\163o mal formada.\n"
    | 111 ->
        "Faltou express\195\163o ap\195\179s \"/=\".\n"
    | 112 ->
        "Express\195\163o invalida apos \"/=\".\n"
    | 113 ->
        "Faltou express\195\163o ap\195\179s atribui\195\167\195\163o \"=\".\n"
    | 118 ->
        "Express\195\163o mal formada ap\195\179s \"=\".\n"
    | 119 ->
        "Comando for mal formado. Esperafa \"for (inicializacao; expressao; comando) { comandos }\".\n"
    | 120 ->
        "Comando for mal formado Faltou inicializa\195\167\195\163o. Esperafa \"for (inicializacao; expressao; comando) { comandos }\".\n"
    | 121 ->
        "Comando de inicializa\195\167\195\163o mal formado. Deve ser comando de atribui\195\167\195\163o.\n"
    | 123 ->
        "Faltou express\195\163o ap\195\179s comando de inicializa\195\167\195\163o.\n"
    | 124 ->
        "Express\195\163o mal formada no for.\n"
    | 125 ->
        "Faltou o comando para incremento no for.\n"
    | 126 ->
        "Faltou o \")\". Esperava \"for (inicializacao; expr; comando) { comandos }\".\n"
    | 127 ->
        "Faltou o corpo do for.\n"
    | 128 ->
        "<Faltou fechar o comando for.\n"
    | 129 ->
        "Faltou fechar o comando for.\n"
    | 122 ->
        "Comando de atribui\195\167\195\163o mal formado. Faltou PTV.\n"
    | 173 ->
        "Erro: comandos ou express\195\181es devem ser declarados dentro de fun\195\167\195\181es.\n"
    | 171 ->
        "Erro: nenhuma declara\195\167\195\163o de express\195\163o ou comando deve ser feita ap\195\179s a declara\195\167\195\163o de programa.\n"
    | _ ->
        raise Not_found
