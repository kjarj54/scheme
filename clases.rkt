#lang racket
 ;programa que me permita saber si vamos a Clase de Calculo, 
;Si hoy es miércoles o sábado y no hay bloqueo

(define-struct Clase (dia bloqueo))
(define-struct Dia (nombre))

(define Dia1 (make-Dia 'Domingo))
(define Dia2 (make-Dia 'Lunes))
(define Dia3 (make-Dia 'Martes))
(define Dia4 (make-Dia 'Miercoles))
(define Dia5 (make-Dia 'Jueves))
(define Dia6 (make-Dia 'Viernes))
(define Dia7 (make-Dia 'Sabado))

(define (irClaseCalculo dias bloqueo)
  (cond
    [(and (boolean=? bloqueo false)
          (or (symbol=? dias (Dia-nombre Dia4)) (symbol=? dias (Dia-nombre Dia7))))
     "hay clase hoy"
     ]
    [else "Hoy no hay clase de Calculo"]
    )
 )

;prueba
(irClaseCalculo 'Sabado false)
(irClaseCalculo 'Viernes true)
(irClaseCalculo 'Viernes false)
(irClaseCalculo 'Sabado true)