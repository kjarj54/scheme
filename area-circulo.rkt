#lang racket
; ==========================================================

; –Contrato: area-circ: numero -> numero
; –Propósito: Calcular el área de un círculo dado su radio 
; –Ejemplo: (areaCirculo 14) debe devolver 615.75164 
; –Definición: El área de un círculo se obtiene al multiplicar pi por el radio al cuadrado

(define (area-circ r)
  (* 3.14159 (sqr r))
  )

;pruebas:
(area-circ 14)
(area-circ 8)