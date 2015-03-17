(define (nontrivial-square-root? a m)
        (and(not (= a 1))
            (not (= a (- m 1)))
            (= 1 (remainder (square a) m))))

(define (suqare x) (* x x))
