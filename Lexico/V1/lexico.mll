(* Cabeçalho: tudo que estiver aqui dentro, será copiado da forma que está
   para o arquivo fonte gerado pelo ocamllex. O cabeçalho é tudo que está
   entre {...} no começo do arquivo. *)
{
    open Lexing
    open Printf

    (* Tokens lexicais da mini linguagem *)
    type tokens = APAR
                | FPAR
                | ATRIB
                | IF
                | WHILE
                | MAIS
                | LITINT of int
                | LITSTRING of string
                | ID of string
                | EOF

    (* Incrmenta o contador de linha do analisador léxico para controlar qual
       linha ele está analisando no presente momento. *)
    let incr_num_linha lexbuf =
        let pos = lexbuf.lex_curr_p in
        lexbuf.lex_curr_p <- { pos with
            pos_lnum = pos.pos_lnum + 1;
            pos_cnum = pos.pos_bol;
        }

    (* Gera uma mensagem de erro de caractere desconhecido. *)
    let msg_erro lexbuf c =
        let pos = lexbuf.lex_curr_p in
        let lin = pos.pos_lnum
        and col = pos.pos_cnum - pos.pos_bol - 1 in
        sprintf "%d-%d: caractere desconhecido %c" lin col c

    (* Cria uma exceção baseada em uma mensagem de erro genérica. *)
    let erro lin col msg =
        let mensagem = sprintf "%d-%d: %s" lin col msg in
        failwith mensagem
}

(* Abreviações: se as regras forem muito extensas, uma boa prática é criar
   abreviações para aumentar a legibilidade do código fonte do analisador
   léxico. *)
let digito = ['0'-'9']
let inteiro = digito+

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra (letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "//" [^ '\r' '\n']*

(* Regras lexicais: aqui estão as regras de produção dos tokens lexicais da
   mini linguagem. *)
rule token = parse
  brancos             { token lexbuf }
| novalinha           { incr_num_linha lexbuf; token lexbuf }
| comentario          { token lexbuf }
| "/*"                { comentario_bloco 0 lexbuf }
| '('                 { APAR }
| ')'                 { FPAR }
| '+'                 { MAIS }
| ":="                { ATRIB }
| inteiro as num      { let numero = int_of_string num in
                        LITINT numero }
| "if"                { IF }
| "while"             { WHILE }
| identificador as id { ID id }
| '"'                 { let pos = lexbuf.lex_curr_p in
                        let lin = pos.pos_lnum
                        and col = pos.pos_cnum - pos.pos_bol - 1 in
                        let buffer = Buffer.create 1 in
                        let str = leia_string lin col buffer lexbuf in
                        LITSTRING str }
| _ as c              { failwith (msg_erro lexbuf c) }
| eof                 { EOF }
and leia_string lin col buffer = parse
  '"'                 { Buffer.contents buffer }
| "\\t"               { Buffer.add_char buffer '\t';
                        leia_string lin col buffer lexbuf }
| "\\n"               { Buffer.add_char buffer '\n';
                        leia_string lin col buffer lexbuf }
| '\\' '"'            { Buffer.add_char buffer '"';
                        leia_string lin col buffer lexbuf }
| '\\' '\\'           { Buffer.add_char buffer '\\';
                        leia_string lin col buffer lexbuf }
| _ as c              { Buffer.add_char buffer c;
                        leia_string lin col buffer lexbuf }
| eof                 { erro lin col "A string nao foi fechada" }
and comentario_bloco n = parse
  "*/"                { if n=0 then token lexbuf
                        else comentario_bloco (n-1) lexbuf }
| "/*"                { comentario_bloco (n+1) lexbuf }
| novalinha           { incr_num_linha lexbuf;
                        comentario_bloco n lexbuf }
| _                   { comentario_bloco n lexbuf }
| eof                 { failwith "Comentario bloco nao fechado" }
