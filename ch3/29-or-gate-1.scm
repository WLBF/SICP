(define (or-gate a1 a2 output)
      (define (or-action-percedure)
         (let ((new-vaue 
                   (logical-not 
                      (logical-and 
                          (logcial-not a1) 
                          (logcial-not a2)))))
           (after-delay or-gate-delay
                        (lambda ()
                           (set-signal! output new-value)))))
      (add-action! a1 or-gate-action-procedure)
      (add-action! a1 or-gate-action-procedure)
     'ok)
