# Sistema de Cálculo de Mensalidade Escolar (Prolog)

## Descrição

Este programa foi desenvolvido em **Prolog** com o objetivo de calcular o valor final da **mensalidade escolar** de um aluno, levando em consideração diversos fatores, como:

- Tipo de bolsa (por exemplo: **integral**, **meia**, **nenhuma**);
- Quantidade de filhos da mesma família matriculados;
- Multa por atraso no pagamento (em dias).

O sistema faz perguntas ao usuário, recebe os dados e calcula automaticamente o valor final com base nas regras de desconto e multa.

---

## Funcionalidades

- Solicita informações do aluno (tipo de bolsa, número de irmãos matriculados, dias de atraso).
- Aplica descontos progressivos conforme o número de alunos da mesma família.
- Calcula multa proporcional ao atraso no pagamento.
- Exibe o valor final a ser pago.

---

## Como Executar

1. Abra o **SWI-Prolog** (ou outro interpretador compatível).
2. Carregue o arquivo do programa:
   ```
   main.pl

---

## Possível problema

- Ao executar mais de uma vez e o resultado zerar ou não preencher tudo você deverá limpar a memória.
