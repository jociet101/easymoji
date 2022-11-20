
(* The type of tokens. *)

type token = 
  | WHILE
  | VOID
  | TRUE
  | TIMES
  | STRING
  | STR of (string)
  | SEMICOLON
  | RPAREN
  | RETURN
  | RBRACE
  | PLUS
  | OR
  | NUMBER
  | NUM of (float)
  | NOT
  | MINUS
  | LPAREN
  | LET
  | LESS
  | LBRACE
  | INTERFACE
  | IF
  | ID of (string)
  | GREATER
  | FUNCTION
  | FALSE
  | EQUALS
  | EOF
  | ELSE
  | DOT
  | DO
  | DIV
  | CONST
  | COMMA
  | COLON
  | BOOLEAN
  | ASSIGN
  | ARROW
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.prog)
