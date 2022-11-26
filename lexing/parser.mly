%token EOF

%token LET ASSIGN START NEXT
%token <string> ID
%token LBRACK RBRACK

%token <float> NUM
%token <string> STR

%start <unit> main
%%
main:
  | NUM { () }
  | LBRACK; main; RBRACK { () }
  ;
