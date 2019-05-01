open Ast

let main =
  let executa_testes = ref false in
  let opts = [
      ("-t", Arg.Unit (fun () -> executa_testes := true), "executa testes unitários");
    ] in
  Arg.parse opts (fun _ -> ()) "Tente -help para ajuda ou um dos seguintes:";
  if !executa_testes then
    ignore (OUnit.run_test_tt ~verbose:true ParserTest.testes)
  else
    ignore (Interp.parse (read_line ()))
      

(* para compilar:
     ocamlbuild main.native -use-menhir -use-ocamlfind -package oUnit

 *)   
