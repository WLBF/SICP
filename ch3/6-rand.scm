(define rand
   (let ((x 1))
  (lambda (input) 
   (cond ((eq? input 'generate)
           ((set! x (rand-update x))
           x)) 
        ((eq? input 'reset)
           (lambda (new-value) (set! x new-value)))))))
