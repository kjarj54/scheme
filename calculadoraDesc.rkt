#lang racket
#|Dado el monto de una compra calcular y mostrar el descuento
considerando: a) descuento es 20% si el monto es mayor a 200 pesos, b)
descuento es 10% si el monto es mayor o igual a 100 pesos y menor o igual
a 200 pesos, y c) no hay descuento si el monto es menor a 100 pesos.
|#

(define (Descuento Monto)
  (cond
    [(> Monto 200) (- Monto (/ (* Monto 20) 100))]
    [(and (>= Monto 100) (<= Monto 200)) (- Monto (/ (* Monto 10) 100))]
    [(< Monto 100) "No hay descuento"]
    [else "datos incorrectos"]
    )
  )

(Descuento 190)
(Descuento 300)
(Descuento 90)