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
%token MAIN
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
%token <bool> LITBOOL
%token <int> LITINT
%token <string> LITSTRING
%token <char> LITCHAR
%token <string> ID
%token PRINT
%token EOF

(* Precedência de tokens *)
%left OULOG
%left ELOG
%left IGUAL DIFER
%left MAIOR MENOR MAIORIGUAL MENORIGUAL
%left NOT
%left MAIS MENOS
%left VEZES DIV

%start <Ast.programa> programa

%%

(* Representa o programa como um todo. *)
programa : ds=declaracao*; cs=comandos EOF { Programa (List.flatten ds, cs) }
	     ;

(* Comandos da linguagem *)
comandos : { [] }
         | c=comando; PTV; cs=comandos { c :: cs } (* Comando com terminador ';' *)
         | c=comando_s; cs=comandos {c :: cs }     (* Comando sem terminador ';' *)
         ;

comando : c=cmd_print { c }
        | c=cmd_incr { c }
        | c=cmd_decr { c }
        | c=cmd_atrib { c }
        ;

comando_s : c=cmd_if { c }
	      | c=cmd_while { c }
          | c=cmd_for { c }
          | c=cmd_switch { c }
          ;

cmd_print : PRINT APAR args=argumentos FPAR { CmdPrint args }
          ;

argumentos : se=seq_expr { se }
           ;

seq_expr : { [] }
         | e=expr { [e] }
         | e=expr; VIRG; se=seq_expr { e :: se }
         ;

cmd_incr : x=ID; MAISMAIS { CmdIncr (ExpVar x) }
         ;

cmd_decr : x=ID; MENOSMENOS { CmdDecr (ExpVar x) }
         ;

cmd_if : IF APAR; e=expr; FPAR ACHAVE; cs=comandos; FCHAVE; pe=parte_else { CmdIf (e, cs, pe) }
       ;

cmd_while : WHILE APAR; e=expr; FPAR ACHAVE; cs=comandos; FCHAVE { CmdWhile (e, cs) }
          ;

cmd_for : FOR APAR; ca=cmd_atrib; PTV; e=expr; PTV; c=comando FPAR ACHAVE; cs=comandos; FCHAVE { CmdFor (ca, e, c, cs) }
        ;

cmd_switch : SWITCH APAR; e=expr; FPAR ACHAVE; cs=cases; d=default; FCHAVE { CmdSwitch(e, cs, Some d) }
           ;

cases : { [] }
      | c=case; cs=cases; { c :: cs }
      ;

case : CASE; e=expr; DPTOS; cs=comandos; BREAK PTV { Case (e, cs) }

default: DEFAULT DPTOS; cs=comandos { Default cs }

parte_else: { None }
          | ELSE ACHAVE; cs=comandos; FCHAVE { Some cs }
          | ELSE; c=cmd_if { Some [c] }
          ;

cmd_atrib : x=ID; ATRIB; e=expr { CmdAtrib (ExpVar x, e) }

(* Tratando as expressoes que podem aparecer na minha mini linguagem. *)
expr :
     | v=variavel { v }
     | i=LITINT { ExpInt i }
     | f=LITFLOAT { ExpFloat f }
     | b=LITBOOL { ExpBool b }
     | s=LITSTRING { ExpString s }
     | c=LITCHAR { ExpChar c }
     | APAR; e=expr; FPAR { e }
     | e1=expr; OULOG; e2=expr { ExpBin(Ou, e1, e2) }
     | e1=expr; ELOG; e2=expr { ExpBin(E, e1, e2) }
     | e1=expr; IGUAL; e2=expr { ExpBin(Igual, e1, e2) }
     | e1=expr; DIFER; e2=expr { ExpBin(Difer, e1, e2) }
     | e1=expr; MAIOR; e2=expr { ExpBin(Maior, e1, e2) }
     | e1=expr; MENOR; e2=expr { ExpBin(Menor, e1, e2) }
     | e1=expr; MAIORIGUAL; e2=expr { ExpBin(MaiorIgual, e1, e2) }
     | e1=expr; MENORIGUAL; e2=expr { ExpBin(MenorIgual, e1, e2) }
     | NOT e=expr { ExpUn(Not, e) }
     | e1=expr; MAIS; e2=expr { ExpBin(Soma, e1, e2) }
     | e1=expr; MENOS; e2=expr { ExpBin(Sub, e1, e2) }
     | e1=expr; VEZES; e2=expr { ExpBin(Mult, e1, e2) }
     | e1=expr; DIV; e2=expr { ExpBin(Div, e1, e2) }
     ;

(* Trata as variaveis do programa *)
variavel :
     	 | x=ID { ExpVar x }
         ;

declaracao : t=tipo; ids=separated_nonempty_list(VIRG, ID); PTV { List.map (fun id -> DecVar (id, t)) ids }
           ;

tipo : INT { Int }
     | STRING { String }
     | FLOAT { Float }
     | CHAR { Char }
     | BOOLEAN { Bool }
     | VOID { Void }

