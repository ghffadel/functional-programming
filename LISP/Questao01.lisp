(defun fatorial (numero)
    (cond ((zerop numero) 1)
        (t ( * numero (fatorial (- numero 1))))
    )
)

(setq numero (read))
(format t "Fatorial de ~d é: ~d" numero (fatorial numero))