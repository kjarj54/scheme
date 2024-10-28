#lang racket
 ;contrato numero -> diaSemana
;Escribir un programa que dado un número del 1 a 7 escriba el
;correspondiente nombre del día de la semana.

(define (diaSemana numero)
  (cond
    [(= numero 1) "Domingo"]
    [(= numero 2) "Lunes"]
    [(= numero 3) "Martes"]
    [(= numero 4) "Miercoles"]
    [(= numero 5) "Jueves"]
    [(= numero 6) "Viernes"]
    [(= numero 7) "Sabado"]
    [else "no es un numero valido"]
    )
  )

(diaSemana 4)
