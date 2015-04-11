(define (lookup given-key tree)
        (cond ((null? tree) #f)
             ((= given-key (key (car tree))) (car tree))
             ((> given-key (key (car tree))) (lookup given-key (cddr tree)))
             ((< given-key (key (car tree))) (lookup given-key (cadr tree)))))

             
