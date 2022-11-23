%token EOF
%token <string> ID

%token MACRO SMILES
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
