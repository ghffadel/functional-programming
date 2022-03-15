; Definição da função fatorial
(defun fatorial (number)
  ; Função local que recebe dois argumentos
  (labels ((recursao-em-cauda (numero acumulador)
            ; Retorna o valor acumulado nas outras chamadas se o número atual for 0
             (if (zerop numero)
                 acumulador
                 ; Passa para a próxima chamada, multiplicando o número atual com o acumulador
                 (recursao-em-cauda (- numero 1) (* acumulador numero)))))
    (recursao-em-cauda numero 1))
)

; Lê o número
(setq numero (read))
; Imprime o resultado
(format t "Fatorial de ~d é: ~d" numero (fatorial numero))