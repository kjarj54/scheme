#lang racket
;- area-rec:  numero numero -> numero
;– Propósito: calcular el área de un rectangulo dadas su base y su altura.

(define (area-rec b h)
  (cond
    [(and (number? b) (number? h)) (* b h)]
    [else "los datos no son datos numericos"]
    )
  )


(area-rec 7 4)
(area-rec "r" "f")
