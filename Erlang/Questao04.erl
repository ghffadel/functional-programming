% Define o módulo do arquivo
-module(Questao04).

% Funções que serão exportadas
-export([adicionar/2, contem/2, uniao/2]).

% Verifica se um elemento está contido em uma lista
contem(H, [H|_]) -> true;
contem(H, [_|Lista]) -> contem(H, Lista);
contem(_, []) -> false.

% Adiciona o elemento na lista caso ele não esteja presente
adicionar(X, Lista) ->
    case contem(X, Lista) of
        true -> Lista;
        false -> [X|Lista]
    end.

% Definição da função de união
uniao([H|T], Lista) -> uniao(T, adicionar(H, Lista));
uniao([], Lista) -> Lista.