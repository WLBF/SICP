(define (adjoin-position new-row k rest-of-queens)
    (cons (list k new-row) rest-of-queens))
