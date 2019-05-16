
(* This file was auto-generated based on "sintatico.msg". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 0 ->
        "<Defini\195\167\195\163o incorreta de programa. Esperava \"public class ID {}>\n"
    | 1 ->
        "<Defini\195\167\195\163o incorreta de programa. Esperava \"public class ID {}>\n"
    | 2 ->
        "<Defini\195\167\195\163o incorreta de programa. Esperava \"public class ID {}>\n"
    | 3 ->
        "<Defini\195\167\195\163o incorreta de programa. Esperava \"public class ID {}>\n"
    | 4 ->
        "<Esperava '}' ou declara\195\167\195\163o de fun\195\167\195\181es.>\n"
    | 5 ->
        "<Declara\195\167\195\163o de fun\195\167\195\163o impr\195\179pria. Esperava \"tipo ID ( parametros ) { comandos [retorno [expressao];] }\">\n"
    | 6 ->
        "<Declara\195\167\195\163o de fun\195\167\195\163o impr\195\179pria. Esperava \"tipo ID ( parametros ) { comandos [retorno [expressao];] }\">\n"
    | 13 ->
        "<<Declara\195\167\195\163o de fun\195\167\195\163o impr\195\179pria. Esperava \"tipo ID ( parametros ) { comandos [retorno [expressao];] }\">\n"
    | 14 ->
        "<Declara\195\167\195\163o de fun\195\167\195\163o impr\195\179pria. Esperava \"tipo ID ( parametros ) { comandos [retorno [expressao];] }\">\n"
    | 15 ->
        "<Declara\195\167\195\163o de fun\195\167\195\163o impr\195\179pria. Esperava \"tipo ID ( parametros ) { comandos [retorno [expressao];] }\">\n"
    | 16 ->
        "<Esperava ap\195\179s declara\195\167\195\163o do tipo, esperava o identificador. Exemplo: \"tipo identificador[, tipo identificador, ...]\">\n"
    | 18 ->
        "<Erro: esperava ')' ou outros par\195\162metros \"tipo identificador\" separados por ','>\n"
    | 19 ->
        "<Esperava \"tipo identificador\" ap\195\179s ','>\n"
    | 22 ->
        "<Erro, esperava \"{\". A fun\195\167\195\163o est\195\161 sem corpo.>\n"
    | 31 ->
        "<Esperava \"while ( expressao ) { comandos }\".>\n"
    | 32 ->
        "<Erro ap\195\179s \"while (\" esperava express\195\163o.>\n"
    | 80 ->
        "<O comando \"while\" n\195\163o pode ser declarado onde se esperava uma express\195\163o. Erro: \"while (expressao) { comandos }\">\n"
    | 81 ->
        "<Faltou o corpo do while. \" while (expr) { corpo }\">\n"
    | 82 ->
        "<Comando inv\195\161lido.>\n"
    | 164 ->
        "<Erro desconhecido (1)>\n"
    | 131 ->
        "<Erro desconhecido (2)>\n"
    | 24 ->
        "<Ap\195\179s o tipo, esperava um ou mais identificadores.>\n"
    | 25 ->
        "<Erro: esperava \",\" ou \";\" ap\195\179s iddentificador>\n"
    | 26 ->
        "<Ap\195\179s \",\" esperava outro identificador.>\n"
    | 168 ->
        "<Erro desconhecido (3)>\n"
    | 23 ->
        "<Erro desconhecido (4)>\n"
    | 83 ->
        "<Comando \"switch\" mal declarado. Esperava \"switch (expressao) { <cases> <default> }>\n"
    | 84 ->
        "<Esperava express\195\163o ap\195\179s \"(\".>\n"
    | 85 ->
        "<N\195\163o se pode declarar um comando onde se espera uma express\195\163o. Esperava \"switch (expressao)\">\n"
    | 86 ->
        "<Comando \"switch\" sem corpo.>\n"
    | 87 ->
        "<Esperava \"case\" ou \"default\".>\n"
    | 157 ->
        "<Esperava \":\" ap\195\179s \"default\".>\n"
    | 158 ->
        "<Esperava um comando. ou \"}\".>\n"
    | 160 ->
        "<Esperava \"}\". Comando \"switch\" n\195\163o fechado.>\n"
    | 88 ->
        "<Ap\195\179s o \"case\", esperava uma express\195\163o.>\n"
    | 89 ->
        "<N\195\163o se pode declarar um comando onde se espera uma express\195\163o.>\n"
    | 90 ->
        "<Esperava um comando ap\195\179s \":\".>\n"
    | 153 ->
        "<Esperava \"break;\" ap\195\179s declara\195\167\195\163o de comandos dentro de um \"case\".>\n"
    | 154 ->
        "<Ap\195\179s o \"break\" esperava \";\".>\n"
    | 162 ->
        "<N\195\163o se pode declarar comandos ap\195\179s o \"break\". Esperava \"case\".>\n"
    | 91 ->
        "<Ap\195\179s \"return\" esperava uma express\195\163o.>\n"
    | 134 ->
        "<Esperava um comando.>\n"
    | 166 ->
        "<Fun\195\167\195\163o n\195\163o fechada. Esperava \"}\" no final da fun\195\167\195\163o.>\n"
    | 33 ->
        "<Ap\195\179s o \"!\" esperava uma express\195\163o>\n"
    | 79 ->
        "<Esperava um operador um operador ap\195\179s uma express\195\163o.>\n"
    | 34 ->
        "<Ap\195\179s \"-\", esperava uma express\195\163o.>\n"
    | 92 ->
        "<Esperava um operador ap\195\179s a express\195\163o.>\n"
    | 45 ->
        "<Ap\195\179s o operador, esperava uma outra express\195\163o.>\n"
    | 47 ->
        "<Esperava uma express\195\163o ap\195\179s \"||\".>\n"
    | 48 ->
        "<Esperava uma express\195\163o em vez de um comando ap\195\179s o operador>\n"
    | 49 ->
        "<Esperava uma outra express\195\163o ap\195\179s o operador \"%\">\n"
    | 51 ->
        "<Esperava uma outra express\195\163o ap\195\179s \"-\">\n"
    | 52 ->
        "<Esperava um operador ap\195\179s a express\195\163o ou \";\">\n"
    | 55 ->
        "<Esperava uma outra express\195\163o ap\195\179s \"<=\">\n"
    | 56 ->
        "<Esperava outra express\195\163o ou \";\" ap\195\179s express\195\163o>\n"
    | 59 ->
        "<Esperava outra express\195\163o ap\195\179s \"<\">\n"
    | 60 ->
        "<Esperava um operador ou \";\" ap\195\179s a express\195\163o.>\n"
    | 57 ->
        "<Esperava outra express\195\163o ap\195\179s \"+\">\n"
    | 58 ->
        "<Esperava um operador ou outra express\195\163o ap\195\179s \";\">\n"
    | 61 ->
        "<Esperava outra express\195\163o ap\195\179s \">=\">\n"
    | 62 ->
        "<Ap\195\179s a express\195\163o, esperava outra express\195\163o ou \";\">\n"
    | 63 ->
        "<Esperava uma express\195\163o ap\195\179s \">\">\n"
    | 64 ->
        "<Esperava um outro perador ap\195\179s express\195\163o ou \";\">\n"
    | 65 ->
        "<Esperava express\195\163o ap\195\179s \"==\">\n"
    | 66 ->
        "<Esperava uma outra express\195\163o ou \";\">\n"
    | 67 ->
        "<Esperava outra express\195\163o ap\195\179s \"&&\">\n"
    | 68 ->
        "<Esperava outro operador ou \";\" ap\195\179s express\195\163o>\n"
    | 53 ->
        "<Esperava outra express\195\163o ap\195\179s \"/\">\n"
    | 69 ->
        "<Esperava outra express\195\163o ap\195\179s \"!=\">\n"
    | 70 ->
        "<Esperava outro operador ou \";\" ap\195\179s express\195\163o>\n"
    | 40 ->
        "<Esperava \"(\" ou \";\" ap\195\179s identificador>\n"
    | 41 ->
        "<Ap\195\179s \"(\" esperava uma lista de argumentos. Chamada de fun\195\167\195\163o inv\195\161lida>\n"
    | 133 ->
        "<Esperava \";\" ap\195\179s o comando>\n"
    | 42 ->
        "<Esperava uma express\195\163o ap\195\179s \"(\">\n"
    | 44 ->
        "<Esperava outro operador ou \";\" ap\195\179s express\195\163o>\n"
    | 93 ->
        "<Ap\195\179s \"System.out.printf\" esperava \"(\">\n"
    | 94 ->
        "<Ap\195\179s \"System.out.printf (\" esperava uma lista de argumentos>\n"
    | 73 ->
        "<Esperava outro operador ou \";\" ap\195\179s express\195\163o>\n"
    | 74 ->
        "<Ap\195\179s \",\", esperava outra express\195\163o>\n"
    | 97 ->
        "<Ap\195\179s \"if\", esperava \"(\">\n"
    | 98 ->
        "<Ap\195\179s \"if (\" esperava uma express\195\163o.>\n"
    | 99 ->
        "<Esperava outro operador ou \";\" ap\195\179s express\195\163o>\n"
    | 100 ->
        "<Comando \"if\" sem corpo>\n"
    | 101 ->
        "<Esperava um comando ou \"}\">\n"
    | 145 ->
        "<Esperava \"}\". Comando \"if\" n\195\163o fechado>\n"
    | 146 ->
        "<Esperava outro comando ou \"else { comandos }\" ap\195\179s o \"if\">\n"
    | 147 ->
        "<Esperava \"{\" ou \"if ( express\195\163o ) { comandos }\" ap\195\179s \"else\">\n"
    | 148 ->
        "<Esperava um comando ap\195\179s \"{\">\n"
    | 149 ->
        "<Esperava \"}\". Comando \"if\" n\195\163o fechado>\n"
    | 102 ->
        "Esperava \"=\", \"+=\", \"-=\", \"/=\", \"*=\", \"--\" ou \"++\" ap\195\179s identificador.\n"
    | 103 ->
        "<Ap\195\179s \"*=\" esperava uma express\195\163o>\n"
    | 104 ->
        "<Esperava um \";\" ou outro operador>\n"
    | 106 ->
        "<Esperava outra express\195\163o ap\195\179s \"-=\">\n"
    | 107 ->
        "<Esperava outro operador ou \";\" ap\195\179s express\195\163o>\n"
    | 109 ->
        "<Experava uma exptess\195\163o ap\195\179s \"+=\">\n"
    | 110 ->
        "<Esperava outro operador ou \";\" ap\195\179s uma express\195\163o>\n"
    | 111 ->
        "<Ap\195\179s \"/=\" esperava uma atribui\195\167\195\163o.>\n"
    | 112 ->
        "<Esperava outro operador ou \";\" ap\195\179s uma express\195\163o>\n"
    | 113 ->
        "<Ap\195\179s \"=\" esperava uma express\195\163o ou um comando de leitura>\n"
    | 118 ->
        "<Esperava outro operador ou \";\" ap\195\179s uma express\195\163o>\n"
    | 119 ->
        "<Ap\195\179s \"for\" esperava \"(\". Exemplo \"for (atrib; expressao; comando) { comandos }\">\n"
    | 120 ->
        "<Ap\195\179s \"for (\" esperava um comando de atribui\195\167\195\163o.>\n"
    | 121 ->
        "<Ap\195\179s o identificador, esperava \"=\", \"+=\", \"-=\", \"*=\", \"/=\">\n"
    | 123 ->
        "<Ap\195\179s \";\" esperava uma express\195\163o.>\n"
    | 124 ->
        "<Esperava outro operador ou \";\" ap\195\179s uma express\195\163o>\n"
    | 125 ->
        "<Esperava \";\" um comando>\n"
    | 126 ->
        "<Ap\195\179s o comando, esperava \")\">\n"
    | 127 ->
        "<Comando for sem corpo. Esperava \"{\">\n"
    | 128 ->
        "<Dentro do corpo do \"for\" esperava um comando.>\n"
    | 129 ->
        "<Comando for n\195\163o fechado \"}\">\n"
    | 122 ->
        "<Ap\195\179s o comando de atribui\195\167\195\163o, esperava \";\">\n"
    | 173 ->
        "<Ap\195\179s uma fun\195\167\195\163o, esperava uma fun\195\167\195\163o ou \"}\". Comandos n\195\163o podem ser declarados fora de fun\195\167\195\181es.>\n"
    | 171 ->
        "<Comando declarado fora de fun\195\167\195\163o. Esperava fim de arquivo ap\195\179s \"}\">\n"
    | _ ->
        raise Not_found
