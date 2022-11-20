%token EOF
%token <string> ID

(* symbols *)
%token LPAREN RPAREN LBRACE RBRACE LBRACKET RBRACKET
%token PLUS MINUS TIMES DIV
%token AND OR NOT
%token EQUALS GREATER LESS
%token SEMICOLON DOT ARROW COLON ASSIGN COMMA

(* types *)
%token ANY NUMBER BOOLEAN STRING VOID

(* keywords *)
%token FUNCTION INTERFACE LET CONST AS IMPORT
%token DO ELSE FALSE FOR IF INSTANCEOF RETURN TRUE WHILE IN

%token <float> NUM
%token <string> STR

%start <unit> main
%%
main:
  | NUM { () }
  | LPAREN; main; RPAREN { () }
  ;
