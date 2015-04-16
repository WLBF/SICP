(define (make-monitored f)
  (let ((count 0))
    (lambda (symbol)
        (cond ((eq? symbol 'how-many-calls?) 
                   count)
              ((eq? symbol 'reset-count) 
                   (begin (set! count 0)
                           0))
              (else (begin (set! count (+ count 1))
                           (f symbol)))))))
