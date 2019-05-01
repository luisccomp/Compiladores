open Ast
       
let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Sintatico.programa Lexico.token lexbuf in
  ast

let parse_arq nome =
  let ic = open_in nome in
  let lexbuf = Lexing.from_channel ic in
  let ast = Sintatico.programa Lexico.token lexbuf in
  let _ = close_in ic in
  ast
(* Para compilar:
     ocamlbuild -use-menhir sintaticoTest.byte
 *)
