(load "19-first-denomination.scm")
(load "19-except-first-denomination.scm")
(load "19-no-more?.scm")

(define (cc amount coin-values)
        (cond ((= amount 0) 1)
              ((or (< amount 0) (no-more? coin_values)) 0)
              (else
               (+ (cc amount
                     (except-first_denomination coin-values))
                  (cc (- amount
                         (first-denomination coin-values))
                      coin-values)))))
