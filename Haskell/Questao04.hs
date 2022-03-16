-- Definição da função de união
uniao :: [Int] -> [Int] -> [Int]
uniao xs [] = xs
uniao xs (y: ys)
    | (y `elem` xs) = uniao xs ys
    | otherwise = uniao (y: xs) ys

main :: IO ()
main = do
    -- Leitura das listas
    lista1 <- readLn
    lista2 <- readLn
    
    -- Imprime a intersecção entre as listas
    print (uniao lista1 lista2)