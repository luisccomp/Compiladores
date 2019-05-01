
type comandos = comando list

and comando = CmdPrint of expressao list
            | CmdIf of expressao * comandos * comandos option
            | CmdAtrib of expressao * expressao

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

