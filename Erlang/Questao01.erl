% Define o módulo do arquivo
-module(Questao01).

% Funções que serão exportadas
-export([fatorial/1]).

% Definição da função fatorial
fatorial(0) -> 1;
fatorial(numero) -> numero * fatorial(numero - 1).