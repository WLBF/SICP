(load "p155-monte-carlo.scm")
(load "5-random-in-range.scm")

(define (matrix-area x1 x2 y1 y2)
    (* (abs (- x1 x2 )) (abs (- y1 y2))))

(define p 
   (lambda (x y) (>= 1.0 (+ (* x x) (* y y)))))

(define (estimate-integral P x1 x2 y1 y2 trials)
     
     (* (monte-carlo trials (lambda ()
                                (P (random-in-range x1 x2)
                                   (random-in-range y1 y2))))
        (matrix-area x1 x2 y1 y2)))
      
     
