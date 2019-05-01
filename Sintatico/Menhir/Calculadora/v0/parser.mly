%{
%}

%token <int> INT
%token <string> ID
%token PLUS
%token LPAREN
%token RPAREN
%token LET
%token EQUALS
%token IN
%token EOF

(* PLUS é associativa à esquerda, IN não é associativo e, além disso,
  PLUS tem precedência mais alta que IN, pois PLUS aparece na linha 
  abaixo de IN. *)
%nonassoc IN
%left PLUS

%start <unit> prog

%%
   
prog:
    | expr EOF { }
    ;
         
expr:
   | INT { }
   | ID  { }
   | expr PLUS expr { }
   | LET ID EQUALS expr IN expr { }
   | LPAREN expr RPAREN { } 
   ;
	
