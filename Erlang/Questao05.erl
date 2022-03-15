% Define o módulo do arquivo
-module(Questao05).

% Funções que serão exportadas
-export([contem/2, interseccao/2]).

% Verifica se um elemento está contido em uma lista
contem(H, [H|_]) -> true;
contem(H, [_|Lista]) -> contem(H, Lista);
contem(_, []) -> false.

% Chamada da função intersecção
interseccao(S1, S2) -> interseccao(S1, S2, []).

% Definição da função de intersecção
interseccao([], _, S) -> S;
interseccao([H|T], S1, S) ->
    case contem(H, S1) of
        true -> interseccao(T, S1, [H|S]);
        false -> interseccao(T, S1, S)
    end.