type expr =
  | Var of string
  | Int of int
  | Add of expr * expr
  | Let of string * expr * expr

