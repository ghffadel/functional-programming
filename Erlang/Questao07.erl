% Define o módulo do arquivo
-module(Questao07).

% Funções que serão exportadas
-export([separa/1]).

% Definição da função separa
separa(lista) ->
    lists:partition(fun(X) -> X rem 2 == 1 end, lista).