; Função de Fibonacci
(defun fibonacci (posicao)
    ; Se a posição for 0 ou 1 retorna 1
    (if (or (zerop posicao) (= posicao 1))
        1
        ; fibonacci(posicao) = fibonacci(posicao - 1) + fibonacci(posicao - 2)
        (let
            ((anterior (fibonacci (- posicao 1)))
             (segundo_anterior (fibonacci (- posicao 2))))
            (+ anterior segundo_anterior))))

; Lê a posição
(setq posicao (read))
; Imprime o resultado
(format t "Número da posição ~d é: ~d" posicao (fibonacci posicao))