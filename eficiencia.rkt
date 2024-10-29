#lang racket
(define (efeciecia defec prod)
  (cond
    [(not (and (number? defec) (number? prod))) "los datos ingresados no son numeros"]
  [(and (> defec 150) (< prod 8000)) "grado 5"]
  [(and (< defec 150) (< prod 8000)) "grado 6"]
  [(and (> defec 150) (> prod 8000)) "grado 7"]
  [(and (< defec 150) (> prod 8000)) "grado 8"]
    )
  )

(eficiencia 160 6000)
(eficiencia 140 6000)
(eficiencia 160 9000)
(eficiencia 100 9000)