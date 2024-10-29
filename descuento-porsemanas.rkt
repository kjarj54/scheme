#lang racket
(define (nuevo-precio precioIN semanas)
  (cond
    [(= semanas 3)(- precioIN (/ (* precioIN 25) 100))]
    [(= semanas 4)(- precioIN (/ (* precioIN 50) 100))]
    [(>= semanas 5)(- precioIN (/ (* precioIN 75) 100))]
    [else "los datos son incorrectos"]
    )
  )

(nuevo-precio 5000 4)