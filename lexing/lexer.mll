{
open Parser
exception SyntaxError of string
}

(* whitespace and comments *)
let white = ['\n' '\r' '\t']
let oneLine = "//" [^'\n']*['\n']
let multiLine = "/*" ([^'*']* | '*' [^'/'])* ['*']+ ['/']
let comment = oneLine | multiLine

(* identifiers *)
(* let first = ['a'-'z' 'A'-'Z']
let id = first ['a'-'z' 'A'-'Z' '0'-'9']* *)
let id = [^'\n']*

(* numbers *)
let num = ['0'-'9']*

rule token = parse
  | white | comment { token lexbuf }
  | eof { EOF }
  | "let" { parse_let lexbuf }
  (* | "=>" { START } *)
  (* | "#" { SPAM }
  | "[" { LBRACK }
  | "]" { RBRACK }
  | "&" { CALL }
  | ":" { EMOJI } *)

  (* identifiers, numbers, strings *)
  | id as c { ID (c) }
  | num as n { NUM (float_of_string n) }
  | ' ' { read_string (Buffer.create 10) lexbuf }

and parse_let = parse
  | ' ' { MACRO; parse_let lexbuf }
  | id as c { ID (c); parse_macro lexbuf }

and parse_macro = parse
  | ' ' { SMILES; parse_macro lexbuf }
  | id as c { ID (c) }

(* Referenced Real World OCaml for read_string function *)
and read_string buf = parse
  | '"'       { STR (Buffer.contents buf) }
  | '\\' '/'  { Buffer.add_char buf '/'; read_string buf lexbuf }
  | '\\' '\\' { Buffer.add_char buf '\\'; read_string buf lexbuf }
  | '\\' 'n'  { Buffer.add_char buf '\n'; read_string buf lexbuf }
  | '\\' 'r'  { Buffer.add_char buf '\r'; read_string buf lexbuf }
  | '\\' 't'  { Buffer.add_char buf '\t'; read_string buf lexbuf }
  | [^ '"' '\\']+
    { Buffer.add_string buf (Lexing.lexeme lexbuf);
      read_string buf lexbuf
    }
  | _ { raise (SyntaxError ("Illegal string character: " ^ Lexing.lexeme lexbuf)) }
  | eof { raise (SyntaxError ("String is not terminated")) }