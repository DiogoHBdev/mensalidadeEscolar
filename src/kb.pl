% Valores base da mensalidade por nível de escolaridade
valor_base(educacao_infantil, 800).
valor_base(fundamental,      1000).
valor_base(medio,            1200).

% Tipos de bolsa (% de desconto)
bolsa(integral, 1.00).
bolsa(meia,     0.50).
bolsa(social,   0.70).
bolsa(esporte,  0.30).
bolsa(musica,   0.40).
bolsa(cultural, 0.25).
bolsa(nenhuma,   0.0).


% Multa diária por atraso (% sobre o valor final)
multa_dia(0.03).

% Desconto familiar:
% desconto por filho (ex.: 0.10 = 10% por filho)
desconto_familiar_por_filho(0.10).
% teto máximo de desconto familiar (ex.: 0.50 = 50%)
desconto_familiar_cap(0.50).