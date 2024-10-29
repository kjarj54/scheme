#lang racket
(define (alquiler km)
  (cond
    [(<= km 100) (+ (/ (* 16 100000) 100) 100000)]
    [ (and (> km 100) (<= km 500))  (+ (* (- km 100 ) 3000) (/ (* 16 (+ (* (- km 100 ) 3000) 100000)) 100) 100000)]
    [ (> km 500)  (+ (* (- km 500) 1000) (/ (* 16 (+ (* (- km 100 ) 3000) 100000)) 100) 100000)]
    [else "dato no valido"]))
;prueba
(alquiler 90)
(alquiler 120)
(alquiler 520)