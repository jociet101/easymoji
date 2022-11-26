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
    | ASSIGN -> "ASSIGN"
    | START -> "START"
    | STOP -> "STOP"

    | STR s -> sprintf "STR %s" ("\"" ^ s ^ "\"")
    (* (Yojson.Basic.pretty_to_string (`String s)) *)

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

let () =
  let fname = (Sys.get_argv ()).(1) in
  let lexbuf = Lexing.from_string (In_channel.read_all fname) in
  Lexing.set_filename lexbuf fname ;
  let () = print_endline "LEXING OUTPUT" in
  let () = print_lex_all lexbuf in
  let () = print_endline "==============================================" in
  let result = parse_with_error lexbuf in
  print_endline (Syntax.show_prog result)
