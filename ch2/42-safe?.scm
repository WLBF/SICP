(define (diagonal-queen? queen) 
       (if ((= (car queen) (cdr queen)) or (= 9 (+ (car queen) (cdr queen))))
           #t   
           #f))

(define (have-diagonal-queen? positions)
        (cond ((null? positions) #f)
             ((diagonal-queen? (car positons)) #t) 
             (else (have-digonal-good? (cdr positions)))))      

(define (diagonal-good? positions)
     (if ((diagonal-queen? (car positions)) and
         (have-diagonal-queen? cdr positions))
         #f
         #t))

(define (iter k-queen-row rest-queens-row)
      (cond ((null? rest-queens-row) #t)
             ((= k-queen-row (car rest-queens-row)) #f)
             (else (iter k-queen-row (cdr rest-queens-row)))))        

(define (new-row-safe? positions)
      (let ((k-queen-row (cdar positions))
          (rest-queens-row (map cdr (cdr positions))))
        (iter k-queens-row rest-queens-row)))

(define (safe? positions k)
     (if ((diagonal-good? positions) and (new-row-safe? positions))
         #t
         #f))
