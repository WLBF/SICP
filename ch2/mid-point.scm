(load "2-print-point.scm")

(define (mid-point s)
     (cons  (/ (+ (x-point (start-segment p)) (x-point (end-segment p))) 2)
           (/ (+ (y-point (start-segment p)) (y-point (end-segment p))) 2)))
      
