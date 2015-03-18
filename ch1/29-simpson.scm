
(load "p38-sum.scm")

(define (simpson f a b n)
    
    (define h (/ (- b a) n))


    (define (factor k)
        (cond ((or (= k 0) (= k n))
                1)
              ((odd? k)
                4)
              (else
                2)))
    
    (define (term k)
        (* (factor k)
           (y k)))

    (define (next k)
     (+ k 1))
(define (y k)
   (f (+ a (* h k)))
)

    (if (not (even? n))
        (error "n can't be odd")
        (* (/ h 3)
           (sum term (exact->inexact 0) next n)))) ;;;transfer int to double
