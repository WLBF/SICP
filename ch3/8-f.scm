(define f
  (let ((flag 1))
    (lambda (x) 
        ((set! flag (and x flag))
        x))))    

