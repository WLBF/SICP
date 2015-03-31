(define (fringe tree) (iter tree '()))
   

(define (iter rest result)
     (cond ((null? rest)
             result)
          ((not (pair? (car rest)))
            (iter (cdr rest) (append (list (car rest)) result)))
          (else (iter (car rest) result))))
          
          ;;;Not done yet!!!!!
