#lang racket
(define (añoB año)
  (cond
    [(and (= (remainder año 4) 0) (or (not (= (remainder año 100) 0)) (= (remainder año 400) 0) )) 'año_bisiesto ]
    [else 'año_no_bisiesto]
    )
  )

(añoB 2004)
(añoB 2005)