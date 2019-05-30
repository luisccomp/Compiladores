
type expressao = ExpInt of int
               | ExpVar of string
			   | ExpFloat of float
			   | ExpChar of char
			   | ExpString of string
			   | ExpBool of bool
			   | ExpBin of operador * expressao * expressao
			   | ExpUn of operador * expressao

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

