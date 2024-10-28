#lang racket
; contrato
;num_mayor: num num num -> num mayor
;proposito: elabore un programa al cual le lleguen 3 numeros y determine cual de ellos es el 
;mayor(mostrar el numero mayor)

(define (num_mayor n1 n2 n3)
  (cond
    [(and (> n1 n2) (> n1 n3)) "n1 es mayor"]
    [(and (< n1 n2) (> n2 n3)) "n2 es mayor"]
    [(and (< n1 n2) (< n2 n3)) "n3 es mayor"]

    [(and (< n1 n2)  (>= n2 n3) ) "n2 y n3 son mayores e iguales " ]
   [(and (<= n1 n2) (> n2 n3)  ) "n1 y n2 son mayores e iguales " ]
   [(and (> n1 n2)  (= n1 n3)  ) "n1 y n3 son mayores e iguales " ]
   [(and (= n1 n2)  (= n2 n3)  ) "los tres numeros son iguales " ]
    )
  )

;pruebas
(num_mayor 1 2 3)
(num_mayor 1 3 2)
(num_mayor 3 2 1)

(num_mayor 1 3 3)
(num_mayor 3 3 1)
(num_mayor 3 2 3)
  
(num_mayor 3 3 3)