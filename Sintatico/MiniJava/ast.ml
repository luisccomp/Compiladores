
type comandos = comando list

and comando = CmdIncr of expressao
            | CmdDecr of expressao
            | CmdPrint of expressao list
            | CmdIf of expressao * comandos * comandos option
            | CmdWhile of expressao * comandos
            | CmdFor of comando * expressao * comando * comandos
            | CmdSwitch of expressao * cases * default option
            | CmdAtrib of expressao * expressao

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

