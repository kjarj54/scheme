#lang racket
;numero par: numero -> falso o verdadero
;programa que determine si un numero es paro impar.

(define (num-par A)
  (cond
    [(not (and (number? A) (not(= A 0))))]
    [(even? A) "el numero es par"]
    [else "el numero es impar"]
    )
  )

(num-par 6)
(num-par 5)