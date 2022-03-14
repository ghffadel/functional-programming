-- Função de fatorial com dois argumentos
fatorial :: Int -> Int -> Int
-- Retorna o valor acumulado nas outras chamadas se o número atual for 0
fatorial 0 acumulador = acumulador
-- Passa para a próxima chamada, multiplicando o número atual com o acumulador
fatorial numero acumulador = fatorial (numero - 1) (acumulador * numero)

-- Função principal
main :: IO ()
main = do
    -- Lê o número
    numero <- readLn :: IO Int
    -- Imprime o resultado
    putStrLn $ id ("Fatorial de " ++ show(numero) ++ " é: " ++ show(fatorial numero 1))