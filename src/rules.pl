:- dynamic obs/1.

mensalidade(ValorFinal) :-
    obs(nivel(Nivel)),
    valor_base(Nivel, Base),

    % Bolsa
    ( obs(bolsa(TipoBolsa)) -> tipo_bolsa(TipoBolsa, DescBolsa) ; DescBolsa = 0.0 ),
    ValorBolsa is Base * (1 - DescBolsa),

    % Desconto familiar (agora proporcional ao numero de matriculados)
    ( obs(familia(N)) -> true ; N = 1 ),
    desconto_familia(N, DescFam),
    ValorComFamilia is ValorBolsa * (1 - DescFam),

    % Multa por atraso (usa dias informados)
    ( obs(atraso(Dias)) -> true ; Dias = 0 ),
    multa(Dias, Multa),
    ValorFinal is ValorComFamilia * (1 + Multa).

/* ======= Regras auxiliares ======= */

tipo_bolsa(Tipo, P) :-
    bolsa(Tipo, P).

% Desconto familiar: N filhos -> desconto = N * per_filho (ou aplicar outra política)
% Ex.: com per_filho = 0.1 e teto 0.5: N=2 => 0.20; N=6 => cap 0.50
desconto_familia(N, Desc) :-
    desconto_familiar_por_filho(Per),
    desconto_familiar_cap(Cap),
    Desc0 is N * Per,
    ( Desc0 > Cap -> Desc = Cap ; Desc = Desc0 ).

% Multa por atraso: percentual total = dias * multa_dia
multa(Dias, Multa) :-
    multa_dia(PercDia),
    (Dias > 0 -> Multa is Dias * PercDia ; Multa = 0.0).
