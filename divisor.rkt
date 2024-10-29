#lang racket
; ==========================================================
; Averiguar si dados dos números, uno es divisor de otro.

(define (Divisor N1 N2)
  (cond
    [ (and (and (number? N1) (number? N2)) (=  0 (remainder N1 N2 ))) "N1 es divisor de N2" ]
    [ (and (and (number? N1) (number? N2)) (=  0 (remainder N2 N1 ))) "N2 es divisor de N1" ]
    [ (and (and (number? N1) (number? N2)) (<  0 (remainder N2 N1 )))  "no tienen divisor"]
    [else "los datos no son valores numericos"]
    )
  
  )
;prueba
(Divisor 9 3)
(Divisor 2 4)
(Divisor 3 4)