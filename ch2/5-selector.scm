(define (compute z n)
       (if (= 0 (remainder z n))
           (+ 1 (car (/ z 2)))
           0))


(define (car z) (compute z 2))
(define (cdr z) (compute z 3))
