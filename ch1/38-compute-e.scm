(load "37-iter-cont-frac.scm")

(define (compute-e k)
(+ 2 (cont-frac (lambda (i) 1.0) D k)))

(define (D k)
       (if (= 0 (remainder (- k 2) 3))
          (- k (/ (+ k 1) 3) -1)
          1))

