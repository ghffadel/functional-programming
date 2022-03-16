; Definição da função de união
(defun uniao (lista1 lista2)
  (if (endp lista1)
      lista2
      (uniao (rest lista1)
        (adjoin (first lista1)
            lista2))))

; Lê as duas listas no formato (a b c...)
(setq lista1 (read))
(setq lista2 (read))
; Imprime a união
(format t "~a" (uniao lista1 lista2))