(define (fib n)
   (fib-iter 1 0 0 1 n))

(define (iter a b p q count)
   (cond ((= count 0) b)
         ((even? count)
          (iter a
                b
                (+ (* p p) (* q q))
                (+ (* q q) (* 2 p q))
                (/ count 2)))
         (else (iter (+ (* b q) (* a q) (* a p))
                     (+ (* b q) (* a q))
                     p
                     q
                     (- count 1)))))
