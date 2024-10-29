#lang racket
;escoger novia

(define-struct novia (nombre cabello ojos edad))
(define-struct salida (mensaje nombre))

(define novia1 (make-novia 'sofia 'negro 'negros 22))
(define novia2 (make-novia 'mariana 'negro 'negros 23))

(define (boda n1 n2)
  (cond
    [(not (and (novia? n1) (novia? n2))) "dato invalido"]
    [(and (symbol=? (novia-cabello n1) 'rojo) (symbol=? (novia-ojos n1) 'rojos)
          (or (>= (novia-edad n1) 25) (<= (novia-edad n1) 35)))
     (make-salida "casate conmigo" (novia-nombre n1))]
    [(and (symbol=? (novia-cabello n2) 'castaño) (symbol=? (novia-ojos n2) 'azules)
          (or (>= (novia-edad n2) 25) (<=(novia-edad n2)35)))
     (make-salida "casate conmigo" (novia-nombre n2))]
    [else "pudo ser pero nunca paso xd"]
    )
  )

(boda novia1 novia2)