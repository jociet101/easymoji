open Core
open Lexing

(*
  print_position and parse_with_error from here:
  https://dev.realworldocaml.org/parsing-with-ocamllex-and-menhir.html
*)

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
  let result = parse_with_error lexbuf in
  print_endline (Syntax.show_prog result)
