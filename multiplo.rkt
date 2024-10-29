#lang racket
; ==========================================================
;define una funcion que determine el numero mayor
(define(mayor w x y z)
  (cond
    [(and (> w x)(> w y)(> w z))w]
    [(and (> x w)(> x y)(> x z))x]
    [(and (> y x)(> y w)(> y z))y]
    [(and (> z x)(> z y)(> z w))z]
    ))
;define una funcion que determine el numero menor
(define(menor w x y z)
  (cond
    [(and (< w x)(< w y)(< w z))w]
    [(and (< x w)(< x y)(< x z))x]
    [(and (< y x)(< y w)(< y z))y]
    [(and (< z x)(< z y)(< z w))z]))
;funcion principal que define si el numero mayor es multiplo del menor
(define (multimenor w x y z)
  (cond
    [(and(= w x)(= w y)(= w z)(= x y)(= x z)(= y z))"números iguales, verifique"]
    [(=(remainder (mayor w x y z )(menor w x y z))0)"El número mayor es multiplo del menor"]
    [else "NO es multiplo"]))

(multimenor 4 9 6 3)
(multimenor 3 3 3 3)
(multimenor 3 7 9 2)