open Ast

(* Substitui x por e1 em e2 *)
let rec subst x e1 e2 = match e2 with
  | Var y        -> if x=y then e1 else e2
  | Int c        -> Int c
  | Add(esq,dir) -> Add(subst x e1 esq, subst x e1 dir)
  | Let(y,exp_valor,exp_corpo) ->
    if x=y 
    then Let(y, subst x e1 exp_valor, exp_corpo)
    else Let(y, subst x e1 exp_valor, subst x e1 exp_corpo)

(* Um único passo de avaliação. *)
let rec passo = function
  | Int n               -> failwith "Nao deveria ocorrer"
  | Var _               -> failwith "Variavel nao ligada"
  | Add(Int n1, Int n2) -> Int (n1+n2)
  | Add(Int n1, e2)     -> Add(Int n1, passo e2)
  | Add(e1, e2)         -> Add(passo e1, e2)
  | Let(x, Int n, e2)   -> subst x (Int n) e2
  | Let(x, e1, e2)      -> Let(x, passo e1, e2)

(* O fecho transitivo e reflexivo de passo. *)
let rec multipasso = function
  | Int n -> Int n
  | e     -> multipasso (passo e)

(* Analisa uma string em uma ASA *)
let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast



(* Extrai o valor de um nó da ASA.
   Gera uma exceção se o argumento não é uma expressão inteira. *)
let extrai_valor = function
  | Int i -> i
  | _ -> failwith "Nao eh um valor"

(* Interprete uma expressão *)
let interpreta e =
  e |> parse |> multipasso |> extrai_valor

(* Execute alguns testes *)
let run_tests () =
  assert (22 = interpreta "22");
  assert (22 = interpreta "11+11");
  assert (22 = interpreta "(10+1)+(5+6)");
  assert (22 = interpreta "let x = 22 in x");
  assert (22 = interpreta "let x = 0 in let x = 22 in x")
      

