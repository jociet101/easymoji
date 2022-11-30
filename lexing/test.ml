open Core ;;

let show_token tok = let open Parser in
  match tok with
    | EOF -> "EOF"
    | ID x -> sprintf "ID %s" x

    | LET -> "LET"
    | LBRACK -> "["
    | RBRACK -> "]"
    | BE -> "BE"
    | START -> "START"
    | STOP -> "STOP"

    | NUM _ -> sprintf "NUM"
    | STR s -> sprintf "STR %s" (Yojson.Basic.pretty_to_string (`String s))
in

let rec print_lex_all lexbuf = match Lexer.token lexbuf with
  | EOF -> ()
  | tok ->
    print_endline (show_token tok) ;
    print_lex_all lexbuf
in

print_lex_all (Lexing.from_string (In_channel.read_all "test.moji"))
