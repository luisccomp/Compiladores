
(* type programa = Programa of declaracoes * comandos *)
type programa = Programa of funcoes
and comandos = comando list

and declaracoes = declaracao list

and declaracao = DecVar of string * tipo

and parametro = Parametro of string * tipo

and parametros = parametro list

and declaracao_funcao = DecFun of tipo * string * parametros * declaracoes * comandos

and funcoes = declaracao_funcao list

and tipo = Int
         | String
         | Float
         | Char
         | Bool
         | Void

and comando = CmdIncr of expressao
            | CmdDecr of expressao
            | CmdPrint of expressao list
            | CmdIf of expressao * comandos * comandos option
            | CmdWhile of expressao * comandos
            | CmdFor of comando * expressao * comando * comandos
            | CmdSwitch of expressao * cases * default option
            | CmdAtrib of expressao * expressao
            | CmdReturn of expressao option
            | CmdReadInt of expressao
            | CmdReadFloat of expressao
            | CmdReadString of expressao
            | CmdReadChar of expressao

and cases = case list

and case = Case of expressao * comandos

and default = Default of comandos

(* Definindo as expressões *)
and expressao = ExpInt of int
              | ExpVar of string
              | ExpFloat of float
              | ExpChar of char
              | ExpString of string
              | ExpBool of bool
              | ExpBin of operador * expressao * expressao (* Operadores binários *)
              | ExpUn of operador * expressao              (* Operadores unários *)
              | ExpFun of string * expressao list          (* Chamada de funcao *)

(* Operadores do programa *)
and operador = Soma
             | Sub
             | Mult
             | Div
             | Maior
             | Menor
             | MaiorIgual
             | MenorIgual
             | Igual
             | Difer
             | Ou
             | E
             | Not
             | Mod

