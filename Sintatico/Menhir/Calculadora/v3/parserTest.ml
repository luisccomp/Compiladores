open Ast
open OUnit
       
(* Analisa a string e devolve uma árvore sintática abstrata *)
let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast
    
let testes = "Parser" >::: [
      "parse1" >::
        ( fun () ->
          assert_equal (Int 22) (parse "22")
        );
      "parse2" >::
        ( fun () ->
          assert_equal (Add (Int 11, Int 11)) (parse "11+11")
        );
      "parse3" >::
        ( fun () ->
          assert_equal (Add (Add (Int 10, Int 1), Add (Int 5, Int 6)))
                       (parse "(10+1)+(5+6)")
        );
       "parse4" >::
        ( fun () ->
          assert_equal (Let ("x", Int 22, Var "x"))
                       (parse "let x = 22 in x")
        );
        "parse5" >::
        ( fun () ->
          assert_equal (Let ("y", Int 0, Let ("x", Int 22, Var "x")))
                       (parse "let x = 0 in let x = 22 in x")
        );
    
    ]

      

