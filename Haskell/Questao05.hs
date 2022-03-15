-- Definição da função de intersecção
interseccao :: [Integer] -> [Integer] -> [Integer]
interseccao [] = const []
interseccao xs = filter (`elem` xs)

main :: IO ()
main = do
    let lista1 = -- Inserir lista no formato [a, b, c, ...]
    let lista2 = -- Inserir lista no formato [a, b, c, ...]
    
    -- Imprime a intersecção entre as listas
    print (interseccao lista1 lista2)