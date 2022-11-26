%{
  open Syntax
%}

%token EOF

%token LET ASSIGN START STOP
%token <string> ID
// %token LBRACK RBRACK

// %token <float> NUM
%token <string> STR

%start <prog> prog
%%
prog:
  | b = list(stmt) ; EOF { { body = b } }
  ;
id:
  | n = ID { { name = n } }
  ;
str:
  | s = STR { Str s }
  ;
stmt:
  | LET ; a = macro_decl ; STOP { MacroDecl a }
  | START ; b = text_decl ; STOP { TextDecl b }
  ;
macro_decl:
  | ID ; n = id ; ASSIGN ; s = str { { macro_id = n ; init = s } }
  ;
text_decl:
  | s = str { { words = s } }
  ;