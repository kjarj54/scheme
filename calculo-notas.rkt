#lang racket

(define (calcula_def materia n1 n2 n3)
  (cond
    [(symbol=? materia 'calculo) (+ (* n1 0.3) (* n2 0.3) (* n3 0.4))]
    [(symbol=? materia 'fundamentos) (+ (* n1 0.25) (* n2 0.45) (* n3 0.3))]
    [(symbol=? materia 'ingles) (+ (* n1 0.5) (* n2 0.2) (* n3 0.3))]
    [(symbol=? materia 'deporte) (+ (* n1 0.7) (* n2 0.2) (* n3 0.1))]
    [else "la materia no esta registrada"]
    ))

(calcula_def 'calculo 3 2.8 4.5)
(calcula_def 'fundamentos 4.5 3.8 4.2)
(calcula_def 'ingles 5.0 4.9 4.2)
(calcula_def 'deporte 5.0 5.0 5.0)