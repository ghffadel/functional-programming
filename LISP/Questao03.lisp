; Definição da função intercala
(defun intercala (lista1 lista2)
    (cond ((null lista1) lista2)
          ((null lista2) lista1)
          ((append
            (list (car lista1) (car lista2))
            (intercala (cdr lista1) (cdr lista2))))
    )
)

; Lê as duas listas no formato (a b c...)
(setq lista1 (read))
(setq lista2 (read))
; Imprime as listas intercaladas
(format t "~a" (intercala lista1 lista2))