(define (same-parity first . lst)
       (if (odd? first)
          (iter odd? lst  (list first))
          (iter even? lst (list first))))

(define (iter odd-even lst dst)
       (if (null? lst)
           dst
           (iter odd-even (cdr lst) 
                          (if (odd-even (car lst))
                                        (cons (car lst) dst)
                                        dst))))
