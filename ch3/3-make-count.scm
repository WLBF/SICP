(define (make-count balance passwd)
   (define (test input)
      (if (eq? input passwd)
          #t
          #f))

   (define (withdraw amount)
      (if (>= balance amount)
          (begin (set! balance (- balance amount))
                 balance)
          "Insufficient funds"))

   (define (deposit amount)
      (set! balance (+ balance amount))
      balance)

   (define (dispatch m input)
     (if (test input)
        (cond ((eq? m 'withdraw) withdraw)
            ((eq? m 'deposit) deposit)
            (else (error "Unknown request -- MAKE-ACCOUNT"
                       m)))
     (lambda (useless-arg) (display "Incorrect password"))))

   dispatch)
