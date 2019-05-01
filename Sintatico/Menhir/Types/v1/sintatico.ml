
exception Error

let _eRR =
  Error

type token = 
  | VIRG
  | STRING of (
# 7 "sintatico.mly"
       (string)
# 13 "sintatico.ml"
)
  | SENAO
  | SE
  | SAIDA
  | REGISTRO
  | PTV
  | PTO
  | PROGRAMA
  | PPTO
  | OULOG
  | MULT
  | MENOS
  | MENOR
  | MAIS
  | MAIOR
  | INTEIRO
  | INT of (
# 5 "sintatico.mly"
       (int)
# 33 "sintatico.ml"
)
  | INICIO
  | IGUAL
  | ID of (
# 6 "sintatico.mly"
       (string)
# 40 "sintatico.ml"
)
  | FPAR
  | FIM
  | FCOL
  | EOF
  | ENTRADA
  | ENTAO
  | ELOG
  | DPTOS
  | DIV
  | DIFER
  | DE
  | CONCAT
  | CADEIA
  | BOOLEANO
  | BOOL of (
# 8 "sintatico.mly"
       (bool)
# 59 "sintatico.ml"
)
  | ATRIB
  | ARRANJO
  | APAR
  | ACOL

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState105
  | MenhirState103
  | MenhirState94
  | MenhirState88
  | MenhirState84
  | MenhirState80
  | MenhirState76
  | MenhirState74
  | MenhirState73
  | MenhirState66
  | MenhirState64
  | MenhirState62
  | MenhirState60
  | MenhirState58
  | MenhirState56
  | MenhirState54
  | MenhirState52
  | MenhirState50
  | MenhirState48
  | MenhirState46
  | MenhirState44
  | MenhirState40
  | MenhirState35
  | MenhirState33
  | MenhirState26
  | MenhirState20
  | MenhirState9
  | MenhirState7
  | MenhirState6
  | MenhirState3
  | MenhirState1

# 1 "sintatico.mly"
  
open Ast

# 110 "sintatico.ml"

let rec _menhir_goto_option___anonymous_1_ : _menhir_env -> 'ttv_tail -> 'tv_option___anonymous_1_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((((('freshtv427 * _menhir_state)) * _menhir_state * 'tv_expressao))) * _menhir_state * 'tv_nonempty_list_comando_) * 'tv_option___anonymous_1_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FIM ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv423 * _menhir_state)) * _menhir_state * 'tv_expressao))) * _menhir_state * 'tv_nonempty_list_comando_) * 'tv_option___anonymous_1_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv419 * _menhir_state)) * _menhir_state * 'tv_expressao))) * _menhir_state * 'tv_nonempty_list_comando_) * 'tv_option___anonymous_1_)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PTV ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv415 * _menhir_state)) * _menhir_state * 'tv_expressao))) * _menhir_state * 'tv_nonempty_list_comando_) * 'tv_option___anonymous_1_))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv413 * _menhir_state)) * _menhir_state * 'tv_expressao))) * _menhir_state * 'tv_nonempty_list_comando_) * 'tv_option___anonymous_1_))) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, teste), _, entao), senao) = _menhir_stack in
                let _10 = () in
                let _9 = () in
                let _8 = () in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_comando_se = 
# 84 "sintatico.mly"
                        (
               CmdSe (teste, entao, senao)
            )
# 151 "sintatico.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv411) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_comando_se) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv409) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_comando_se) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv407) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (c : 'tv_comando_se) = _v in
                ((let _v : 'tv_comando = 
# 73 "sintatico.mly"
                                 ( c )
# 168 "sintatico.ml"
                 in
                _menhir_goto_comando _menhir_env _menhir_stack _menhir_s _v) : 'freshtv408)) : 'freshtv410)) : 'freshtv412)) : 'freshtv414)) : 'freshtv416)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv417 * _menhir_state)) * _menhir_state * 'tv_expressao))) * _menhir_state * 'tv_nonempty_list_comando_) * 'tv_option___anonymous_1_))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv418)) : 'freshtv420)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv421 * _menhir_state)) * _menhir_state * 'tv_expressao))) * _menhir_state * 'tv_nonempty_list_comando_) * 'tv_option___anonymous_1_)) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv422)) : 'freshtv424)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv425 * _menhir_state)) * _menhir_state * 'tv_expressao))) * _menhir_state * 'tv_nonempty_list_comando_) * 'tv_option___anonymous_1_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv426)) : 'freshtv428)

and _menhir_goto_nonempty_list_comando_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_comando_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv397 * _menhir_state)) * _menhir_state * 'tv_expressao))) * _menhir_state * 'tv_nonempty_list_comando_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SENAO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv391) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENTRADA ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | SAIDA ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | SE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv392)
        | FIM ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv393) = Obj.magic _menhir_stack in
            ((let _v : 'tv_option___anonymous_1_ = 
# 101 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( None )
# 227 "sintatico.ml"
             in
            _menhir_goto_option___anonymous_1_ _menhir_env _menhir_stack _v) : 'freshtv394)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv395 * _menhir_state)) * _menhir_state * 'tv_expressao))) * _menhir_state * 'tv_nonempty_list_comando_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)) : 'freshtv398)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv401) * _menhir_state * 'tv_nonempty_list_comando_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv399) * _menhir_state * 'tv_nonempty_list_comando_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, cs0) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_option___anonymous_1_ = let x =
          let cs = cs0 in
          let _1 = _10 in
          
# 83 "sintatico.mly"
                                              (cs)
# 250 "sintatico.ml"
          
        in
        
# 103 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 256 "sintatico.ml"
         in
        _menhir_goto_option___anonymous_1_ _menhir_env _menhir_stack _v) : 'freshtv400)) : 'freshtv402)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv405 * _menhir_state * 'tv_comando) * _menhir_state * 'tv_nonempty_list_comando_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * _menhir_state * 'tv_comando) * _menhir_state * 'tv_nonempty_list_comando_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_nonempty_list_comando_ = 
# 198 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 268 "sintatico.ml"
         in
        _menhir_goto_nonempty_list_comando_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)) : 'freshtv406)
    | _ ->
        _menhir_fail ()

and _menhir_goto_comando : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_comando -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState73 | MenhirState94 | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_comando) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ENTRADA ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | SAIDA ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | SE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | FIM | SENAO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385 * _menhir_state * 'tv_comando) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_nonempty_list_comando_ = 
# 196 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 299 "sintatico.ml"
             in
            _menhir_goto_nonempty_list_comando_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv388)
    | MenhirState103 | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_comando) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ENTRADA ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | SAIDA ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | SE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | FIM ->
            _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv390)
    | _ ->
        _menhir_fail ()

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expressao -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | BOOL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | INT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | STRING _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expressao -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | BOOL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | INT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | STRING _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expressao -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | BOOL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | INT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | STRING _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run52 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expressao -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | BOOL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | INT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | STRING _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expressao -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | BOOL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | INT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | STRING _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expressao -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | BOOL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | INT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | STRING _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expressao -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | BOOL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | INT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | STRING _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expressao -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | BOOL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | INT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | STRING _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expressao -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | BOOL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | INT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | STRING _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expressao -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | BOOL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | INT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | STRING _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_run66 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expressao -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | BOOL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | INT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | STRING _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66

and _menhir_goto_nonempty_list___anonymous_0_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list___anonymous_0_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv365 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 558 "sintatico.ml"
        ))) * _menhir_state * 'tv_tipo)) * _menhir_state * 'tv_nonempty_list___anonymous_0_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv363 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 564 "sintatico.ml"
        ))) * _menhir_state * 'tv_tipo)) * _menhir_state * 'tv_nonempty_list___anonymous_0_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, id0), _, tp0), _, xs) = _menhir_stack in
        let _40 = () in
        let _20 = () in
        let _v : 'tv_nonempty_list___anonymous_0_ = let x =
          let _4 = _40 in
          let tp = tp0 in
          let _2 = _20 in
          let id = id0 in
          
# 67 "sintatico.mly"
                                                  ( (id,tp) )
# 577 "sintatico.ml"
          
        in
        
# 198 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 583 "sintatico.ml"
         in
        _menhir_goto_nonempty_list___anonymous_0_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)) : 'freshtv366)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv383 * _menhir_state) * _menhir_state * 'tv_nonempty_list___anonymous_0_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FIM ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv379 * _menhir_state) * _menhir_state * 'tv_nonempty_list___anonymous_0_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | REGISTRO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv375 * _menhir_state) * _menhir_state * 'tv_nonempty_list___anonymous_0_)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv373 * _menhir_state) * _menhir_state * 'tv_nonempty_list___anonymous_0_)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, campos) = _menhir_stack in
                let _4 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_tipo_registro = 
# 68 "sintatico.mly"
               ( TipoRegistro campos )
# 611 "sintatico.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv371) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_tipo_registro) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv369) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_tipo_registro) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv367) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (t : 'tv_tipo_registro) = _v in
                ((let _v : 'tv_tipo = 
# 52 "sintatico.mly"
                      ( t )
# 628 "sintatico.ml"
                 in
                _menhir_goto_tipo _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)) : 'freshtv370)) : 'freshtv372)) : 'freshtv374)) : 'freshtv376)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv377 * _menhir_state) * _menhir_state * 'tv_nonempty_list___anonymous_0_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv381 * _menhir_state) * _menhir_state * 'tv_nonempty_list___anonymous_0_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_VIRG_variavel_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VIRG_variavel_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv333 * _menhir_state * 'tv_variavel)) * _menhir_state * 'tv_separated_nonempty_list_VIRG_variavel_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state * 'tv_variavel)) * _menhir_state * 'tv_separated_nonempty_list_VIRG_variavel_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_VIRG_variavel_ = 
# 218 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 662 "sintatico.ml"
         in
        _menhir_goto_separated_nonempty_list_VIRG_variavel_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)) : 'freshtv334)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv347 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_VIRG_variavel_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv343 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_VIRG_variavel_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv341 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_VIRG_variavel_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, xs) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_comando_saida = 
# 96 "sintatico.mly"
                                                        (
             CmdSaida xs
   )
# 685 "sintatico.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv339) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_comando_saida) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv337) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_comando_saida) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv335) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (c : 'tv_comando_saida) = _v in
            ((let _v : 'tv_comando = 
# 75 "sintatico.mly"
                                 ( c )
# 702 "sintatico.ml"
             in
            _menhir_goto_comando _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)) : 'freshtv338)) : 'freshtv340)) : 'freshtv342)) : 'freshtv344)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv345 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_VIRG_variavel_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)) : 'freshtv348)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv361 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_VIRG_variavel_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv357 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_VIRG_variavel_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv355 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_VIRG_variavel_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, xs) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_comando_entrada = 
# 91 "sintatico.mly"
                                                          (
             CmdEntrada xs
   )
# 732 "sintatico.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv353) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_comando_entrada) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv351) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_comando_entrada) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv349) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (c : 'tv_comando_entrada) = _v in
            ((let _v : 'tv_comando = 
# 74 "sintatico.mly"
                                 ( c )
# 749 "sintatico.ml"
             in
            _menhir_goto_comando _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)) : 'freshtv352)) : 'freshtv354)) : 'freshtv356)) : 'freshtv358)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv359 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_VIRG_variavel_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv360)) : 'freshtv362)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expressao : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expressao -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv231 * _menhir_state * 'tv_variavel)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | FCOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv227 * _menhir_state * 'tv_variavel)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv225 * _menhir_state * 'tv_variavel)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, v), _, e) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_variavel = 
# 124 "sintatico.mly"
                                           ( VarElemento (v,e) )
# 792 "sintatico.ml"
             in
            _menhir_goto_variavel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)) : 'freshtv228)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv229 * _menhir_state * 'tv_variavel)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | FCOL | FPAR | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv233 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expressao = let op =
              let _1 = _10 in
              
# 118 "sintatico.mly"
                ( Ou    )
# 854 "sintatico.ml"
              
            in
            
# 105 "sintatico.mly"
                                             ( ExpOp (op, e1, e2) )
# 860 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv235 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | FCOL | FPAR | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expressao = let op =
              let _1 = _10 in
              
# 111 "sintatico.mly"
                ( Mult  )
# 908 "sintatico.ml"
              
            in
            
# 105 "sintatico.mly"
                                             ( ExpOp (op, e1, e2) )
# 914 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)) : 'freshtv244)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | FCOL | FPAR | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expressao = let op =
              let _1 = _10 in
              
# 110 "sintatico.mly"
                ( Menos )
# 962 "sintatico.ml"
              
            in
            
# 105 "sintatico.mly"
                                             ( ExpOp (op, e1, e2) )
# 968 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | FCOL | FPAR | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expressao = let op =
              let _1 = _10 in
              
# 113 "sintatico.mly"
                ( Menor )
# 1016 "sintatico.ml"
              
            in
            
# 105 "sintatico.mly"
                                             ( ExpOp (op, e1, e2) )
# 1022 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | FCOL | FPAR | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expressao = let op =
              let _1 = _10 in
              
# 109 "sintatico.mly"
                ( Mais  )
# 1070 "sintatico.ml"
              
            in
            
# 105 "sintatico.mly"
                                             ( ExpOp (op, e1, e2) )
# 1076 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv259 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | FCOL | FPAR | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expressao = let op =
              let _1 = _10 in
              
# 116 "sintatico.mly"
                ( Maior )
# 1124 "sintatico.ml"
              
            in
            
# 105 "sintatico.mly"
                                             ( ExpOp (op, e1, e2) )
# 1130 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv273 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | FCOL | FPAR | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expressao = let op =
              let _1 = _10 in
              
# 114 "sintatico.mly"
                ( Igual )
# 1178 "sintatico.ml"
              
            in
            
# 105 "sintatico.mly"
                                             ( ExpOp (op, e1, e2) )
# 1184 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | FCOL | FPAR | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expressao = let op =
              let _1 = _10 in
              
# 117 "sintatico.mly"
                ( E     )
# 1232 "sintatico.ml"
              
            in
            
# 105 "sintatico.mly"
                                             ( ExpOp (op, e1, e2) )
# 1238 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv276)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)) : 'freshtv280)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | FCOL | FPAR | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expressao = let op =
              let _1 = _10 in
              
# 112 "sintatico.mly"
                ( Div   )
# 1286 "sintatico.ml"
              
            in
            
# 105 "sintatico.mly"
                                             ( ExpOp (op, e1, e2) )
# 1292 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)) : 'freshtv286)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | FCOL | FPAR | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expressao = let op =
              let _1 = _10 in
              
# 115 "sintatico.mly"
                ( Difer )
# 1340 "sintatico.ml"
              
            in
            
# 105 "sintatico.mly"
                                             ( ExpOp (op, e1, e2) )
# 1346 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv297 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | FCOL | FPAR | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv293 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expressao = let op =
              let _1 = _10 in
              
# 119 "sintatico.mly"
                   ( Concat   )
# 1394 "sintatico.ml"
              
            in
            
# 105 "sintatico.mly"
                                             ( ExpOp (op, e1, e2) )
# 1400 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv295 * _menhir_state * 'tv_expressao)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv305 * _menhir_state) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | FPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv301 * _menhir_state) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv299 * _menhir_state) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expressao = 
# 106 "sintatico.mly"
                                 ( e )
# 1436 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)) : 'freshtv302)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv303 * _menhir_state) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv315 * _menhir_state)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | FPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENTAO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv307 * _menhir_state)) * _menhir_state * 'tv_expressao)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ENTRADA ->
                    _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | ID _v ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
                | SAIDA ->
                    _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | SE ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv308)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv309 * _menhir_state)) * _menhir_state * 'tv_expressao)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv313 * _menhir_state)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv329 * _menhir_state * 'tv_variavel)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIFER ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | ELOG ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | OULOG ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv325 * _menhir_state * 'tv_variavel)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv323 * _menhir_state * 'tv_variavel)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, v), _, e) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_comando_atribuicao = 
# 77 "sintatico.mly"
                                                     (
      CmdAtrib (v,e)
)
# 1568 "sintatico.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv321) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_comando_atribuicao) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv319) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_comando_atribuicao) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv317) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (c : 'tv_comando_atribuicao) = _v in
            ((let _v : 'tv_comando = 
# 72 "sintatico.mly"
                              ( c )
# 1585 "sintatico.ml"
             in
            _menhir_goto_comando _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)) : 'freshtv320)) : 'freshtv322)) : 'freshtv324)) : 'freshtv326)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327 * _menhir_state * 'tv_variavel)) * _menhir_state * 'tv_expressao) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)
    | _ ->
        _menhir_fail ()

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_variavel -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state * 'tv_variavel)) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "sintatico.mly"
       (string)
# 1609 "sintatico.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state * 'tv_variavel)) = Obj.magic _menhir_stack in
        let (x : (
# 6 "sintatico.mly"
       (string)
# 1617 "sintatico.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, v) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_variavel = 
# 123 "sintatico.mly"
                              ( VarCampo (v,x) )
# 1624 "sintatico.ml"
         in
        _menhir_goto_variavel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv220)) : 'freshtv222)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state * 'tv_variavel)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)

and _menhir_run44 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_variavel -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | BOOL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | INT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | STRING _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_goto_tipo : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_tipo -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv201 * _menhir_state)) * 'tv_limites))) * _menhir_state * 'tv_tipo) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv199 * _menhir_state)) * 'tv_limites))) * _menhir_state * 'tv_tipo) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), lim), _, tp) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_tipo_arranjo = 
# 60 "sintatico.mly"
                                                       (
                let (inicio, fim) = lim in
                TipoArranjo (tp, inicio, fim)
            )
# 1675 "sintatico.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_tipo_arranjo) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_tipo_arranjo) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (t : 'tv_tipo_arranjo) = _v in
        ((let _v : 'tv_tipo = 
# 51 "sintatico.mly"
                      ( t )
# 1692 "sintatico.ml"
         in
        _menhir_goto_tipo _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)) : 'freshtv196)) : 'freshtv198)) : 'freshtv200)) : 'freshtv202)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv209 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 1700 "sintatico.ml"
        ))) * _menhir_state * 'tv_tipo) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv205 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 1710 "sintatico.ml"
            ))) * _menhir_state * 'tv_tipo) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | FIM ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv203 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 1722 "sintatico.ml"
                ))) * _menhir_state * 'tv_tipo)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, id0), _, tp0) = _menhir_stack in
                let _40 = () in
                let _20 = () in
                let _v : 'tv_nonempty_list___anonymous_0_ = let x =
                  let _4 = _40 in
                  let tp = tp0 in
                  let _2 = _20 in
                  let id = id0 in
                  
# 67 "sintatico.mly"
                                                  ( (id,tp) )
# 1735 "sintatico.ml"
                  
                in
                
# 196 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 1741 "sintatico.ml"
                 in
                _menhir_goto_nonempty_list___anonymous_0_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv207 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 1755 "sintatico.ml"
            ))) * _menhir_state * 'tv_tipo) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)) : 'freshtv210)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv217 * _menhir_state * 'tv_separated_nonempty_list_VIRG_ID_)) * _menhir_state * 'tv_tipo) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state * 'tv_separated_nonempty_list_VIRG_ID_)) * _menhir_state * 'tv_tipo) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, ids), _, t) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_declaracao = 
# 46 "sintatico.mly"
                                                                   (
                   List.map (fun id -> DecVar (id,t)) ids
          )
# 1771 "sintatico.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv213) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_declaracao) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_declaracao) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | INICIO ->
            _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv212)) : 'freshtv214)) : 'freshtv216)) : 'freshtv218)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_comando_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_comando_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv187) * _menhir_state * 'tv_list_declaracao_)) * _menhir_state * 'tv_list_comando_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FIM ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv183) * _menhir_state * 'tv_list_declaracao_)) * _menhir_state * 'tv_list_comando_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv179) * _menhir_state * 'tv_list_declaracao_)) * _menhir_state * 'tv_list_comando_)) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv177) * _menhir_state * 'tv_list_declaracao_)) * _menhir_state * 'tv_list_comando_)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _, ds), _, cs) = _menhir_stack in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (
# 35 "sintatico.mly"
       (Ast.programa)
# 1823 "sintatico.ml"
                ) = 
# 44 "sintatico.mly"
              ( Programa (List.flatten ds, cs) )
# 1827 "sintatico.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv175) = _menhir_stack in
                let (_v : (
# 35 "sintatico.mly"
       (Ast.programa)
# 1834 "sintatico.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv173) = Obj.magic _menhir_stack in
                let (_v : (
# 35 "sintatico.mly"
       (Ast.programa)
# 1841 "sintatico.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv171) = Obj.magic _menhir_stack in
                let (_1 : (
# 35 "sintatico.mly"
       (Ast.programa)
# 1848 "sintatico.ml"
                )) = _v in
                (Obj.magic _1 : 'freshtv172)) : 'freshtv174)) : 'freshtv176)) : 'freshtv178)) : 'freshtv180)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv181) * _menhir_state * 'tv_list_declaracao_)) * _menhir_state * 'tv_list_comando_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv185) * _menhir_state * 'tv_list_declaracao_)) * _menhir_state * 'tv_list_comando_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)) : 'freshtv188)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state * 'tv_comando) * _menhir_state * 'tv_list_comando_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state * 'tv_comando) * _menhir_state * 'tv_list_comando_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_list_comando_ = 
# 188 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 1874 "sintatico.ml"
         in
        _menhir_goto_list_comando_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)) : 'freshtv192)
    | _ ->
        _menhir_fail ()

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "sintatico.mly"
       (string)
# 1883 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv169) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (s : (
# 7 "sintatico.mly"
       (string)
# 1893 "sintatico.ml"
    )) = _v in
    ((let _v : 'tv_expressao = 
# 103 "sintatico.mly"
                      ( ExpString s )
# 1898 "sintatico.ml"
     in
    _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "sintatico.mly"
       (int)
# 1905 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 5 "sintatico.mly"
       (int)
# 1915 "sintatico.ml"
    )) = _v in
    ((let _v : 'tv_expressao = 
# 102 "sintatico.mly"
                      ( ExpInt i    )
# 1920 "sintatico.ml"
     in
    _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "sintatico.mly"
       (bool)
# 1927 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (b : (
# 8 "sintatico.mly"
       (bool)
# 1937 "sintatico.ml"
    )) = _v in
    ((let _v : 'tv_expressao = 
# 104 "sintatico.mly"
                      ( ExpBool b   )
# 1942 "sintatico.ml"
     in
    _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | BOOL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | INT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | STRING _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_goto_variavel : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_variavel -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState84 | MenhirState35 | MenhirState66 | MenhirState64 | MenhirState62 | MenhirState60 | MenhirState58 | MenhirState56 | MenhirState54 | MenhirState52 | MenhirState50 | MenhirState48 | MenhirState46 | MenhirState44 | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * 'tv_variavel) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ACOL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | PTO ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT | DIFER | DIV | ELOG | FCOL | FPAR | IGUAL | MAIOR | MAIS | MENOR | MENOS | MULT | OULOG | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv145 * _menhir_state * 'tv_variavel) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, v) = _menhir_stack in
            let _v : 'tv_expressao = 
# 101 "sintatico.mly"
                      ( ExpVar v    )
# 1988 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv147 * _menhir_state * 'tv_variavel) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)) : 'freshtv150)
    | MenhirState80 | MenhirState76 | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state * 'tv_variavel) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ACOL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | PTO ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | VIRG ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_variavel) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv152)
        | PTV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_variavel) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_VIRG_variavel_ = 
# 216 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2027 "sintatico.ml"
             in
            _menhir_goto_separated_nonempty_list_VIRG_variavel_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv155 * _menhir_state * 'tv_variavel) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)) : 'freshtv158)
    | MenhirState103 | MenhirState33 | MenhirState94 | MenhirState88 | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state * 'tv_variavel) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ACOL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | ATRIB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv159 * _menhir_state * 'tv_variavel) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | APAR ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | BOOL _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
            | INT _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
            | STRING _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv160)
        | PTO ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv161 * _menhir_state * 'tv_variavel) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)) : 'freshtv164)
    | _ ->
        _menhir_fail ()

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "sintatico.mly"
       (string)
# 2080 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DPTOS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 2092 "sintatico.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRANJO ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | BOOLEANO ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | CADEIA ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | INTEIRO ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | REGISTRO ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv142)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 2118 "sintatico.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)

and _menhir_goto_tipo_simples : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_tipo_simples -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_tipo_simples) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv137) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (t : 'tv_tipo_simples) = _v in
    ((let _v : 'tv_tipo = 
# 50 "sintatico.mly"
                      ( t )
# 2136 "sintatico.ml"
     in
    _menhir_goto_tipo _menhir_env _menhir_stack _menhir_s _v) : 'freshtv138)) : 'freshtv140)

and _menhir_reduce27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_comando_ = 
# 186 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2145 "sintatico.ml"
     in
    _menhir_goto_list_comando_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | APAR ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | BOOL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | INT _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | STRING _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv134)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)

and _menhir_run74 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "sintatico.mly"
       (string)
# 2199 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv131) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (x : (
# 6 "sintatico.mly"
       (string)
# 2209 "sintatico.ml"
    )) = _v in
    ((let _v : 'tv_variavel = 
# 122 "sintatico.mly"
                     ( VarSimples x )
# 2214 "sintatico.ml"
     in
    _menhir_goto_variavel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv132)

and _menhir_run80 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv129) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_tipo_simples = 
# 55 "sintatico.mly"
                       ( TipoInt    )
# 2259 "sintatico.ml"
     in
    _menhir_goto_tipo_simples _menhir_env _menhir_stack _menhir_s _v) : 'freshtv130)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv127) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_tipo_simples = 
# 56 "sintatico.mly"
                        ( TipoString )
# 2273 "sintatico.ml"
     in
    _menhir_goto_tipo_simples _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_tipo_simples = 
# 57 "sintatico.mly"
                        ( TipoBool   )
# 2287 "sintatico.ml"
     in
    _menhir_goto_tipo_simples _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ACOL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117) = Obj.magic _menhir_stack in
            let (_v : (
# 5 "sintatico.mly"
       (int)
# 2309 "sintatico.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PPTO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv113 * (
# 5 "sintatico.mly"
       (int)
# 2320 "sintatico.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | INT _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv109 * (
# 5 "sintatico.mly"
       (int)
# 2330 "sintatico.ml"
                    ))) = Obj.magic _menhir_stack in
                    let (_v : (
# 5 "sintatico.mly"
       (int)
# 2335 "sintatico.ml"
                    )) = _v in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv107 * (
# 5 "sintatico.mly"
       (int)
# 2342 "sintatico.ml"
                    ))) = Obj.magic _menhir_stack in
                    let (fim : (
# 5 "sintatico.mly"
       (int)
# 2347 "sintatico.ml"
                    )) = _v in
                    ((let (_menhir_stack, inicio) = _menhir_stack in
                    let _2 = () in
                    let _v : 'tv_limites = 
# 70 "sintatico.mly"
                                 ( (inicio, fim) )
# 2354 "sintatico.ml"
                     in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv105) = _menhir_stack in
                    let (_v : 'tv_limites) = _v in
                    ((let _menhir_stack = (_menhir_stack, _v) in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv103 * _menhir_state)) * 'tv_limites) = Obj.magic _menhir_stack in
                    ((assert (not _menhir_env._menhir_error);
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | FCOL ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (('freshtv99 * _menhir_state)) * 'tv_limites) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | DE ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((('freshtv95 * _menhir_state)) * 'tv_limites)) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | ARRANJO ->
                                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                            | BOOLEANO ->
                                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                            | CADEIA ->
                                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                            | INTEIRO ->
                                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                            | REGISTRO ->
                                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv96)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((('freshtv97 * _menhir_state)) * 'tv_limites)) = Obj.magic _menhir_stack in
                            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)) : 'freshtv100)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (('freshtv101 * _menhir_state)) * 'tv_limites) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)) : 'freshtv106)) : 'freshtv108)) : 'freshtv110)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv111 * (
# 5 "sintatico.mly"
       (int)
# 2412 "sintatico.ml"
                    ))) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv112)) : 'freshtv114)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv115 * (
# 5 "sintatico.mly"
       (int)
# 2422 "sintatico.ml"
                )) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv116)) : 'freshtv118)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv119 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)) : 'freshtv122)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)

and _menhir_goto_list_declaracao_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_declaracao_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89) * _menhir_state * 'tv_list_declaracao_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INICIO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv85) * _menhir_state * 'tv_list_declaracao_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENTRADA ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | SAIDA ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | SE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | FIM ->
                _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv86)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv87) * _menhir_state * 'tv_list_declaracao_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)) : 'freshtv90)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_declaracao) * _menhir_state * 'tv_list_declaracao_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_declaracao) * _menhir_state * 'tv_list_declaracao_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_list_declaracao_ = 
# 188 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2486 "sintatico.ml"
         in
        _menhir_goto_list_declaracao_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv92)) : 'freshtv94)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_VIRG_ID_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VIRG_ID_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv77 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 2501 "sintatico.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_VIRG_ID_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv75 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 2507 "sintatico.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_VIRG_ID_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_VIRG_ID_ = 
# 218 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2514 "sintatico.ml"
         in
        _menhir_goto_separated_nonempty_list_VIRG_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv76)) : 'freshtv78)
    | MenhirState105 | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state * 'tv_separated_nonempty_list_VIRG_ID_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DPTOS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv79 * _menhir_state * 'tv_separated_nonempty_list_VIRG_ID_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRANJO ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState6
            | BOOLEANO ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState6
            | CADEIA ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6
            | INTEIRO ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6
            | REGISTRO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv80)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv81 * _menhir_state * 'tv_separated_nonempty_list_VIRG_ID_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)) : 'freshtv84)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state * 'tv_declaracao) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state * 'tv_comando) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * 'tv_comando) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv20)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * 'tv_variavel)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state * 'tv_variavel)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv29 * _menhir_state)) * _menhir_state * 'tv_expressao))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * 'tv_expressao)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * 'tv_expressao)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state * 'tv_expressao)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * 'tv_expressao)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state * 'tv_expressao)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_expressao)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_expressao)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_expressao)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * 'tv_expressao)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_expressao)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_expressao)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_variavel)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59) * _menhir_state * 'tv_list_declaracao_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv61 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 2680 "sintatico.ml"
        ))) * _menhir_state * 'tv_tipo)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv63 * _menhir_state)) * 'tv_limites))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 2694 "sintatico.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_separated_nonempty_list_VIRG_ID_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 2713 "sintatico.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv74)

and _menhir_reduce29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_declaracao_ = 
# 186 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2727 "sintatico.ml"
     in
    _menhir_goto_list_declaracao_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "sintatico.mly"
       (string)
# 2734 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VIRG ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 2746 "sintatico.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv8)
    | DPTOS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 2762 "sintatico.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_VIRG_ID_ = 
# 216 "/home/alex/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2768 "sintatico.ml"
         in
        _menhir_goto_separated_nonempty_list_VIRG_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 6 "sintatico.mly"
       (string)
# 2778 "sintatico.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)

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

and programa : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 35 "sintatico.mly"
       (Ast.programa)
# 2798 "sintatico.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PROGRAMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | INICIO ->
            _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1) : 'freshtv2)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv4)) : 'freshtv6))

# 220 "/home/alex/.opam/system/lib/menhir/standard.mly"
  


# 2842 "sintatico.ml"
