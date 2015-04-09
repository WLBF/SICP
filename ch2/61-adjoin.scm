(define (adjoin-set x set)
      (define (iter x rest head)
         (cond ((null? rest) (append rest (list x)))
              ((= x (car rest)) (append  head rest))
              ((< x (car rest)) (append head (cons x rest)))
              ((> x (car rest)) (iter x (cdr rest) (append head (list (car rest)))))))
    (iter x set '()))
              
