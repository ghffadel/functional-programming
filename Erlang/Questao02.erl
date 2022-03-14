% Define o módulo do arquivo
-module(Questao02).

% Funções que serão exportadas
-export([fibonacci/1]).

% Definição da função Fibonacci
fibonacci(0) -> 0;
fibonacci(1) -> 1;
fibonacci(posicao) -> fibonacci(posicao - 1) + fibonacci(posicao - 2).