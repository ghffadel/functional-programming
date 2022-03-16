; Definição da função potência
(defun potencia(lista)
    (if (null lista)
        '(nil)
        (let ((ps (potencia (cdr lista))))
        (append ps (mapcar #'(lambda (x) (cons (car lista) x)) ps)))
    )
)

; Lê a lista no formato (a, b, c, ...)
(setq lista (read))
; Imprime o conjunto potência da lista
(format t "~a" (potencia lista))