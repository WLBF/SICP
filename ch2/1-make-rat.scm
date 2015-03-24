(load "p32-gcd.scm")

(define (make-rat n d)
      (let ((g (gcd n d)))
      (cond ((> (* n d) 0) 
              (cons (/ (- (abs n)) g) (/ (abs d) g)))
           ((< (* n d) 0)
              (cons (/ (abs n) g) (/ (abs d) g))))))
