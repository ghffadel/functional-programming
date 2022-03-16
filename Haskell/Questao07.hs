-- Definição da função separa
separa :: [Int] -> ([Int], [Int])
separa [] = ([], [])
separa [x] = ([x], [])
separa (x: y: xs) = (x: xp, y: yp) where (xp, yp) = separa xs

main :: IO ()
main = do
    -- Leitura da lista
    lista <- readLn
    
    -- Imprime o conjunto potência da lista
    print (separa lista)