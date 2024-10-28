#lang racket
 #| Construya un programa que permita calcular el salario mensual de un
asesor de ventas de claro, teniendo en cuanta que tiene un salario base de
$300.000 y las bonificaciones a las ventas. Para las cuales se fijan las
siguientes características para los tres servicios ofrecidos por la empresa
(telefonía, cable e internet).
 
a. Por cada trio vendido se le da una bonificación de $20.000
b. Por cada duo vendido se le da una bonificación de $12.000
c. Por dada servicio vendido en forma individual $8.000 
Además hay un incentivo por ventas de $200.000, para aquellos que
vendan más de 20 trios. |#

(define (calcularSalario Vtrio Vduo Vindividual)
  (if (> Vtrio 20)
      (+ 500000 (* Vtrio 20000) (* Vduo 12000) (* Vindividual 8000))
      (+ 300000 (* Vtrio 20000) (* Vduo 12000) (* Vindividual 8000))
   )
  )

(calcularSalario 0 0 0)
(calcularSalario 1 0 0)
(calcularSalario 21 0 0)