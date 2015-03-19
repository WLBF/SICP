(define (repeated f n)
       (define (iter f n x )
              (if (= n 0)
                 x
                 (iter f (- n 1) (f x))))
           (lambda (x) (iter f n x))) 
