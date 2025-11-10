:- dynamic obs/1.

coletar_observacoes :-
  format("Nivel de ensino (educacao_infantil/fundamental/medio): "),
  read(Nivel), assertz(obs(nivel(Nivel))),

  listar_bolsas,
  format("Tipo de bolsa (digite o nome): "),
  read(TipoBolsa), assertz(obs(bolsa(TipoBolsa))),

  format("Numero de filhos da mesma familia matriculados: "),
  read(N), assertz(obs(familia(N))),

  format("Dias de atraso no pagamento (0 se nenhum): "),
  read(D), assertz(obs(atraso(D))).

listar_bolsas :-
  format("Tipos de bolsa disponiveis:~n"),
  forall(bolsa(Nome, Desc),
         format("- ~w (~0f%% de desconto)~n", [Nome, Desc*100])).
