(load "31-iter-product.scm")
(define (compute-pi n) (compute-iter 1 n))


(define (compute-iter k n)
     (define (term k)
      (if (odd? k)
         (/ (+ k 1) (+ k 2))
         (/ (+ k 2) (+ k 1))))
     (define (next k) (+ k 1))   
(* (exact->inexact (product term k next n)) 4))

