-module(fatorial).
 
-export([fatorial/1]).
 
fatorial(0) -> 1;
fatorial(numero) -> numero * fatorial(numero - 1).