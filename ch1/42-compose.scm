(define (compose g f)
       (lambda (x)
          (f (g x))))
