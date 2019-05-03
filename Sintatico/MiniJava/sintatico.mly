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

(* Precedência de tokens *)
%left OULOG
%left ELOG
%left IGUAL DIFER
%left MAIOR MENOR MAIORIGUAL MENORIGUAL
%left NOT
%left MAIS MENOS
%left VEZES DIV MOD

%start <Ast.programa> programa

%%

(* Representa o programa como um todo. *)
(* programa : ds=declaracao*; cs=comandos EOF { Programa (List.flatten ds, cs) }
	     ; *)

programa : PUBLIC CLASS ID ACHAVE; fs=funcoes; FCHAVE EOF { Programa fs }

funcoes : { [] }
        | f=declaracao_funcao; fs=funcoes { f :: fs }
        ;


declaracao_funcao : PUBLIC STATIC; t=tipo; x=ID; APAR; pars=lista_parametros; FPAR ACHAVE; ds=declaracao*; cs=comandos; FCHAVE { DecFun (t, x, pars, List.flatten ds, cs) }
                  ;

(* Representa os parametros de uma funcao *)
parametro : t=tipo; x=ID { Parametro (x, t) }
          ;

lista_parametros : { [] }
                 | p=parametro { [p] }
                 | p=parametro; VIRG; ps=lista_parametros { p :: ps }
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
        | c=cmd_return { c }
        ;

comando_s : c=cmd_if { c }
          | c=cmd_while { c }
          | c=cmd_for { c }
          | c=cmd_switch { c }
          ;

cmd_print : PRINT APAR args=argumentos FPAR { CmdPrint args }
          ;

(* Lista de argumentos de funcoes/comandos *)
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

cmd_return : RETURN { CmdReturn None }
           | RETURN; e=expr { CmdReturn (Some e) }
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
          | x=ID; ATRIB READINT { CmdReadInt (ExpVar x) }
          | x=ID; ATRIB READFLOAT { CmdReadFloat (ExpVar x) }
          | x=ID; ATRIB READSTRING { CmdReadString (ExpVar x) }
          | x=ID; ATRIB READCHAR { CmdReadChar (ExpVar x) }
          | x=ID; MAISIGUAL; e=expr { CmdMaisIgual (ExpVar x, e) }
          | x=ID; MENOSIGUAL; e=expr { CmdMenosIgual (ExpVar x, e) }
          | x=ID; VEZESIGUAL; e=expr { CmdVezesIgual (ExpVar x, e) }
          | x=ID; DIVIGUAL; e=expr { CmdDivIgual (ExpVar x, e) }
          ;

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
     | NOT; e=expr { ExpUn(Not, e) }
     | e1=expr; MAIS; e2=expr { ExpBin(Soma, e1, e2) }
     | e1=expr; MENOS; e2=expr { ExpBin(Sub, e1, e2) }
     | e1=expr; VEZES; e2=expr { ExpBin(Mult, e1, e2) }
     | e1=expr; DIV; e2=expr { ExpBin(Div, e1, e2) }
     | e1=expr; MOD; e2=expr { ExpBin(Mod, e1, e2) }
     | x=ID; APAR; args=argumentos; FPAR { ExpFun (x, args) }
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
     ;

