(define (search-for-primes n)
(timed-prime-test n)
(search-for-primes (+ n 1)))
