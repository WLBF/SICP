(define (three-pairs n s)

(define (good? lst) (= s (+ (car lst) (cadr lst) (caddr lst))))

    (filter good?
        (flatmap (lambda (lst) 
                    (map (lambda (k) (cons k lst)) 
                               (emumerate-interval1 (- (cdr lst) 1))))
                 (unique-pairs n))))
