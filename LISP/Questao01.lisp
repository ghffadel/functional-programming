; Função de fatorial
(defun fatorial (numero)
    ; Retona 1 se o número é igual a 0
    (cond ((zerop numero) 1)
        ; fatorial(numero) = numero * fatorial(numero - 1)
        (t ( * numero (fatorial (- numero 1))))
    )
)

; Lê o número
(setq numero (read))
; Imprime o resultado
(format t "Fatorial de ~d é: ~d" numero (fatorial numero))