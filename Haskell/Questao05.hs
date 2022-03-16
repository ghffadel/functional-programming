-- Definição da função de intersecção
interseccao :: [Int] -> [Int] -> [Int]
interseccao [] = const []
interseccao xs = filter (`elem` xs)

main :: IO ()
main = do
    -- Leitura das listas
    lista1 <- readLn
    lista2 <- readLn
    
    -- Imprime a intersecção entre as listas
    print (interseccao lista1 lista2)