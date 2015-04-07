(define (make-segment vect1 vect2)
             (list vect1 vect2))

(define (start-segment segment) (car segment))

(define (end-segment segment) (cdr segment))
