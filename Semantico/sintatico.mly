(* Header: da mesma forma que no modulo lexico, o header do módulo sintático 
   copia tudo da forma que está. *)
%{
  (* Modulo da arvore sintatica *)
  open Ast
%}

(* Tokens lexicais da mini linguagem *)
%token APAR
%token FPAR
%token ACOL
%token FCOL
%token ATRIB
%token IF
%token WHILE
%token MAIS
%token PUBLIC
%token CLASS
%token STATIC
%token VOID
%token ACHAVE
%token FCHAVE
%token INT
%token PTV
%token PTO
%token MENOS
%token ELSE
%token IGUAL
%token DIFER
%token MAIOR
%token MENOR
%token MAIORIGUAL
%token MENORIGUAL
%token ELOG
%token OULOG
%token NOT
%token STRING
%token <float> LITFLOAT
%token VEZES
%token DIV
%token VIRG
%token FLOAT
%token READFLOAT
%token READINT
%token READCHAR
%token READSTRING
%token MAISMAIS
%token MENOSMENOS
%token DPTOS
%token SWITCH
%token DEFAULT
%token CASE
%token BREAK
%token CHAR
%token FOR
%token MAISIGUAL
%token MENOSIGUAL
%token VEZESIGUAL
%token BOOLEAN
%token DIVIGUAL
%token ARGV
%token MOD
%token RETURN
%token <bool> LITBOOL
%token <int> LITINT
%token <string> LITSTRING
%token <char> LITCHAR
%token <string> ID
%token PRINT
%token EOF

(* Definindo a precedencia dos operadores *)
%left OULOG
%left ELOG
%left IGUAL DIFER
%left MAIOR MENOR MAIORIGUAL MENORIGUAL
%left MAIS MENOS
%left VEZES DIV MOD

%right NOT

(* O menos unário é não associativo. *)
%nonassoc UMENOS

(* Simbolo inicial da gramatica. *)
%start <Ast.programa> programa

%%
programa : c=comando* EOF { Programa c }

comando : c=comando_s PTV { c }
        | c=comando_c     { c }
        ;

(* Comandos compostos. Esses comandos são comandos que possuem blocos e não precisam terminar com ";" *)
comando_c : c=cmd_if     { c }
          | c=cmd_for    { c }
          (*| c=cmd_while  { c }
          | c=cmd_switch { c }*)
          ;

cmd_if : IF APAR e=expr FPAR ACHAVE 
          cs=comando* 
         FCHAVE pe=parte_else { CmdIf (e, cs, pe) }
       ;

cmd_for : FOR APAR cmd_ini=comando PTV e=expr PTV cmd_incr=comando FPAR ACHAVE 
            cs=comando* 
          FCHAVE { CmdFor (cmd_ini, e, cmd_incr, cs) }
        ;

(* Parte else do comando IF *)
parte_else :                                { None }
           | ELSE ACHAVE cs=comando* FCHAVE { Some cs }
           | ELSE c=cmd_if                  { Some [c] }
           ;

(* Comandos simples. Esses comandos devem sempre terminar com ";" *)
comando_s : PRINT APAR args=argumentos FPAR { CmdPrint args }
          (*| e=expr MAISMAIS                 { CmdIncr e }*)
          (*| e=expr MENOSMENOS               { CmdDecr e }*)
          | c=cmd_atrib                     { c }
          | RETURN e=expr                   { CmdReturn (Some e) }
          | RETURN                          { CmdReturn None }
          ;

(* Comandos de atribuição. *)
cmd_atrib : ee=expr ATRIB ed=expr      { CmdAtrib (ee, ed) }
          | e=expr ATRIB READINT       { CmdReadInt e }
          | e=expr ATRIB READFLOAT     { CmdReadFloat e }
          | e=expr ATRIB READSTRING    { CmdReadString e }
          | e=expr ATRIB READCHAR      { CmdReadChar e }
          | ee=expr MAISIGUAL ed=expr  { CmdAtrib (ee, ExpBin (Soma, ee, ed)) }
          | ee=expr MENOSIGUAL ed=expr { CmdAtrib (ee, ExpBin (Sub, ee, ed)) }
          | ee=expr VEZESIGUAL ed=expr { CmdAtrib (ee, ExpBin (Mult, ee, ed)) }
          | ee=expr DIVIGUAL ed=expr   { CmdAtrib (ee, ExpBin (Div, ee, ed)) }
          | e=expr MAISMAIS            { CmdAtrib (e, ExpBin (Soma, e, ExpInt 1)) }
          | e=expr MENOSMENOS          { CmdAtrib (e, ExpBin (Sub, e, ExpInt 1)) }
          ;

(* Argumentos de funções/comandos. *)
argumentos : e=expr                      { [e] }
           | e=expr VIRG args=argumentos { e :: args } 
           ;

(* Expressões da mini linguagem. *)
expr : APAR e=expr FPAR             { e }
     | v=variavel                   { ExpVar v }
     | i=LITINT                     { ExpInt i }
     | f=LITFLOAT                   { ExpFloat f }
     | b=LITBOOL                    { ExpBool b }
     | s=LITSTRING                  { ExpString s }
     | c=LITCHAR                    { ExpChar c }
     | ee=expr op=oper ed=expr      { ExpBin (op, ee, ed) }
     | op=oper ed=expr %prec UMENOS { ExpUn (op, ed) }
     ;

(* Operadores da mini linguagem. *)
%inline oper : MAIS       { Soma }
             | MENOS      { Sub }
             | VEZES      { Mult }
             | DIV        { Div }
             | MAIOR      { Maior }
             | MENOR      { Menor }
             | MAIORIGUAL { MaiorIgual }
             | MENORIGUAL { MenorIgual }
             | IGUAL      { Igual }
             | DIFER      { Difer }
             | OULOG      { Ou }
             | ELOG       { E }
             | NOT        { Not }
             | MOD        { Mod }
             ;

variavel : x=ID { x }
         ;


