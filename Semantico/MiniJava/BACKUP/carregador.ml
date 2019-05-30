(* Para carregar esse arquivo, abra o intérprete ocaml e digite:
   #use "carregador.ml";; *)
#load "lexer.cmo";;


(* Dado uma entrada, gera uma lista de tokens lexicais para ela *)
let rec tokens lexbuf =
    let tok = Lexer.token lexbuf in
    match tok with
    | Parser.EOF -> [Parser.EOF]
    | _ -> tok :: tokens lexbuf


(* Gera os tokens lexicais a partir de uma string de entrada *)
let lexico str =
    let lexbuf = Lexing.from_string str in
    tokens lexbuf


(* Gera os tokens lexicais a partir de um arquivo fonte no disco *)
let lex arq =
    let ic = open_in arq in
    let lexbuf = Lexing.from_channel ic in
    let toks = tokens lexbuf in
    let _ = close_in ic in
    toks
