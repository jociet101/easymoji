%token EOF

%token LET ASSIGN START

%token <string> ID
// %token SPAM 
%token LBRACK RBRACK

%token <float> NUM
%token <string> STR

%start <unit> main
%%
main:
  | NUM { () }
  | LBRACK; main; RBRACK { () }
  ;
