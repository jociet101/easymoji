(*
  These datatypes are loosely based on the ESTree specification:
  https://github.com/estree/estree/blob/14df8a024956ea289bd55b9c2226a1d5b8a473ee/es5.md
  https://github.com/estree/estree/blob/70d58d73f69a3a72b51ed3fb540fae2550160619/es2015.md

  If a type definition is preceded by a CamelCase name, that indicates that that
  type is meant to roughly correspond to the ESTree type of the same name.
*)

(* Identifier *)
type id =
  { name : string;
  }
[@@deriving show { with_path = false }]

and typ =
  | Interface of id
  | Object of obj_typ
  | Func of func_typ
  | Any
  | Number
  | Boolean
  | String
  | Void
[@@deriving show { with_path = false }]

and obj_typ = typeable list

and func_typ =
  { domain : typeable list;
    codomain : typ;
  }
[@@deriving show { with_path = false }]

and typeable =
  { id : id;
    typ : typ option;
  }
[@@deriving show { with_path = false }]

(* Literal *)
and lit =
  | Str of string
  | Bool of bool
  | Num of float
[@@deriving show { with_path = false }]

(* Program *)
and prog =
  { body : stmt list;
  }
[@@deriving show { with_path = false }]

(* Statement *)
and stmt =
  | Expr of expr
  | Block of stmt list
  | Return of expr option
  | If of if_stmt
  | While of while_stmt
  | DoWhile of do_while_stmt
  | FuncDecl of func_decl
  | VarDecl of var_decl
  | InterfaceDecl of interface_decl
  | Assign of assign
  | MemberAssign of member_assign
[@@deriving show { with_path = false }]

(* IfStatement *)
and if_stmt =
  { if_test : expr;
    consequent : stmt;
    alternate : stmt option;
  }
[@@deriving show { with_path = false }]

(* WhileStatement *)
and while_stmt =
  { while_test : expr;
    while_body : stmt;
  }
[@@deriving show { with_path = false }]

(* DoWhileStatement *)
and do_while_stmt =
  { do_while_body : stmt;
    do_while_test : expr;
  }
[@@deriving show { with_path = false }]

(* FunctionDeclaration *)
and func_decl =
  { func_id : typeable;
    func_params : typeable list;
    func_body : stmt list;
  }
[@@deriving show { with_path = false }]

(* VariableDeclaration *)
and var_decl =
  { var_kind : decl_kind;
    var_id : typeable;
    init : expr;
  }
[@@deriving show { with_path = false }]

and interface_decl =
  { interface_id : id;
    fields : typeable list;
  }
[@@deriving show { with_path = false }]

and decl_kind =
  | Let
  | Const
[@@deriving show { with_path = false }]

(* AssignmentExpression *)
and assign =
  { assign_left : id;
    assign_right : expr;
  }
[@@deriving show { with_path = false }]

and member_assign =
  { member_assign_left : member;
    member_assign_right : expr;
  }
[@@deriving show { with_path = false }]

(* Expression *)
and expr =
  | Id of id
  | Lit of lit
  | Obj of obj
  | Arrow of arrow
  | Unary of unary_expr
  | Binary of binary_expr
  | Logic of logic_expr
  | Call of call
  | Member of member
[@@deriving show { with_path = false }]

(* ObjectExpression *)
and obj =
  { properties : prop list;
  }
[@@deriving show { with_path = false }]

(* Property *)
and prop =
  { key : id;
    value : expr;
  }
[@@deriving show { with_path = false }]

(* ArrowFunctionExpression *)
and arrow =
  { arrow_params : typeable list;
    arrow_body : arrow_body;
  }
[@@deriving show { with_path = false }]

and arrow_body =
  | ArrowExpr of expr
  | ArrowBlock of stmt list
[@@deriving show { with_path = false }]

(* UnaryExpression *)
and unary_expr =
  { unary_op : unary_op;
    argument : expr;
  }
[@@deriving show { with_path = false }]

(* UnaryOperator *)
and unary_op =
  | Negative
  | Not
[@@deriving show { with_path = false }]

(* BinaryExpression *)
and binary_expr =
  { binary_op : binary_op;
    binary_left : expr;
    binary_right : expr;
  }
[@@deriving show { with_path = false }]

(* BinaryOperator *)
and binary_op =
  | Times
  | Div
  | Plus
  | Minus
  | Greater
  | Less
  | Equals
[@@deriving show { with_path = false }]

(* LogicalExpression *)
and logic_expr =
  { logic_op : logic_op;
    logic_left : expr;
    logic_right : expr;
  }
[@@deriving show { with_path = false }]

(* LogicalOperator *)
and logic_op =
  | Or
  | And
[@@deriving show { with_path = false }]

(*  CallExpression *)
and call =
  { callee : expr;
    arguments: expr list;
  }
[@@deriving show { with_path = false }]

(*  MemberExpression *)
and member =
  { obj : expr;
    property: id;
  }
[@@deriving show { with_path = false }]
