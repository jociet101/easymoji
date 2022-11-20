open Core ;;

let show_token tok = let open Parser in
  match tok with
    | EOF -> "EOF"
    | ID x -> sprintf "ID %s" x

    (* symbols *)
    | LPAREN -> "LPAREN"
    | RPAREN -> "RPAREN"
    | LBRACKET -> "LBRACKET"
    | RBRACKET -> "RBRACKET"
    | LBRACE -> "LBRACE"
    | RBRACE -> "RBRACE"
    | PLUS -> "PLUS"
    | MINUS -> "MINUS"
    | TIMES -> "TIMES"
    | DIV -> "DIV"
    | AND -> "AND"
    | OR -> "OR"
    | NOT -> "NOT"
    | EQUALS -> "EQUALS"
    | GREATER -> "GREATER"
    | LESS -> "LESS"
    | SEMICOLON -> "SEMICOLON"
    | DOT -> "DOT"
    | ARROW -> "ARROW"
    | COLON -> "COLON"
    | ASSIGN -> "ASSIGN"
    | COMMA -> "COMMA"

    (* types *)
    | ANY -> "ANY"
    | NUMBER -> "NUMBER"
    | BOOLEAN -> "BOOLEAN"
    | STRING -> "STRING"
    | VOID -> "VOID"

    (* keywords *)
    | FUNCTION -> "FUNCTION"
    | INTERFACE -> "INTERFACE"
    | LET -> "LET"
    | CONST -> "CONST"
    | DO -> "DO"
    | ELSE -> "ELSE"
    | FALSE -> "FALSE"
    | FOR -> "FOR"
    | IF -> "IF"
    | INSTANCEOF -> "INSTANCEOF"
    | RETURN -> "RETURN"
    | TRUE -> "TRUE"
    | WHILE -> "WHILE"
    | IN -> "IN"
    | AS -> "AS"
    | IMPORT -> "IMPORT"

    | NUM n -> sprintf "NUM %g" n
    | STR s -> sprintf "STR %s" (Yojson.Basic.pretty_to_string (`String s))
in

let rec print_lex_all lexbuf = match Lexer.token lexbuf with
  | EOF -> ()
  | tok ->
    print_endline (show_token tok) ;
    print_lex_all lexbuf
in

print_lex_all (Lexing.from_string (In_channel.read_all "example.ts"))
