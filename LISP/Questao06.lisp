; Definição da função de sequência
(defun sequencia (n m)
    (if (= n 0)
        '()
        (cons m (sequencia (- n 1) (+ m 1)))
    )
)

; Lê os dados da entrada
(setq n (read))
(setq m (read))
; Imprime a sequência
(format t "~a" (sequencia n m))