open Syntax

let rec codegen (p: prog) : python list =
  codegen_stmts p.body

and codegen_stmts (ss : stmt list) : python list =
  match ss with
  | s::xs -> (codegen_stmt s)::(codegen_stmts xs)
  | [] -> []

and codegen_stmt (s : stmt) : python =
  match s with
  | MacroDecl md -> codegen_macrodecl md
  | TextDecl td -> codegen_textdecl td

and codegen_macrodecl md =
  let Id name = md.macro_id in
  let Str value = md.init in
  `Var (name,value)

and codegen_textdecl td =
  let Str str = td.words in
  `Print str