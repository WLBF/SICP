(load "37-iter-cont-frac.scm")
(define (square x) (* x x))


(define (D i)
     (- (* 2 i) 1))



(define (tan-cf x k)

        (define (N i)
                (if (= i 1)
                x
                (- (square x))))

       (exact->inexact (cont-frac N D k)))
