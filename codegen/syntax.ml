(*
  These datatypes are loosely based on the ESTree specification:
  https://github.com/estree/estree/blob/14df8a024956ea289bd55b9c2226a1d5b8a473ee/es5.md
  https://github.com/estree/estree/blob/70d58d73f69a3a72b51ed3fb540fae2550160619/es2015.md

  If a type definition is preceded by a CamelCase name, that indicates that that
  type is meant to roughly correspond to the ESTree type of the same name.
*)

(* Program *)
type prog =
  { body : stmt list;
  }
[@@deriving show { with_path = false }]

(* Statement *)
and stmt =
  | MacroDecl of macro_decl
  | TextDecl of text_decl
[@@deriving show { with_path = false }]

(* Identifier *)
and id =
  | Id of string
[@@deriving show { with_path = false }]

and str =
  | Str of string
[@@deriving show { with_path = false }]

and macro_decl =
  { macro_id : id;
    init : str;
  }
[@@deriving show { with_path = false }]

and text_decl =
  { words : str;
  }
[@@deriving show { with_path = false }]

type python = [
  (* | `List of python list *)
  | `Var of string * string
  | `Print of string
]
[@@deriving show { with_path = false }]