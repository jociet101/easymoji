open Core
open Lexing

(*
  print_position and parse_with_error from here:
  https://dev.realworldocaml.org/parsing-with-ocamllex-and-menhir.html
*)

let show_token tok = let open Parser in
  match tok with
    | EOF -> "EOF"
    | ID x -> sprintf "ID %s" x

    | LET -> "LET"
    | BE -> "BE"
    | START -> "START"
    | STOP -> "STOP"

    | STR s -> sprintf "STR %s" (Yojson.Basic.pretty_to_string (`String s))

    (* | STR s -> sprintf "STR %s" ("\"" ^ s ^ "\"") *)

let rec print_lex_all lexbuf = match Lexer.token lexbuf with
  | EOF -> ()
  | tok ->
    print_endline (show_token tok) ;
    print_lex_all lexbuf

let print_position outx lexbuf =
  let pos = lexbuf.lex_curr_p in
  fprintf outx "%s:%d:%d" pos.pos_fname
    pos.pos_lnum (pos.pos_cnum - pos.pos_bol + 1)

let parse_with_error lexbuf =
  try Parser.prog Lexer.token lexbuf with
  | Parser.Error ->
    fprintf stderr "%a: syntax error\n" print_position lexbuf;
    exit (-1)

(* Parsing stuff *)
(* 
let () =
  let fname = (Sys.get_argv ()).(1) in
  let lexbuf = Lexing.from_string (In_channel.read_all fname) in
  Lexing.set_filename lexbuf fname ;
  let result = parse_with_error lexbuf in
  print_endline (Syntax.show_prog result)

let () = print_endline "" *)

let string_of_javascript (js : Syntax.javascript) : string =
  match js with
  | `Var (name,value) -> "const " ^ name ^ " = \"" ^ value ^ "\""
  | `Log str -> "console.log(`" ^ str ^ "`)"

let rec string_of_js_list (input : Syntax.javascript list) : string =
  match input with
  | x::xs -> (string_of_javascript x) ^ "\n" ^ (string_of_js_list xs)
  | [] -> ""

let string_of_python (pyth : Syntax.python) : string =
  match pyth with
  | `Var (name,value) -> name ^ " = \"" ^ value ^ "\""
  | `Print str -> "print(f\"" ^ str ^ "\")"

let rec string_of_python_list (input : Syntax.python list) : string =
  match input with
  | x::xs -> (string_of_python x) ^ "\n" ^ (string_of_python_list xs)
  | [] -> ""

(* codegen into javascript *)
let () =
  let fname = (Sys.get_argv ()).(1) in
  let lexbuf = Lexing.from_string (In_channel.read_all fname) in
  Lexing.set_filename lexbuf fname ;
  let p = parse_with_error lexbuf in
  print_string (string_of_js_list (Codegen.codegen p))

(* codegen into python *)
(* let () =
  let fname = (Sys.get_argv ()).(1) in
  let lexbuf = Lexing.from_string (In_channel.read_all fname) in
  Lexing.set_filename lexbuf fname ;
  let p = parse_with_error lexbuf in
  print_string (string_of_python_list (Codegen.codegen p)) *)
