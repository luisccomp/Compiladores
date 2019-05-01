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

%start <Ast.comandos> programa

%%

(* Representa o programa como um todo. *)
programa : cs=comandos EOF { cs }
	     ;

(* Comandos da linguagem *)
comandos : { [] }
         | c=comando; cs=comandos { c :: cs }
         ;

comando : c=cmd_print { c }
        | c=cmd_if { c }
        | c=cmd_atrib { c }
        ;

cmd_print : PRINT APAR args=argumentos FPAR PTV { CmdPrint args }
          ;

argumentos : se=seq_expr { se }
           ;

seq_expr : { [] }
         | e=expr { [e] }
         | e=expr; VIRG; se=seq_expr { e :: se }
         ;

cmd_if : IF APAR; e=expr; FPAR ACHAVE; cs=comandos; FCHAVE; pe=parte_else { CmdIf (e, cs, pe) }
       ;

parte_else: { None }
          | ELSE ACHAVE; cs=comandos; FCHAVE { Some cs }
          | ELSE; c=cmd_if { Some [c] }
          ;

cmd_atrib : x=ID; ATRIB; e=expr PTV { CmdAtrib (ExpVar x, e) }

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

