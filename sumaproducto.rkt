#lang racket
(define (suma-prod n1 n2 n3)
  
  (cond
    [(< n1 0) (* n1 n2 n3)]
    [(> n1 0) (+ n1 n2 n3)]
    [else "los datos n son numeros"]
    )
  )

(suma-prod  2 3 4)
(suma-prod  -2 3 4)