(load "36-fixed-point.scm")
(define (cont-frac n d k)
     (begin (define (f x) 
              (+ d (/ n x)))
     (- (fixed-point f d) d)))
        
