(define (for-each f lst)
       (if (null? lst)
          '()
          (begin (f (car lst))
           (for-each f (cdr lst)))))
       
