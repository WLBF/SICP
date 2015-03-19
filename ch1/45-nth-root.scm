(load "45-lg.scm")
(load "p46-fixed-point.scm")
(load "45-expt.scm")
(load "45-average-damp-n-times.scm")
(define (nth-root y n)
    
      (fixed-point (average-damp-n-times 
          (lambda (x) (/ y (expt x (- n 1))))
           (lg n)) 1.0))  
 
