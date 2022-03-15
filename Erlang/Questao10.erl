% Define o módulo do arquivo
-module(Questao10).

% Funções que serão exportadas
-export([fatorial/1]).

% Definição da função fatorial
fatorial(numero) -> fatorial(numero - 1, numero).
fatorial(1, acumulador) -> acumulador;
fatorial(numero, acumulador) -> fatorial(numero - 1, acumulador * numero).