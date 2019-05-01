open Ast

let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast

let testes () =
  assert ( (Int 22) = parse "22");
  assert ( (Add (Int 11, Int 11)) = parse "11+11");
  assert ( (Add (Add (Int 10, Int 1), Add (Int 5, Int 6)))
         = parse "(10+1)+(5+6)");
  assert ( (Let ("x", Int 22, Var "x")) 
         = parse "let x = 22 in x");
  assert ( (Let ("x", Int 0, Let ("x", Int 22, Var "x"))) 
         = parse "let x = 0 in let x = 22 in x")


