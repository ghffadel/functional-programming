-- Definição da função da sequência
sequencia :: Int -> Int -> [Int]
sequencia 0 m = []
sequencia n m = [m..m + n - 1]

main :: IO ()
main = do
    -- Leitura da entrada
    n <- readLn :: IO Int
    m <- readLn :: IO Int
    
    -- Imprime a sequência
    print (sequencia n m)