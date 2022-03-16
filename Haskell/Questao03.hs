-- Definição da função de intercalação
intercala :: [Int] -> [Int] -> [Int]
intercala x [] = x
intercala [] x = x
intercala (a: xs) (b: ys) = a: b: intercala xs ys

main :: IO ()
main = do
    -- Leitura das listas
    lista1 <- readLn
    lista2 <- readLn
    
    -- Imprime a intersecção entre as listas
    print (intercala lista1 lista2)