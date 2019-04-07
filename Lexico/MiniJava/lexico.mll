(* Cabeçalho: tudo que estiver aqui dentro, será copiado da forma que está
   para o arquivo fonte gerado pelo ocamllex. O cabeçalho é tudo que está
   entre {...} no começo do arquivo. *)
{
    open Lexing
    open Printf

    (* Tokens lexicais da mini linguagem *)
    type tokens = APAR
                | FPAR
                | ACOL
                | FCOL
                | ATRIB
                | IF
                | WHILE
                | MAIS
                | PUBLIC
                | CLASS
                | STATIC
                | VOID
                | ACHAVE
                | FCHAVE
                | INT
                | PTV
                | PTO
                | MENOS
                | ELSE
                | IGUAL
                | DIFER
                | MAIOR
                | MENOR
                | MAIORIGUAL
                | MENORIGUAL
                | ELOG
                | OULOG
                | NOT
                | STRING
                | LITFLOAT of float
                | VEZES
                | DIV
                | VIRG
                | FLOAT
                | READFLOAT
                | IMPORT
                | READINT
                | READCHAR
                | READSTRING
                | MAISMAIS
                | MENOSMENOS
                | DPTOS
                | SWITCH
                | CASE
                | BREAK
                | CHAR
                | FOR
                | MAISIGUAL
                | MENOSIGUAL
                | VEZESIGUAL
                | BOOLEAN
                | DIVIGUAL
                | LITBOOL of bool			
                | LITINT of int
                | LITSTRING of string
                | LITCHAR of char
                | ID of string
                | PRINT
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

let numfloat = digito+ '.' digito* | digito* '.' digito+

let booleano = "true" | "false"

let caractere = '\'' letra '\''

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "//" [^ '\r' '\n']*

(* Regras lexicais: aqui estão as regras de produção dos tokens lexicais da
   mini linguagem. *)
rule token = parse
  brancos                               { token lexbuf }                        (* Descarta o token *)
| novalinha                             { incr_num_linha lexbuf; token lexbuf } (* Incrementa o numero de linha e descarta o token *)
| comentario                            { token lexbuf }                        (* Descarta o token *)
| "Scanner s = new Scanner(System.in);" { token lexbuf }
| "import java.util.Scanner;"           { token lexbuf }
| "/*"                                  { comentario_bloco 0 lexbuf }
| '('                                   { APAR }
| ')'                                   { FPAR }
| '['                                   { ACOL }
| ']'                                   { FCOL }
| "import"                              { IMPORT }
| "+="                                  { MAISIGUAL }
| "-="                                  { MENOSIGUAL }
| "*="                                  { VEZESIGUAL }
| "/="                                  { DIVIGUAL }
| "++"                                  { MAISMAIS }
| "--"                                  { MENOSMENOS }
| '+'                                   { MAIS }
| '='                                   { ATRIB }
| "public"                              { PUBLIC }
| "char"                                { CHAR }
| "boolean"                             { BOOLEAN }
| "class"                               { CLASS }
| "static"                              { STATIC }
| "void"                                { VOID }
| "System.out.printf"                   { PRINT } (* Instrução de impressão na tela *)
| "switch"                              { SWITCH }
| "case"                                { CASE }
| "break"                               { BREAK }
| '{'                                   { ACHAVE }
| '}'                                   { FCHAVE }
| "int"                                 { INT }
| "float"                               { FLOAT }
| "Float.parseFloat(s.nextLine())"      { READFLOAT }
| "Integer.parseInt(s.nextLine())"      { READINT }
| "s.nextLine().charAt(0)"              { READCHAR }
| "s.nextLine()"                        { READSTRING }
| ';'                                   { PTV }
| ':'                                   { DPTOS }
| '.'                                   { PTO }
| '-'                                   { MENOS }
| "=="                                  { IGUAL }
| "!="                                  { DIFER }
| '>'                                   { MAIOR }
| '<'                                   { MENOR }
| ">="                                  { MAIORIGUAL }
| "<="                                  { MENORIGUAL }
| "&&"                                  { ELOG }
| "||"                                  { OULOG }
| '!'                                   { NOT }
| "String"                              { STRING }
| '*'                                   { VEZES }
| '/'                                   { DIV }
| ','                                   { VIRG }
| booleano as b                         { let valor_booleano = bool_of_string b in
                                          LITBOOL valor_booleano }
| caractere as chr                      { LITCHAR chr.[1] }
| numfloat as num                       { let numero = float_of_string num in
                                          LITFLOAT numero }
| inteiro as num                        { let numero = int_of_string num in
                                          LITINT numero }
| "if"                                  { IF }
| "else"                                { ELSE }
| "while"                               { WHILE }
| "for"                                 { FOR }
| identificador as id                   { ID id }
| '"'                                   { let pos = lexbuf.lex_curr_p in
                                          let lin = pos.pos_lnum
                                          and col = pos.pos_cnum - pos.pos_bol - 1 in
                                          let buffer = Buffer.create 1 in
                                          let str = leia_string lin col buffer lexbuf in
                                          LITSTRING str }
| _ as c                                { failwith (msg_erro lexbuf c) }
| eof                                   { EOF }
and leia_string lin col buffer = parse
  '"'                                   { Buffer.contents buffer }
| "\\t"                                 { Buffer.add_char buffer '\t';
                                          leia_string lin col buffer lexbuf }
| "\\n"                                 { Buffer.add_char buffer '\n';
                                          leia_string lin col buffer lexbuf }
| '\\' '"'                              { Buffer.add_char buffer '"';
                                          leia_string lin col buffer lexbuf }
| '\\' '\\'                             { Buffer.add_char buffer '\\';
                                          leia_string lin col buffer lexbuf }
| _ as c                                { Buffer.add_char buffer c;
                                          leia_string lin col buffer lexbuf }
| eof                                   { erro lin col "A string nao foi fechada" }
and comentario_bloco n = parse
  "*/"                                  { if n=0 then token lexbuf
                                          else comentario_bloco (n-1) lexbuf }
| "/*"                                  { comentario_bloco (n+1) lexbuf }
| novalinha                             { incr_num_linha lexbuf;
                                          comentario_bloco n lexbuf }
| _                                     { comentario_bloco n lexbuf }
| eof                                   { failwith "Comentario bloco nao fechado" }
