explicar(ValorFinal) :-
  obs(nivel(Nivel)),
  obs(bolsa(TipoBolsa)),
  obs(familia(N)),
   (obs(atraso(D)) -> true ; D = 0),

  valor_base(Nivel, Base),
  tipo_bolsa(TipoBolsa, DescBolsa),
  desconto_familia(N, DescFam),
  multa(D, Multa),

  ValorBolsa is Base * (1 - DescBolsa),
  ValorComFamilia is ValorBolsa * (1 - DescFam),

  format("~n[Explicacao]~n"),
  format("- Nivel de ensino: ~w (Base: R$ ~2f)~n", [Nivel, Base]),
  format("- Bolsa: ~w (~0f% de desconto)~n", [TipoBolsa, DescBolsa*100]),
  format("- Desconto familiar: ~0f% (~w matriculados)~n", [DescFam*100, N]),
  format("- Multa por atraso: ~0f% (~w dias)~n", [Multa*100, D]),
  format("- Valor apos bolsa: R$ ~2f~n", [ValorBolsa]),
  format("- Valor apos desconto familiar: R$ ~2f~n", [ValorComFamilia]),
  format("- Valor final (com multa): R$ ~2f~n", [ValorFinal]).
