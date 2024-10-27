#lang racket
;calcular la hipotenusa de un triángulo rectángulo
;hipotenusa: numero numero  -> numero

(define (hipotenusa cateto1 cateto2)
  (sqrt (+ (sqr cateto1) (sqr cateto2))
        )
  )

(hipotenusa 3 4)