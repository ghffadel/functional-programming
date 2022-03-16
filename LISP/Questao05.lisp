; Definição da função de intersecção
(defun interseccao (lista1 lista2)
    (cond ((null lista1) nil)
        ((member (car lista1) lista2)
        (cons (car lista1) (interseccao (cdr lista1) lista2)))
        (t (interseccao (cdr lista1) lista2))
    )
)


; Lê as duas listas no formato (a b c...)
(setq lista1 (read))
(setq lista2 (read))
; Imprime a união
(format t "~a" (interseccao lista1 lista2))