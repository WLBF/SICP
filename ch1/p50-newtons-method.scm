(load "p49-newton-transform.scm")
(load "p46-fixed-point.scm")

(define (newtons-method g guess)
   (fixed-point (newton-transfrom g) guess))
