%{
  open Syntax
%}

%token LPAREN RPAREN LBRACE RBRACE
%token PLUS MINUS TIMES DIV 
%token EQUALS GREATER LESS
%token AND OR NOT
%token COMMA SEMICOLON DOT
%token ARROW COLON ASSIGN
%token NUMBER BOOLEAN STRING VOID
%token FUNCTION INTERFACE
%token LET CONST FALSE TRUE 
%token DO ELSE IF WHILE
%token RETURN
%token <string> ID
%token <float> NUM
%token <string> STR
%token EOF

%left OR
%left AND
%left EQUALS
%left GREATER LESS
%left PLUS MINUS
%left TIMES DIV

%start <prog> prog
%%
prog:
  | b = list(stmt) ; EOF { { body = b } }
  ;
id:
  | n = ID { { name = n } }
  ;
stmt:
  | s = balanced { s }
  | s = unbalanced { s }
  ;
stmt_no_if:
  | LBRACE ; b = list(stmt) ; RBRACE { Block b }
  | v = no_obj_expr ; SEMICOLON { Expr v }
  | RETURN ; a = option(expr) ; SEMICOLON { Return a }
  | b = while_stmt { While b }
  | c = do_while_stmt { DoWhile c }
  | d = func_decl { FuncDecl d }
  | e = var_decl { VarDecl e }
  | f = interface_decl { InterfaceDecl f }
  | g = assign { Assign g }
  | h = member_assign { MemberAssign h }
  ;
balanced:
  | IF ; LPAREN ; cond = expr ; RPAREN ; e1 = balanced ; ELSE ; e2 = balanced { If { if_test = cond ; consequent = e1 ; alternate = Some e2 } }
  | s = stmt_no_if { s }
  ;
unbalanced:
  | IF ; LPAREN ; cond = expr ; RPAREN ; e1 = stmt { If { if_test = cond ; consequent = e1 ; alternate = None } }
  | IF ; LPAREN ; cond = expr ; RPAREN ; e1 = balanced ; ELSE ; e2 = unbalanced { If { if_test = cond ; consequent = e1 ; alternate = Some e2 } }
  ;
while_stmt:
  | WHILE ; LPAREN ; a = expr ; RPAREN ; b = balanced { { while_test = a ; while_body = b } }
  ;
do_while_stmt:
  | DO ; a = stmt ; WHILE ; b = expr ; SEMICOLON { { do_while_body = a ; do_while_test = b } }
  ;
func_decl:
  | FUNCTION ; a = id ; LPAREN ; b = separated_list(COMMA, typeable) ; RPAREN ; COLON ; d = typ ; LBRACE ; c = list(stmt) ; RBRACE { { func_id = { id = a ; typ = Some d } ; func_params = b ; func_body = c } }
  ;
var_decl:
  | a = decl_kind ; b = typeable ; ASSIGN ; c = expr ; SEMICOLON { { var_kind = a ; var_id = b ; init = c } }
  ;
decl_kind:
  | LET { Let }
  | CONST { Const }
  ; 
interface_decl:
  | INTERFACE ; a = id ; b = obj_typ { { interface_id = a ; fields = b } }
  ;
assign:
  | a = id ; ASSIGN ; b = expr ; SEMICOLON { { assign_left = a ; assign_right = b } }
  ;
member_assign:
  | a = member_no_obj ; ASSIGN ; b = expr ; SEMICOLON { { member_assign_left = a ; member_assign_right = b } }
  ;
expr:
  | e = op_expr { e }
  | n = arrow { Arrow n }
  ;
no_obj_expr:
  | e = op_no_obj_expr { e }
  | n = arrow { Arrow n }
  ;
op_no_obj_expr:
  | e = primary_no_obj_expr { e }
  | e = unary_expr { Unary e }
  | n = logic_no_obj_expr { Logic n }
  | e = binary_no_obj_expr { Binary e }
  ;
op_expr:
  | e = primary_expr { e }
  | e = unary_expr { Unary e }
  | n = logic_expr { Logic n }
  | e = binary_expr { Binary e }
  ;
unary_expr:
  | a = unary_op ; b = primary_expr { { unary_op = a ; argument = b } }
  ;
%inline unary_op:
  | NOT { Not }
  | MINUS { Negative }
  ;
primary_no_obj_expr:
  | n = id { Id n }
  | n = lit { Lit n }
  | n = member_no_obj { Member n }
  | n = call_no_obj { Call n }
  | LPAREN ; e = expr ; RPAREN { e }
  ;
primary_expr:
  | n = id { Id n }
  | n = lit { Lit n }
  | n = obj { Obj n }
  | n = member { Member n }
  | n = call { Call n }
  | LPAREN ; e = expr ; RPAREN { e }
  ;
binary_no_obj_expr:
  | a = op_no_obj_expr ; b = binary_op ; c = op_expr { { binary_op = b ; binary_left = a ; binary_right = c } }
  ;
binary_expr:
  | a = op_expr ; b = binary_op ; c = op_expr { { binary_op = b ; binary_left = a ; binary_right = c } }
  ;
%inline binary_op:
  | TIMES { Times }
  | DIV { Div }
  | PLUS { Plus }
  | MINUS { Minus }
  | GREATER { Greater }
  | LESS { Less }
  | EQUALS { Equals }
  ;
logic_no_obj_expr:
  | a = op_no_obj_expr ; b = logic_op ; c = op_expr { { logic_op = b ; logic_left = a ; logic_right = c } }
  ;
logic_expr:
  | a = op_expr ; b = logic_op ; c = op_expr { { logic_op = b ; logic_left = a ; logic_right = c } }
  ;
%inline logic_op:
  | OR { Or }
  | AND { And }
  ;
arrow:
  | LPAREN ; d = separated_list(COMMA, typeable) ; RPAREN ; ARROW ; b = arrow_body { { arrow_params = d ; arrow_body = b } }
  ;
arrow_body:
  | LBRACE ; b = list(stmt) ; RBRACE { ArrowBlock b }
  | e = no_obj_expr { ArrowExpr e }
  ;
lit:
  | n = NUM { Num n }
  | x = STR { Str x }
  | TRUE { Bool true }
  | FALSE { Bool false }
  ;
obj:
  | LBRACE ; d = separated_list(COMMA, prop) ; RBRACE { { properties = d } }
  ;
prop:
  | a = id ; COLON ; b = expr { { key = a ; value = b } }
  ;
member_no_obj:
  | a = primary_no_obj_expr ; DOT ; b = id { { obj = a ; property = b } }
  ;
member:
  | a = primary_expr ; DOT ; b = id { { obj = a ; property = b } }
  ;
call_no_obj:
  | a = primary_no_obj_expr ; LPAREN ; b = separated_list(COMMA, expr) ; RPAREN { { callee = a ; arguments = b } }
  ;
call:
  | a = primary_expr ; LPAREN ; b = separated_list(COMMA, expr) ; RPAREN { { callee = a ; arguments = b } }
  ;
typ:
  | NUMBER { Number }
  | BOOLEAN { Boolean }
  | STRING { String }
  | VOID { Void }
  | a = func_typ { Func a }
  | a = id { Interface a }
  | a = obj_typ { Object a }
  ;
obj_typ:
  | LBRACE ; d = list(semi_typeable) ; RBRACE { d }
  ;
func_typ:
  | LPAREN ; d = separated_list(COMMA, typeable) ; RPAREN ; ARROW ; c = typ { { domain = d; codomain = c } }
  ;
typeable:
  | a = id ; COLON ; b = option(typ) { { id = a ; typ = b } }
  ;
divider:
  | SEMICOLON { SEMICOLON }
  | COMMA { COMMA }
  ;
semi_typeable:
  | a = typeable ; divider { a }
  ;