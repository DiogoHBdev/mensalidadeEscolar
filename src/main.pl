:- ['kb.pl', 'rules.pl', 'ui.pl', 'explain.pl'].

start :-
  banner, menu.

banner :-
  format("~n=== Sistema Especialista - Calculo de Mensalidade Escolar ===~n"),
  format("Desenvolvido por: <Aluno(s): Diogo Horstmann Bezerra e Alisson Sommer Massaneiro> (@github/handle)~n~n").

menu :-
  format("1) Calcular mensalidade~n2) Sair~n> "),
  read(Opt),
  ( Opt = 1 -> run_case, cleanup, menu
  ; Opt = 2 -> format("Saindo...~n")
  ; format("Opcao invalida.~n"), menu ).

run_case :-
  coletar_observacoes,
  ( mensalidade(Result) ->
      explicar(Result),
      format("~nVALOR FINAL: R$ ~2f~n", [Result])
  ; format("~nNao foi possivel calcular a mensalidade.~n") ).
