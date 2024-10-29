#lang racket
(define (descuento valor color)
  (cond 
    [(symbol=? color 'blanco)  valor]
    [(symbol=? color 'verde) (- valor (/ (* 10 valor)100))]
    [(symbol=? color 'amarilla) (- valor (/ (* 25 valor)100))]
    [(symbol=? color 'azul) (- valor (/ (* 50 valor)100))]
    [(symbol=? color 'roja) (- valor (/ (* 100 valor)100))]
    
    [else "datos incorrectos"]))

;prueba
(descuento 1000 'blanco)
(descuento 1000 'verde)
(descuento 1000 'amarilla)
(descuento 1000 'azul)
(descuento 1000 'roja)