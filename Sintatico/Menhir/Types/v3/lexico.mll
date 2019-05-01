{
  open Lexing
  open Printf 
  open Sintatico

  exception Erro of string

  let incr_num_linha lexbuf = 
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      { pos with pos_lnum = pos.pos_lnum + 1;
                 pos_bol = pos.pos_cnum
      }

}

let digito = ['0' - '9']
let inteiro = '-'? digito+

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "--" [^ '\r' '\n' ]*

rule token = 
  parse
  | brancos { token lexbuf }
  | novalinha  { incr_num_linha lexbuf; token lexbuf }
  | comentario { token lexbuf }
  | "/*"       { comentario_bloco 0 lexbuf }  
  | '+'   { MAIS }
  | '-'   { MENOS }
  | '*'   { MULT }
  | '/'   { DIV }
  | '<'   { MENOR }
  | '='   { IGUAL }
  | "!="  { DIFER }
  | '>'   { MAIOR }
  | "&&"  { ELOG }
  | "||"  { OULOG }
  | '^'   { CONCAT }
  | '('   { APAR }
  | ')'   { FPAR }
  | '['   { ACOL }
  | ']'   { FCOL }
  | ','   { VIRG }
  | ".."  { PPTO }
  | '.'   { PTO }
  | ':'   { DPTOS }
  | ';'   { PTV }
  | ":="  { ATRIB }
  | '"'   { let buffer = Buffer.create 1 in 
            let str = leia_string buffer lexbuf in
               STRING str } 
  | "programa" { PROGRAMA }
  | "inicio"   { INICIO }
  | "fim"      { FIM }
  | "inteiro"  { INTEIRO }
  | "cadeia"   { CADEIA }
  | "booleano" { BOOLEANO }
  | "arranjo"  { ARRANJO }
  | "de"       { DE }
  | "registro" { REGISTRO }
  | "fim"      { FIM }
  | "se"       { SE }
  | "entao"    { ENTAO }
  | "senao"    { SENAO }
  | "entrada"  { ENTRADA }
  | "saida"    { SAIDA }
  | "verdadeiro" { BOOL true }
  | "falso"      { BOOL false}  
  | identificador as x    { ID x }
  | inteiro as n  { INT (int_of_string n) }
  | _  { raise (Erro ("Caracter desconhecido: " ^ Lexing.lexeme lexbuf)) }
  | eof   { EOF }

and comentario_bloco n = parse
   "*/"   { if n=0 then token lexbuf 
            else comentario_bloco (n-1) lexbuf }
| "/*"    { comentario_bloco (n+1) lexbuf }
| _       { comentario_bloco n lexbuf }
| eof     { raise (Erro "Comentário não terminado") }

and leia_string buffer = parse
   '"'      { Buffer.contents buffer}
| "\\t"     { Buffer.add_char buffer '\t'; leia_string buffer lexbuf }
| "\\n"     { Buffer.add_char buffer '\n'; leia_string buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string buffer lexbuf }
| '\\' '\\' { Buffer.add_char buffer '\\'; leia_string buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string buffer lexbuf }
| eof       { raise (Erro "A string não foi terminada") }	
