(load "p34-expmod.scm")

(define (carmicheal-test n)
       (carmicheal-test-iter 1 n))

(define (carmicheal-test-iter a n)
       (cond ((= a n) (display "All pass"))
            ((= (expmod a n n) (remainder a n))
                 (carmicheal-test-iter (+ a 1) n))
            (else (display "Not prime"))))
