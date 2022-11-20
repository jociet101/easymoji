{
open Parser
exception SyntaxError of string
}

let whitespace = [' ' '\t']
let terminator = ['\n' '\r']
let endline = '\n' | "\r\n"
let single_line_comment = "//" [^'\n']* endline

let letter = ['$' '_' 'a'-'z' 'A'-'Z']

let digit = ['0'-'9']
let frac = '.' digit*
let exp = ['e' 'E'] ['-' '+']? digit+
let float = (digit+ frac? exp?) | ('.' digit+ exp?)

rule token = parse
  | whitespace { token lexbuf }
  | endline | single_line_comment { Lexing.new_line lexbuf; token lexbuf }
  | "/*" { multiline_comment lexbuf; token lexbuf }

  (* symbols *)
  | '(' { LPAREN }
  | ')' { RPAREN }
  (* | '[' { LBRACKET } *)
  (* | ']' { RBRACKET } *)
  | '{' { LBRACE }
  | '}' { RBRACE }
  | '+' { PLUS }
  | '-' { MINUS }
  | '*' { TIMES }
  | '/' { DIV }
  | "===" { EQUALS }
  | '>' { GREATER }
  | '<' { LESS }
  | "&&" { AND }
  | "||" { OR }
  | '!' { NOT }
  | ',' { COMMA }
  | ';' { SEMICOLON }
  | '.' { DOT }
  | "=>" { ARROW }
  | ':' { COLON }
  | '=' { ASSIGN }

  (* types *)
  (* | "any" { ANY } *)
  | "number" { NUMBER }
  | "boolean" { BOOLEAN }
  | "string" { STRING }
  | "void" { VOID }

  (* keywords *)
  | "function" { FUNCTION }
  | "interface" { INTERFACE }
  | "let" { LET }
  | "const" { CONST }
  | "do" { DO }
  | "else" { ELSE }
  | "false" { FALSE }
  (* | "for" { FOR } *)
  | "if" { IF }
  (* | "instanceof" { INSTANCEOF } *)
  | "return" { RETURN }
  | "true" { TRUE }
  | "while" { WHILE }
  (* | "in" { IN } *)

  | letter (letter | digit)* as x { ID x }
  | float as n { NUM (float_of_string n) }
  | '"' { string_literal (Buffer.create 17) lexbuf }

  | eof { EOF }

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
