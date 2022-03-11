-- Função de fatorial
fatorial :: Int -> Int
-- Retorna 1 se o número é igual a 0
fatorial 0 = 1
-- fatorial(numero) = numero * fatorial(numero - 1)
fatorial n = n * fatorial (n - 1)

-- Função principal
main :: IO ()
main = do
    -- Lê o número
    numero <- readLn :: IO Int
    -- Imprime o resultado
    putStrLn $ id ("Fatorial de " ++ show(numero) ++ " é: " ++ show(fatorial numero))