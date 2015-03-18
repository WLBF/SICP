(load "p33-prime.scm")
(load "33-filtered-accumulate.scm")
(define (sum-primes a b)

(define (next n)
       (+ n 1))

(filtered-accumulate + 0 (lambda (x) x) a next b prime?))


