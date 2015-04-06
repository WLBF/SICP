(define (diagonal-queen? queen) 
       (if ((= (car queen) (cdr queen)) or (= 9 (+ (car queen) (cdr queen))))
           1   
           0))

(define (have-diagonal-queen? positions)
        (cond ((null? positions) 0)
             ((diagonal-queen? (car positons)) 1) 
             (else (have-digonal-good? (cdr positions)))))      

(define (diagonal-good? positions)
     (if ((diagonal-queen? (car positions)) and
         (have-diagonal-queen? cdr positions))
         0
         1))
        
