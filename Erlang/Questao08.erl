% Define o módulo do arquivo
-module(Questao08).

% Funções que serão exportadas
-export([potencia/1]).

% Definição da função potência
potencia(lista) ->
    % Tamanho da lista
    tamanho = length(lista)
    % Quantidade de subconjuntos
    maximo = trunc(math:pow(2, tamanho))
    % Gera todas as possibilidades de subconjuntos usando bitwise
    [[lists:nth(posicao + 1, lista) || posicao <- lists:seq(0, tamanho - 1), I band (1 bsl posicao) =/= 0 || I <- lists:seq(0, maximo - 1)].