open Ast
       
let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Sintatico.programa Lexico.token lexbuf in
  ast

(* Para compilar:
     ocamlbuild -use-menhir sintaticoTest.byte
 *)
