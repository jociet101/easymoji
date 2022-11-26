{
open Parser
exception SyntaxError of string
}

(* whitespace and comments *)
let whitespace = [' ' '\t']
let newline = "\n\n"
let endline = "\n" | "\r\n"
let single_line_comment = "//" [^'\n']* endline

(* identifiers *)
let first = ['a'-'z' 'A'-'Z']
let id = first ['a'-'z' 'A'-'Z' '0'-'9']*

rule token = parse
  | whitespace { token lexbuf }
  | endline | single_line_comment { Lexing.new_line lexbuf; token lexbuf }
  | "/*" { multiline_comment lexbuf; token lexbuf }

  | eof { EOF }
  | "let" { LET }
  | "=" { ASSIGN }
  | "=>" { START }
  | ";" { STOP }

  | id as c { ID (c) }
  | '"' { string_literal (Buffer.create 10) lexbuf }

and multiline_comment = parse
  | endline { Lexing.new_line lexbuf; multiline_comment lexbuf }
  | [^'*'] | ('*' [^'/']) { multiline_comment lexbuf }
  | '*'+ '/' { () }
  | eof { raise (SyntaxError ("Comment is not terminated")) }

and string_literal buf = parse
  | '"'       { STR (Buffer.contents buf) }
  | '\\' '/'  { Buffer.add_char buf '/'; string_literal buf lexbuf }
  | '\\' '\''  { Buffer.add_char buf '\''; string_literal buf lexbuf }
  | '\\' '"'  { Buffer.add_char buf '"'; string_literal buf lexbuf }
  | '\\' '\\' { Buffer.add_char buf '\\'; string_literal buf lexbuf }
  | '\\' 'n'  { Buffer.add_char buf '\n'; string_literal buf lexbuf }
  | '\\' 'r'  { Buffer.add_char buf '\r'; string_literal buf lexbuf }
  | '\\' 't'  { Buffer.add_char buf '\t'; string_literal buf lexbuf }
  | [^ '"' '\\']+
    { Buffer.add_string buf (Lexing.lexeme lexbuf);
      string_literal buf lexbuf
    }
  | _ { raise (SyntaxError ("Illegal string character: " ^ Lexing.lexeme lexbuf)) }
  | eof { raise (SyntaxError ("String is not terminated")) }