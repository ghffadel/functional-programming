-- Definição da função de união
uniao :: Eq a => [a] -> [a] -> [a]
uniao xs [] = xs
uniao xs (y: ys)
    | (y `elem` xs) = uniao xs ys
    | otherwise = uniao (y: xs) ys

main :: IO ()
main = do
    let lista1 = -- Inserir lista no formato [a, b, c, ...]
    let lista2 = -- Inserir lista no formato [a, b, c, ...]
    
    -- Imprime a intersecção entre as listas
    print (uniao lista1 lista2)