(define (last-pair list1)
      (cond ((null? list1)
                  (error "list empty -- LAST-PAIR"))
           ((null? (cdr list1))
                  (car list1))
           (else (last-pair (cdr list1)))))
       
