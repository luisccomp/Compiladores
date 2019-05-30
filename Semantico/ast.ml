
(* Definindo o tipo identificador. *)
type ident = string

type programa = Programa of comandos

and comandos = comando list

(* Comandos que podem aparecer na mini linguagem. *)
and comando = CmdPrint of expressoes
  | CmdIncr of expressao
  | CmdDecr of expressao
  | CmdAtrib of expressao * expressao
  | CmdReturn of expressao option
  | CmdReadInt of expressao
  | CmdReadFloat of expressao
  | CmdReadString of expressao
  | CmdReadChar of expressao
  | CmdIf of expressao * comandos * comandos option
  | CmdFor of comando * expressao * comando * comandos

and expressoes = expressao list

(* Tipo de expressões que podem aparecer na mini linguagem. *)
and expressao = ExpVar of ident
  | ExpInt of int
  | ExpFloat of float
  | ExpBool of bool
  | ExpString of string
  | ExpChar of char
  | ExpBin of operador * expressao * expressao
  | ExpUn of operador * expressao

(* Operadores da mini linguagem *)
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

