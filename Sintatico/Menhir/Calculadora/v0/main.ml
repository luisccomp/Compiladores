
let parse s =
  let lexbuf = Lexing.from_string s in
  let _ = Parser.prog Lexer.read lexbuf in
  print_endline "Ok"

