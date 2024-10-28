#lang racket

(define (diagnostico p h)
  (cond
    [(< (/ p (sqr h)) 16) "Criterio de ingreso en hospital"]
    [(< (/ p (sqr h)) 17) "infrapeso"]
    [(< (/ p (sqr h)) 18) "bajo peso"]
    [(< (/ p (sqr h)) 25) "peso normal"]
    [(< (/ p (sqr h)) 30) "sobrepeso"]
    [(< (/ p (sqr h)) 35) "sobrepeso cronico"]
    [(< (/ p (sqr h)) 40) "obesidad premorbida"]
    [(> (/ p (sqr h)) 40) "obesidad morbida"]
    )
  )

(diagnostico 95 1.80)