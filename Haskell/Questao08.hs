-- Definição da função potência
potencia :: [a] -> [[a]]
potencia [] = [[]]
potencia (x: xs) = map (x:) (potencia xs) ++ potencia xs

main :: IO ()
main = do
    let lista = -- Inserir lista no formato [a, b, c, ...]
    
    -- Imprime o conjunto potência da lista
    print (potencia lista)