(define (square-list items)
    (if (null? items)
        nil
        (cons (square (car items)) (square-list (cdr items)))))


(define (square-list items)
    (map (lambda (x) (* x x)) items))


(define (square x) (* x x))
