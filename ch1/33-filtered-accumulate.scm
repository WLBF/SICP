(define (filtered-accumulate combiner null-value term a next b filte)

       (define (filtered n)
               (if (filte n)
                   n
                   null-value))

          (define (iter a result)
        (if (> a b)
            result
            (iter (next a)
                  (combiner result (filtered (term a))))))
    (iter a null-value))
