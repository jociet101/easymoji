
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = 
    | WHILE
    | VOID
    | TRUE
    | TIMES
    | STRING
    | STR of (
# 18 "parser.mly"
       (string)
# 19 "parser.ml"
  )
    | SEMICOLON
    | RPAREN
    | RETURN
    | RBRACE
    | PLUS
    | OR
    | NUMBER
    | NUM of (
# 17 "parser.mly"
       (float)
# 31 "parser.ml"
  )
    | NOT
    | MINUS
    | LPAREN
    | LET
    | LESS
    | LBRACE
    | INTERFACE
    | IF
    | ID of (
# 16 "parser.mly"
       (string)
# 44 "parser.ml"
  )
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
  
end

include MenhirBasics

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState208
  | MenhirState206
  | MenhirState204
  | MenhirState202
  | MenhirState183
  | MenhirState177
  | MenhirState169
  | MenhirState167
  | MenhirState162
  | MenhirState154
  | MenhirState149
  | MenhirState147
  | MenhirState145
  | MenhirState143
  | MenhirState141
  | MenhirState139
  | MenhirState137
  | MenhirState135
  | MenhirState133
  | MenhirState130
  | MenhirState127
  | MenhirState123
  | MenhirState115
  | MenhirState114
  | MenhirState112
  | MenhirState109
  | MenhirState107
  | MenhirState106
  | MenhirState104
  | MenhirState101
  | MenhirState100
  | MenhirState99
  | MenhirState94
  | MenhirState93
  | MenhirState89
  | MenhirState88
  | MenhirState84
  | MenhirState81
  | MenhirState76
  | MenhirState74
  | MenhirState72
  | MenhirState70
  | MenhirState68
  | MenhirState66
  | MenhirState64
  | MenhirState62
  | MenhirState53
  | MenhirState50
  | MenhirState38
  | MenhirState33
  | MenhirState32
  | MenhirState28
  | MenhirState24
  | MenhirState21
  | MenhirState17
  | MenhirState16
  | MenhirState13
  | MenhirState9
  | MenhirState8
  | MenhirState7
  | MenhirState6
  | MenhirState2
  | MenhirState0

# 1 "parser.mly"
  
  open Syntax

# 143 "parser.ml"

[@@@ocaml.warning "-4-39"]

let rec _menhir_goto_unbalanced : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.stmt) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState93 | MenhirState99 | MenhirState106 | MenhirState177 | MenhirState114 | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (s : (Syntax.stmt)) = _v in
        let _v : (Syntax.stmt) = 
# 38 "parser.mly"
                   ( s )
# 157 "parser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e2 : (Syntax.stmt)) = _v in
        let (((_menhir_stack, _menhir_s), _, (cond : (Syntax.expr))), _, (e1 : (Syntax.stmt))) = _menhir_stack in
        let _v : (Syntax.stmt) = 
# 58 "parser.mly"
                                                                                ( If { if_test = cond ; consequent = e1 ; alternate = Some e2 } )
# 168 "parser.ml"
         in
        _menhir_goto_unbalanced _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.stmt) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | LBRACE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | NUM _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | STR _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState0 | MenhirState93 | MenhirState99 | MenhirState177 | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONST ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | DO ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | FUNCTION ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | IF ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | INTERFACE ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | LBRACE ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | LET ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | LPAREN ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | RETURN ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | EOF | RBRACE ->
            _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177)
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (cond : (Syntax.expr))), _, (e1 : (Syntax.stmt))) = _menhir_stack in
        let _v : (Syntax.stmt) = 
# 57 "parser.mly"
                                                   ( If { if_test = cond ; consequent = e1 ; alternate = None } )
# 268 "parser.ml"
         in
        _menhir_goto_unbalanced _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce91 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.stmt) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (s : (Syntax.stmt))) = _menhir_stack in
    let _v : (Syntax.stmt) = 
# 37 "parser.mly"
                 ( s )
# 280 "parser.ml"
     in
    _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v

and _menhir_run203 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState204
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState204
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState204
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState204
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState204
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState204
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState204)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_separated_nonempty_list_COMMA_prop_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.prop list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Syntax.prop list)) = _v in
        let _v : (Syntax.prop list) = 
# 141 "<standard.mly>"
    ( x )
# 334 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_prop__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Syntax.prop list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Syntax.prop))) = _menhir_stack in
        let _v : (Syntax.prop list) = 
# 240 "<standard.mly>"
    ( x :: xs )
# 345 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_prop_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState127 | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Syntax.expr list)) = _v in
        let _v : (Syntax.expr list) = 
# 141 "<standard.mly>"
    ( x )
# 361 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Syntax.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr list) = 
# 240 "<standard.mly>"
    ( x :: xs )
# 372 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (xs : (Syntax.expr list))) = _menhir_stack in
            let _v =
              let b = 
# 229 "<standard.mly>"
    ( xs )
# 396 "parser.ml"
               in
              (
# 181 "parser.mly"
                                                                         ( { callee = a ; arguments = b } )
# 401 "parser.ml"
               : (Syntax.call))
            in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (n : (Syntax.call)) = _v in
            let _v : (Syntax.expr) = 
# 124 "parser.mly"
             ( Call n )
# 410 "parser.ml"
             in
            _menhir_goto_primary_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState127 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (xs : (Syntax.expr list))) = _menhir_stack in
            let _v =
              let b = 
# 229 "<standard.mly>"
    ( xs )
# 433 "parser.ml"
               in
              (
# 178 "parser.mly"
                                                                                ( { callee = a ; arguments = b } )
# 438 "parser.ml"
               : (Syntax.call))
            in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (n : (Syntax.call)) = _v in
            let _v : (Syntax.expr) = 
# 116 "parser.mly"
                    ( Call n )
# 447 "parser.ml"
             in
            _menhir_goto_primary_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_no_obj_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState202 | MenhirState208 | MenhirState206 | MenhirState93 | MenhirState99 | MenhirState183 | MenhirState106 | MenhirState114 | MenhirState177 | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (v : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.stmt) = 
# 42 "parser.mly"
                                ( Expr v )
# 476 "parser.ml"
             in
            _menhir_goto_stmt_no_if _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (e : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.arrow_body) = 
# 157 "parser.mly"
                    ( ArrowExpr e )
# 492 "parser.ml"
         in
        _menhir_goto_arrow_body _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_balanced : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.stmt) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState93 | MenhirState99 | MenhirState114 | MenhirState177 | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce91 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CONST ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | DO ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | FUNCTION ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | IF ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | INTERFACE ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | LBRACE ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | LET ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | LPAREN ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | NUM _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | RETURN ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | STR _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183)
        | CONST | DO | EOF | FALSE | FUNCTION | ID _ | IF | INTERFACE | LBRACE | LET | LPAREN | MINUS | NOT | NUM _ | RBRACE | RETURN | STR _ | TRUE | WHILE ->
            _menhir_reduce91 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState208 | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (cond : (Syntax.expr))), _, (e1 : (Syntax.stmt))), _, (e2 : (Syntax.stmt))) = _menhir_stack in
        let _v : (Syntax.stmt) = 
# 53 "parser.mly"
                                                                              ( If { if_test = cond ; consequent = e1 ; alternate = Some e2 } )
# 568 "parser.ml"
         in
        _menhir_goto_balanced _menhir_env _menhir_stack _menhir_s _v
    | MenhirState206 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CONST ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | DO ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | FUNCTION ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | IF ->
                _menhir_run203 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | INTERFACE ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | LBRACE ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | LET ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | LPAREN ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | NUM _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | RETURN ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | STR _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState202 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (a : (Syntax.expr))), _, (b : (Syntax.stmt))) = _menhir_stack in
        let _v : (Syntax.while_stmt) = 
# 61 "parser.mly"
                                                      ( { while_test = a ; while_body = b } )
# 632 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (b : (Syntax.while_stmt)) = _v in
        let _v : (Syntax.stmt) = 
# 44 "parser.mly"
                   ( While b )
# 640 "parser.ml"
         in
        _menhir_goto_stmt_no_if _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_semi_typeable_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.obj_typ) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Syntax.typeable))), _, (xs : (Syntax.obj_typ))) = _menhir_stack in
        let _v : (Syntax.obj_typ) = 
# 210 "<standard.mly>"
    ( x :: xs )
# 657 "parser.ml"
         in
        _menhir_goto_list_semi_typeable_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (d : (Syntax.obj_typ))) = _menhir_stack in
            let _v : (Syntax.obj_typ) = 
# 193 "parser.mly"
                                              ( d )
# 673 "parser.ml"
             in
            (match _menhir_s with
            | MenhirState112 | MenhirState24 | MenhirState32 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (a : (Syntax.obj_typ)) = _v in
                let _v : (Syntax.typ) = 
# 190 "parser.mly"
                ( Object a )
# 683 "parser.ml"
                 in
                _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v
            | MenhirState101 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (b : (Syntax.obj_typ)) = _v in
                let ((_menhir_stack, _menhir_s), _, (a : (Syntax.id))) = _menhir_stack in
                let _v : (Syntax.interface_decl) = 
# 77 "parser.mly"
                                     ( { interface_id = a ; fields = b } )
# 694 "parser.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (f : (Syntax.interface_decl)) = _v in
                let _v : (Syntax.stmt) = 
# 48 "parser.mly"
                       ( InterfaceDecl f )
# 702 "parser.ml"
                 in
                _menhir_goto_stmt_no_if _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_logic_no_obj_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.logic_expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (Syntax.logic_expr)) = _v in
    let _v : (Syntax.expr) = 
# 96 "parser.mly"
                          ( Logic n )
# 724 "parser.ml"
     in
    _menhir_goto_op_no_obj_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_binary_no_obj_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.binary_expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (e : (Syntax.binary_expr)) = _v in
    let _v : (Syntax.expr) = 
# 97 "parser.mly"
                           ( Binary e )
# 736 "parser.ml"
     in
    _menhir_goto_op_no_obj_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_logic_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.logic_expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (Syntax.logic_expr)) = _v in
    let _v : (Syntax.expr) = 
# 102 "parser.mly"
                   ( Logic n )
# 748 "parser.ml"
     in
    _menhir_goto_op_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_binary_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.binary_expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (e : (Syntax.binary_expr)) = _v in
    let _v : (Syntax.expr) = 
# 103 "parser.mly"
                    ( Binary e )
# 760 "parser.ml"
     in
    _menhir_goto_op_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState127 | MenhirState81 | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
            | LBRACE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | NUM _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
            | STR _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr list) = 
# 238 "<standard.mly>"
    ( [ x ] )
# 806 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 117 "parser.mly"
                               ( e )
# 828 "parser.ml"
             in
            _menhir_goto_primary_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr option) = 
# 113 "<standard.mly>"
    ( Some x )
# 844 "parser.ml"
         in
        _menhir_goto_option_expr_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CONST ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | DO ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | FUNCTION ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | IF ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | INTERFACE ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | LBRACE ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | LET ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | LPAREN ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | NUM _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | RETURN ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | STR _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (a : (Syntax.stmt))), _, (b : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.do_while_stmt) = 
# 64 "parser.mly"
                                                 ( { do_while_body = a ; do_while_test = b } )
# 914 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (c : (Syntax.do_while_stmt)) = _v in
            let _v : (Syntax.stmt) = 
# 45 "parser.mly"
                      ( DoWhile c )
# 922 "parser.ml"
             in
            _menhir_goto_stmt_no_if _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState154 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.member))), _, (b : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.member_assign) = 
# 83 "parser.mly"
                                                      ( { member_assign_left = a ; member_assign_right = b } )
# 944 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (h : (Syntax.member_assign)) = _v in
            let _v : (Syntax.stmt) = 
# 50 "parser.mly"
                      ( MemberAssign h )
# 952 "parser.ml"
             in
            _menhir_goto_stmt_no_if _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState162 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.id))), _, (b : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.assign) = 
# 80 "parser.mly"
                                           ( { assign_left = a ; assign_right = b } )
# 974 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (g : (Syntax.assign)) = _v in
            let _v : (Syntax.stmt) = 
# 49 "parser.mly"
               ( Assign g )
# 982 "parser.ml"
             in
            _menhir_goto_stmt_no_if _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState169 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (a : (Syntax.decl_kind))), _, (b : (Syntax.typeable))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.var_decl) = 
# 70 "parser.mly"
                                                                 ( { var_kind = a ; var_id = b ; init = c } )
# 1004 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (e : (Syntax.var_decl)) = _v in
            let _v : (Syntax.stmt) = 
# 47 "parser.mly"
                 ( VarDecl e )
# 1012 "parser.ml"
             in
            _menhir_goto_stmt_no_if _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState7 | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 125 "parser.mly"
                               ( e )
# 1034 "parser.ml"
             in
            _menhir_goto_primary_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (a : (Syntax.id))), _, (b : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.prop) = 
# 169 "parser.mly"
                              ( { key = a ; value = b } )
# 1050 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13)
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Syntax.prop))) = _menhir_stack in
            let _v : (Syntax.prop list) = 
# 238 "<standard.mly>"
    ( [ x ] )
# 1074 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_prop_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState2 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CONST ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | DO ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | FUNCTION ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | IF ->
                _menhir_run203 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | INTERFACE ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | LBRACE ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | LET ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | LPAREN ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | NUM _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | RETURN ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | STR _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState202)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState204 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CONST ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | DO ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | FUNCTION ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
            | IF ->
                _menhir_run203 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | INTERFACE ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | LBRACE ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | LET ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | LPAREN ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | NUM _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
            | RETURN ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | STR _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run68 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_run72 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_run74 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_goto_divider : _menhir_env -> 'ttv_tail -> (token) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_menhir_stack, _menhir_s, (a : (Syntax.typeable))) = _menhir_stack in
    let _v : (Syntax.typeable) = 
# 206 "parser.mly"
                           ( a )
# 1426 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | RBRACE ->
        _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_goto_separated_nonempty_list_COMMA_typeable_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.typeable list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Syntax.typeable list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Syntax.typeable))) = _menhir_stack in
        let _v : (Syntax.typeable list) = 
# 240 "<standard.mly>"
    ( x :: xs )
# 1453 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_typeable_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState109 | MenhirState89 | MenhirState17 | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Syntax.typeable list)) = _v in
        let _v : (Syntax.typeable list) = 
# 141 "<standard.mly>"
    ( x )
# 1463 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_typeable__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_op_no_obj_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AND ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | LPAREN ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149)
    | DIV ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | LPAREN ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147)
    | EQUALS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | LPAREN ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145)
    | GREATER ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | LPAREN ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143)
    | LESS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | LPAREN ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141)
    | MINUS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState139
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState139
        | LPAREN ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState139
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState139
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState139
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState139
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139)
    | OR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | LPAREN ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137)
    | PLUS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | LPAREN ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135)
    | TIMES ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | LPAREN ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133)
    | COMMA | RBRACE | RPAREN | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (e : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 90 "parser.mly"
                       ( e )
# 1725 "parser.ml"
         in
        _menhir_goto_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Syntax.expr list) = 
# 139 "<standard.mly>"
    ( [] )
# 1740 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_arrow_body : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.arrow_body) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (b : (Syntax.arrow_body)) = _v in
    let ((_menhir_stack, _menhir_s), _, (xs : (Syntax.typeable list))) = _menhir_stack in
    let _v =
      let d = 
# 229 "<standard.mly>"
    ( xs )
# 1754 "parser.ml"
       in
      (
# 153 "parser.mly"
                                                                                   ( { arrow_params = d ; arrow_body = b } )
# 1759 "parser.ml"
       : (Syntax.arrow))
    in
    match _menhir_s with
    | MenhirState2 | MenhirState204 | MenhirState7 | MenhirState16 | MenhirState17 | MenhirState104 | MenhirState169 | MenhirState162 | MenhirState154 | MenhirState127 | MenhirState123 | MenhirState94 | MenhirState89 | MenhirState50 | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (n : (Syntax.arrow)) = _v in
        let _v : (Syntax.expr) = 
# 87 "parser.mly"
              ( Arrow n )
# 1770 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 | MenhirState202 | MenhirState206 | MenhirState208 | MenhirState88 | MenhirState93 | MenhirState99 | MenhirState106 | MenhirState183 | MenhirState114 | MenhirState177 | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (n : (Syntax.arrow)) = _v in
        let _v : (Syntax.expr) = 
# 91 "parser.mly"
              ( Arrow n )
# 1780 "parser.ml"
         in
        _menhir_goto_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_stmt_no_if : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.stmt) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (s : (Syntax.stmt)) = _v in
    let _v : (Syntax.stmt) = 
# 54 "parser.mly"
                   ( s )
# 1794 "parser.ml"
     in
    _menhir_goto_balanced _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_loption_separated_nonempty_list_COMMA_typeable__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.typeable list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
                | LBRACE ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                | LPAREN ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                | NUMBER ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                | STRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                | VOID ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState89 | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | FALSE ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
                | LBRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState88 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | CONST ->
                        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | DO ->
                        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | FALSE ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | FUNCTION ->
                        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | ID _v ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
                    | IF ->
                        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | INTERFACE ->
                        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | LBRACE ->
                        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | LET ->
                        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | LPAREN ->
                        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | MINUS ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | NOT ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | NUM _v ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
                    | RETURN ->
                        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | STR _v ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
                    | TRUE ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | WHILE ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | RBRACE ->
                        _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93)
                | LPAREN ->
                    _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                | MINUS ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                | NOT ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                | NUM _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
                | STR _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
                | TRUE ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
                | LBRACE ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | LPAREN ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | NUMBER ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | STRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | VOID ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Syntax.obj_typ) = 
# 208 "<standard.mly>"
    ( [] )
# 1994 "parser.ml"
     in
    _menhir_goto_list_semi_typeable_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_unary_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.unary_expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState204 | MenhirState2 | MenhirState7 | MenhirState16 | MenhirState169 | MenhirState162 | MenhirState154 | MenhirState149 | MenhirState147 | MenhirState145 | MenhirState143 | MenhirState141 | MenhirState139 | MenhirState137 | MenhirState135 | MenhirState133 | MenhirState127 | MenhirState123 | MenhirState104 | MenhirState94 | MenhirState89 | MenhirState81 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState70 | MenhirState68 | MenhirState66 | MenhirState64 | MenhirState62 | MenhirState53 | MenhirState50 | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (Syntax.unary_expr)) = _v in
        let _v : (Syntax.expr) = 
# 101 "parser.mly"
                   ( Unary e )
# 2008 "parser.ml"
         in
        _menhir_goto_op_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 | MenhirState202 | MenhirState208 | MenhirState206 | MenhirState88 | MenhirState93 | MenhirState99 | MenhirState183 | MenhirState106 | MenhirState177 | MenhirState114 | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (Syntax.unary_expr)) = _v in
        let _v : (Syntax.expr) = 
# 95 "parser.mly"
                   ( Unary e )
# 2018 "parser.ml"
         in
        _menhir_goto_op_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_op_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState204 | MenhirState2 | MenhirState7 | MenhirState16 | MenhirState169 | MenhirState162 | MenhirState154 | MenhirState127 | MenhirState123 | MenhirState104 | MenhirState94 | MenhirState89 | MenhirState17 | MenhirState81 | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | LBRACE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LPAREN ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | NUM _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | STR _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (e : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 86 "parser.mly"
                ( e )
# 2082 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
        let _v =
          let b = 
# 134 "parser.mly"
          ( Times )
# 2099 "parser.ml"
           in
          (
# 131 "parser.mly"
                                              ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2104 "parser.ml"
           : (Syntax.binary_expr))
        in
        _menhir_goto_binary_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQUALS | GREATER | LESS | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 136 "parser.mly"
         ( Plus )
# 2124 "parser.ml"
               in
              (
# 131 "parser.mly"
                                              ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2129 "parser.ml"
               : (Syntax.binary_expr))
            in
            _menhir_goto_binary_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
        let _v =
          let b = 
# 135 "parser.mly"
        ( Div )
# 2147 "parser.ml"
           in
          (
# 131 "parser.mly"
                                              ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2152 "parser.ml"
           : (Syntax.binary_expr))
        in
        _menhir_goto_binary_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | OR | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 149 "parser.mly"
       ( Or )
# 2184 "parser.ml"
               in
              (
# 146 "parser.mly"
                                             ( { logic_op = b ; logic_left = a ; logic_right = c } )
# 2189 "parser.ml"
               : (Syntax.logic_expr))
            in
            _menhir_goto_logic_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQUALS | GREATER | LESS | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 137 "parser.mly"
          ( Minus )
# 2215 "parser.ml"
               in
              (
# 131 "parser.mly"
                                              ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2220 "parser.ml"
               : (Syntax.binary_expr))
            in
            _menhir_goto_binary_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQUALS | GREATER | LESS | OR | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 139 "parser.mly"
         ( Less )
# 2250 "parser.ml"
               in
              (
# 131 "parser.mly"
                                              ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2255 "parser.ml"
               : (Syntax.binary_expr))
            in
            _menhir_goto_binary_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQUALS | GREATER | LESS | OR | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 138 "parser.mly"
            ( Greater )
# 2285 "parser.ml"
               in
              (
# 131 "parser.mly"
                                              ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2290 "parser.ml"
               : (Syntax.binary_expr))
            in
            _menhir_goto_binary_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQUALS | OR | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 140 "parser.mly"
           ( Equals )
# 2324 "parser.ml"
               in
              (
# 131 "parser.mly"
                                              ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2329 "parser.ml"
               : (Syntax.binary_expr))
            in
            _menhir_goto_binary_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | OR | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 150 "parser.mly"
        ( And )
# 2365 "parser.ml"
               in
              (
# 146 "parser.mly"
                                             ( { logic_op = b ; logic_left = a ; logic_right = c } )
# 2370 "parser.ml"
               : (Syntax.logic_expr))
            in
            _menhir_goto_logic_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState133 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
        let _v =
          let b = 
# 134 "parser.mly"
          ( Times )
# 2388 "parser.ml"
           in
          (
# 128 "parser.mly"
                                                     ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2393 "parser.ml"
           : (Syntax.binary_expr))
        in
        _menhir_goto_binary_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState135 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQUALS | GREATER | LESS | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 136 "parser.mly"
         ( Plus )
# 2413 "parser.ml"
               in
              (
# 128 "parser.mly"
                                                     ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2418 "parser.ml"
               : (Syntax.binary_expr))
            in
            _menhir_goto_binary_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState137 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | OR | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 149 "parser.mly"
       ( Or )
# 2456 "parser.ml"
               in
              (
# 143 "parser.mly"
                                                    ( { logic_op = b ; logic_left = a ; logic_right = c } )
# 2461 "parser.ml"
               : (Syntax.logic_expr))
            in
            _menhir_goto_logic_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState139 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQUALS | GREATER | LESS | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 137 "parser.mly"
          ( Minus )
# 2487 "parser.ml"
               in
              (
# 128 "parser.mly"
                                                     ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2492 "parser.ml"
               : (Syntax.binary_expr))
            in
            _menhir_goto_binary_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQUALS | GREATER | LESS | OR | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 139 "parser.mly"
         ( Less )
# 2522 "parser.ml"
               in
              (
# 128 "parser.mly"
                                                     ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2527 "parser.ml"
               : (Syntax.binary_expr))
            in
            _menhir_goto_binary_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState143 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQUALS | GREATER | LESS | OR | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 138 "parser.mly"
            ( Greater )
# 2557 "parser.ml"
               in
              (
# 128 "parser.mly"
                                                     ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2562 "parser.ml"
               : (Syntax.binary_expr))
            in
            _menhir_goto_binary_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState145 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EQUALS | OR | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 140 "parser.mly"
           ( Equals )
# 2596 "parser.ml"
               in
              (
# 128 "parser.mly"
                                                     ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2601 "parser.ml"
               : (Syntax.binary_expr))
            in
            _menhir_goto_binary_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState147 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
        let _v =
          let b = 
# 135 "parser.mly"
        ( Div )
# 2619 "parser.ml"
           in
          (
# 128 "parser.mly"
                                                     ( { binary_op = b ; binary_left = a ; binary_right = c } )
# 2624 "parser.ml"
           : (Syntax.binary_expr))
        in
        _menhir_goto_binary_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState149 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | OR | RBRACE | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (c : (Syntax.expr))) = _menhir_stack in
            let _v =
              let b = 
# 150 "parser.mly"
        ( And )
# 2654 "parser.ml"
               in
              (
# 143 "parser.mly"
                                                    ( { logic_op = b ; logic_left = a ; logic_right = c } )
# 2659 "parser.ml"
               : (Syntax.logic_expr))
            in
            _menhir_goto_logic_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | RPAREN ->
        _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run84 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_goto_option_typ_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.typ option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (b : (Syntax.typ option)) = _v in
    let (_menhir_stack, _menhir_s, (a : (Syntax.id))) = _menhir_stack in
    let _v : (Syntax.typeable) = 
# 199 "parser.mly"
                                     ( { id = a ; typ = b } )
# 2723 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState109 | MenhirState89 | MenhirState28 | MenhirState21 | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Syntax.typeable))) = _menhir_stack in
            let _v : (Syntax.typeable list) = 
# 238 "<standard.mly>"
    ( [ x ] )
# 2749 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_typeable_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState38 | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (token) = 
# 203 "parser.mly"
          ( COMMA )
# 2770 "parser.ml"
             in
            _menhir_goto_divider _menhir_env _menhir_stack _v
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (token) = 
# 202 "parser.mly"
              ( SEMICOLON )
# 2780 "parser.ml"
             in
            _menhir_goto_divider _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState167 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
            | LBRACE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | NUM _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
            | STR _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.typ) = 
# 187 "parser.mly"
         ( Void )
# 2837 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.typ) = 
# 186 "parser.mly"
           ( String )
# 2848 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.typ) = 
# 184 "parser.mly"
           ( Number )
# 2859 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | RPAREN ->
        _menhir_reduce50 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.typ) = 
# 185 "parser.mly"
            ( Boolean )
# 2885 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_loption_separated_nonempty_list_COMMA_prop__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.prop list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs : (Syntax.prop list))) = _menhir_stack in
        let _v =
          let d = 
# 229 "<standard.mly>"
    ( xs )
# 2905 "parser.ml"
           in
          (
# 166 "parser.mly"
                                                      ( { properties = d } )
# 2910 "parser.ml"
           : (Syntax.obj))
        in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (n : (Syntax.obj)) = _v in
        let _v : (Syntax.expr) = 
# 122 "parser.mly"
            ( Obj n )
# 2919 "parser.ml"
         in
        _menhir_goto_primary_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_primary_no_obj_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130)
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | RPAREN ->
            _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127)
    | AND | COMMA | DIV | EQUALS | GREATER | LESS | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON | TIMES ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (e : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 94 "parser.mly"
                            ( e )
# 2982 "parser.ml"
         in
        _menhir_goto_op_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_list_stmt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.stmt list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState177 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Syntax.stmt))), _, (xs : (Syntax.stmt list))) = _menhir_stack in
        let _v : (Syntax.stmt list) = 
# 210 "<standard.mly>"
    ( x :: xs )
# 3003 "parser.ml"
         in
        _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), _, (a : (Syntax.id))), _, (xs : (Syntax.typeable list))), _, (d : (Syntax.typ))), _, (c : (Syntax.stmt list))) = _menhir_stack in
            let _v =
              let b = 
# 229 "<standard.mly>"
    ( xs )
# 3020 "parser.ml"
               in
              (
# 67 "parser.mly"
                                                                                                                                   ( { func_id = { id = a ; typ = Some d } ; func_params = b ; func_body = c } )
# 3025 "parser.ml"
               : (Syntax.func_decl))
            in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (d : (Syntax.func_decl)) = _v in
            let _v : (Syntax.stmt) = 
# 46 "parser.mly"
                  ( FuncDecl d )
# 3034 "parser.ml"
             in
            _menhir_goto_stmt_no_if _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (b : (Syntax.stmt list))) = _menhir_stack in
            let _v : (Syntax.stmt) = 
# 41 "parser.mly"
                                     ( Block b )
# 3056 "parser.ml"
             in
            _menhir_goto_stmt_no_if _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (b : (Syntax.stmt list))) = _menhir_stack in
            let _v : (Syntax.arrow_body) = 
# 156 "parser.mly"
                                     ( ArrowBlock b )
# 3078 "parser.ml"
             in
            _menhir_goto_arrow_body _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (b : (Syntax.stmt list))) = _menhir_stack in
            let _v : (Syntax.prog) = 
# 31 "parser.mly"
                         ( { body = b } )
# 3099 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Syntax.prog)) = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (a : (Syntax.expr option))) = _menhir_stack in
        let _v : (Syntax.stmt) = 
# 43 "parser.mly"
                                          ( Return a )
# 3129 "parser.ml"
         in
        _menhir_goto_stmt_no_if _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_reduce77 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.id) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (n : (Syntax.id))) = _menhir_stack in
    let _v : (Syntax.expr) = 
# 113 "parser.mly"
           ( Id n )
# 3174 "parser.ml"
     in
    _menhir_goto_primary_no_obj_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce79 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.member) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (n : (Syntax.member))) = _menhir_stack in
    let _v : (Syntax.expr) = 
# 115 "parser.mly"
                      ( Member n )
# 3189 "parser.ml"
     in
    _menhir_goto_primary_no_obj_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce50 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Syntax.typeable list) = 
# 139 "<standard.mly>"
    ( [] )
# 3198 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_typeable__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | RBRACE ->
        _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_goto_primary_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState204 | MenhirState2 | MenhirState7 | MenhirState16 | MenhirState169 | MenhirState162 | MenhirState154 | MenhirState149 | MenhirState147 | MenhirState145 | MenhirState143 | MenhirState141 | MenhirState139 | MenhirState137 | MenhirState135 | MenhirState133 | MenhirState127 | MenhirState123 | MenhirState104 | MenhirState94 | MenhirState89 | MenhirState81 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState70 | MenhirState68 | MenhirState66 | MenhirState64 | MenhirState62 | MenhirState53 | MenhirState50 | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DIV | EQUALS | GREATER | LESS | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (e : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 100 "parser.mly"
                     ( e )
# 3236 "parser.ml"
             in
            _menhir_goto_op_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DIV | EQUALS | GREATER | LESS | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (b : (Syntax.expr))) = _menhir_stack in
            let _v =
              let a = 
# 110 "parser.mly"
          ( Negative )
# 3261 "parser.ml"
               in
              (
# 106 "parser.mly"
                                    ( { unary_op = a ; argument = b } )
# 3266 "parser.ml"
               : (Syntax.unary_expr))
            in
            _menhir_goto_unary_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DIV | EQUALS | GREATER | LESS | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (b : (Syntax.expr))) = _menhir_stack in
            let _v =
              let a = 
# 109 "parser.mly"
        ( Not )
# 3292 "parser.ml"
               in
              (
# 106 "parser.mly"
                                    ( { unary_op = a ; argument = b } )
# 3297 "parser.ml"
               : (Syntax.unary_expr))
            in
            _menhir_goto_unary_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce71 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.id) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (n : (Syntax.id))) = _menhir_stack in
    let _v : (Syntax.expr) = 
# 120 "parser.mly"
           ( Id n )
# 3316 "parser.ml"
     in
    _menhir_goto_primary_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.typ) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (xs : (Syntax.typeable list))), _, (c : (Syntax.typ))) = _menhir_stack in
        let _v =
          let d = 
# 229 "<standard.mly>"
    ( xs )
# 3332 "parser.ml"
           in
          (
# 196 "parser.mly"
                                                                            ( { domain = d; codomain = c } )
# 3337 "parser.ml"
           : (Syntax.func_typ))
        in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (a : (Syntax.func_typ)) = _v in
        let _v : (Syntax.typ) = 
# 188 "parser.mly"
                 ( Func a )
# 3346 "parser.ml"
         in
        _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (Syntax.typ))) = _menhir_stack in
        let _v : (Syntax.typ option) = 
# 113 "<standard.mly>"
    ( Some x )
# 3356 "parser.ml"
         in
        _menhir_goto_option_typ_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CONST ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | DO ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | FUNCTION ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | IF ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | INTERFACE ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | LBRACE ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | LET ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | LPAREN ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | NUM _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | RETURN ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | STR _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | RBRACE ->
                _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.id) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LBRACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LPAREN ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NUMBER ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | STRING ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | VOID ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | ASSIGN | COMMA | RPAREN | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState24 in
        let _v : (Syntax.typ option) = 
# 111 "<standard.mly>"
    ( None )
# 3443 "parser.ml"
         in
        _menhir_goto_option_typ_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | RPAREN ->
        _menhir_reduce50 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState9 in
        let _v : (Syntax.prop list) = 
# 139 "<standard.mly>"
    ( [] )
# 3496 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_prop__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_goto_lit : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.lit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState204 | MenhirState2 | MenhirState6 | MenhirState7 | MenhirState8 | MenhirState16 | MenhirState17 | MenhirState169 | MenhirState162 | MenhirState154 | MenhirState149 | MenhirState147 | MenhirState145 | MenhirState143 | MenhirState141 | MenhirState139 | MenhirState137 | MenhirState135 | MenhirState133 | MenhirState127 | MenhirState123 | MenhirState104 | MenhirState94 | MenhirState89 | MenhirState81 | MenhirState50 | MenhirState66 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState70 | MenhirState68 | MenhirState62 | MenhirState64 | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (n : (Syntax.lit)) = _v in
        let _v : (Syntax.expr) = 
# 121 "parser.mly"
            ( Lit n )
# 3514 "parser.ml"
         in
        _menhir_goto_primary_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 | MenhirState202 | MenhirState208 | MenhirState206 | MenhirState88 | MenhirState93 | MenhirState99 | MenhirState183 | MenhirState106 | MenhirState114 | MenhirState177 | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (n : (Syntax.lit)) = _v in
        let _v : (Syntax.expr) = 
# 114 "parser.mly"
            ( Lit n )
# 3524 "parser.ml"
         in
        _menhir_goto_primary_no_obj_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_decl_kind : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.decl_kind) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState208 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState206 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState204 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState202 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState177 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState169 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState167 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState162 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState154 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState149 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState147 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState145 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState143 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState139 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState137 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState135 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState133 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState130 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState127 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState2 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Syntax.stmt list) = 
# 208 "<standard.mly>"
    ( [] )
# 3804 "parser.ml"
     in
    _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.lit) = 
# 162 "parser.mly"
         ( Bool true )
# 3855 "parser.ml"
     in
    _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "parser.mly"
       (string)
# 3862 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 18 "parser.mly"
       (string)
# 3870 "parser.ml"
    )) = _v in
    let _v : (Syntax.lit) = 
# 161 "parser.mly"
            ( Str x )
# 3875 "parser.ml"
     in
    _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v

and _menhir_run94 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState94 in
        let _v : (Syntax.expr option) = 
# 111 "<standard.mly>"
    ( None )
# 3909 "parser.ml"
         in
        _menhir_goto_option_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
       (float)
# 3920 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 17 "parser.mly"
       (float)
# 3928 "parser.ml"
    )) = _v in
    let _v : (Syntax.lit) = 
# 160 "parser.mly"
            ( Num n )
# 3933 "parser.ml"
     in
    _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run89 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | LBRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | RPAREN ->
        _menhir_reduce50 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89

and _menhir_run98 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.decl_kind) = 
# 73 "parser.mly"
        ( Let )
# 4025 "parser.ml"
     in
    _menhir_goto_decl_kind _menhir_env _menhir_stack _menhir_s _v

and _menhir_run99 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONST ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | DO ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | FUNCTION ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | IF ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | INTERFACE ->
        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | LBRACE ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | LET ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | LPAREN ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | RETURN ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | RBRACE ->
        _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99

and _menhir_run100 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100

and _menhir_run103 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | MINUS ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | NUM _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | STR _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
       (string)
# 4132 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 16 "parser.mly"
       (string)
# 4140 "parser.ml"
    )) = _v in
    let _v : (Syntax.id) = 
# 34 "parser.mly"
           ( { name = n } )
# 4145 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
            | LBRACE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | NUM _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
            | STR _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState109 | MenhirState167 | MenhirState28 | MenhirState33 | MenhirState38 | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState112 | MenhirState24 | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (a : (Syntax.id))) = _menhir_stack in
        let _v : (Syntax.typ) = 
# 189 "parser.mly"
           ( Interface a )
# 4207 "parser.ml"
         in
        _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState204 | MenhirState2 | MenhirState6 | MenhirState7 | MenhirState8 | MenhirState16 | MenhirState169 | MenhirState162 | MenhirState154 | MenhirState149 | MenhirState147 | MenhirState145 | MenhirState143 | MenhirState141 | MenhirState139 | MenhirState137 | MenhirState135 | MenhirState133 | MenhirState127 | MenhirState123 | MenhirState104 | MenhirState94 | MenhirState81 | MenhirState50 | MenhirState66 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState70 | MenhirState68 | MenhirState62 | MenhirState64 | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce71 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (b : (Syntax.id))) = _menhir_stack in
        let _v : (Syntax.member) = 
# 175 "parser.mly"
                                    ( { obj = a ; property = b } )
# 4220 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (n : (Syntax.member)) = _v in
        let _v : (Syntax.expr) = 
# 123 "parser.mly"
               ( Member n )
# 4228 "parser.ml"
         in
        _menhir_goto_primary_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState17 | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | AND | DIV | DOT | EQUALS | GREATER | LESS | LPAREN | MINUS | OR | PLUS | RPAREN | TIMES ->
            _menhir_reduce71 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101)
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | RPAREN ->
                _menhir_reduce50 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState130 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (a : (Syntax.expr))), _, (b : (Syntax.id))) = _menhir_stack in
        let _v : (Syntax.member) = 
# 172 "parser.mly"
                                           ( { obj = a ; property = b } )
# 4288 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState0 | MenhirState202 | MenhirState208 | MenhirState206 | MenhirState93 | MenhirState99 | MenhirState183 | MenhirState106 | MenhirState114 | MenhirState177 | MenhirState115 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ASSIGN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | FALSE ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState154
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
                | LBRACE ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState154
                | LPAREN ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState154
                | MINUS ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState154
                | NOT ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState154
                | NUM _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
                | STR _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
                | TRUE ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState154
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154)
            | AND | DIV | DOT | EQUALS | GREATER | LESS | LPAREN | MINUS | OR | PLUS | SEMICOLON | TIMES ->
                _menhir_reduce79 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState88 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            _menhir_reduce79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            _menhir_fail ())
    | MenhirState0 | MenhirState202 | MenhirState208 | MenhirState206 | MenhirState93 | MenhirState99 | MenhirState183 | MenhirState106 | MenhirState114 | MenhirState177 | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | LBRACE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | NUM _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | STR _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162)
        | AND | DIV | DOT | EQUALS | GREATER | LESS | LPAREN | MINUS | OR | PLUS | SEMICOLON | TIMES ->
            _menhir_reduce77 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce77 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        _menhir_fail ()

and _menhir_run107 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.lit) = 
# 163 "parser.mly"
          ( Bool false )
# 4403 "parser.ml"
     in
    _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v

and _menhir_run115 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONST ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | DO ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | FUNCTION ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
    | IF ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | INTERFACE ->
        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | LBRACE ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | LET ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | LPAREN ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
    | RETURN ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115

and _menhir_run116 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.decl_kind) = 
# 74 "parser.mly"
          ( Const )
# 4459 "parser.ml"
     in
    _menhir_goto_decl_kind _menhir_env _menhir_stack _menhir_s _v

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.prog) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONST ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DO ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUNCTION ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INTERFACE ->
        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LBRACE ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NUM _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | RETURN ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | STR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)
