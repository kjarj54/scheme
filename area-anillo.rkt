#lang racket
;–Contrato: AreaAnillo: numero numero > numero
;–Propósito: calcular el área de un anillo dados el radio del circulo interno y el externo

(define (areaAnillo radioInterno radioExterno)
  (* 3.14 (- (sqr radioExterno) (sqr radioInterno))
     )
  )


;prueba

(areaAnillo 13 14)