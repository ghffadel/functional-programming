-- Função de Fibonacci
fibonacci :: Int -> Int
-- Se a posição for 0 ou 1 retorna 1
fibonacci 0 = 1
fibonacci 1 = 1
fibonacci posicao = fibonacci (posicao - 1) + fibonacci (posicao - 2)

-- Função principal
main :: IO ()
main = do
    -- Lê o número
    posicao <- readLn :: IO Int
    -- Imprime o resultado
    putStrLn $ id ("Número da posição " ++ show(posicao) ++ " é: " ++ show(fibonacci posicao))