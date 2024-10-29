#lang racket
; ===========================================================================
(define-struct resulpartido (nombre resultado))

;LAS ESTRUCTURAS TIENEN NOMBRE EN SIMBOLO Y LOS PUNTOS  UN NUMERO
;los selectores de la estructura son para el nombre (resul_partido-nombre xxxx)
;para el resultado (resul_partido-nombre xxxx)


(define (ganadorpartido resul1 resul2)
 (if
   (and (resulpartido? resul1)
        (resulpartido? resul2))
   (if (= (resulpartido-resultado resul1)
         (resulpartido-resultado resul2)) "empate" 
   (if (> (resulpartido-resultado resul1)
         (resulpartido-resultado resul2))
       (resulpartido-nombre resul1)
       (resulpartido-nombre resul2)))
   "los datos ingresados son incorrectos"))

;prueba
(ganadorpartido (make-resulpartido 'realmadrid 3)(make-resulpartido 'barcelona 0))

(ganadorpartido (make-resulpartido 'villareal 1)
                (make-resulpartido 'juventus 1))
(ganadorpartido 'nacinal
                (make-resulpartido 'juventus 1))