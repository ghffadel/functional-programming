-- Definição da função potência
potencia :: [Int] -> [[Int]]
potencia [] = [[]]
potencia (x: xs) = map (x:) (potencia xs) ++ potencia xs

main :: IO ()
main = do
    -- Leitura da lista
    lista <- readLn
    
    -- Imprime o conjunto potência da lista
    print (potencia lista)