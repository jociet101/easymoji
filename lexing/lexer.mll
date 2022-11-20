{
open Parser
exception SyntaxError of string
}

(* whitespace and comments *)
let white = [' ' '\n' '\r' '\t']
let oneLine = "//" [^'\n']*['\n']
let multiLine = "/*" ([^'*']* | '*' [^'/'])* ['*']+ ['/']
let comment = oneLine | multiLine

(* identifiers *)
let first = ['a'-'z' 'A'-'Z' '_' '$']
let id = first ['a'-'z' 'A'-'Z' '_' '$' '0'-'9']*

(* numbers *)
let decimal = ['0'-'9']*['.']?['0'-'9']*
let scientific = ['e' 'E']['+' '-']?['0'-'9']+
(* case to prevent non numbers from being pattern matched to number *)
let num = ['0'-'9']*['.']?['0'-'9']+scientific | ['0'-'9']+['.']?['0'-'9']*scientific | decimal

rule token = parse
  | white | comment { token lexbuf }
  | eof { EOF }

  (* symbols *)
  | '(' { LPAREN }
  | ')' { RPAREN }
  | '[' { LBRACKET }
  | ']' { RBRACKET }
  | '{' { LBRACE }
  | '}' { RBRACE }
  | '+' { PLUS }
  | '-' { MINUS }
  | '*' { TIMES }
  | '/' { DIV }
  | "===" { EQUALS }
  | '<' { LESS }
  | '>' { GREATER }
  | "&&" { AND }
  | "||" { OR }
  | '!' { NOT }
  | ',' { COMMA }
  | ';' { SEMICOLON }
  | '.' { DOT }
  | "=>" { ARROW }
  | ':' { COLON }
  | '=' { ASSIGN }

  (* keywords and types *)
  | "any" { ANY }
  | "as" { AS }
  | "boolean" { BOOLEAN }
  | "const" { CONST }
  | "do" { DO }
  | "else" { ELSE }
  | "false" { FALSE }
  | "for" { FOR }
  | "function" { FUNCTION }
  | "if" { IF }
  | "import" { IMPORT }
  | "in" { IN }
  | "instanceof" { INSTANCEOF }
  | "interface" { INTERFACE }
  | "let" { LET }
  | "number" { NUMBER }
  | "return" { RETURN }
  | "string" { STRING }
  | "true" { TRUE }
  | "void" { VOID }
  | "while" { WHILE }

  (* identifiers, numbers, strings *)
  | id as c { ID (c) }
  | num as n { NUM (float_of_string n) }
  | '"' { read_string (Buffer.create 10) lexbuf }

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