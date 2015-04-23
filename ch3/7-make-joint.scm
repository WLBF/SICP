(define (make-joint origin-acc origin-password another-password)
    (lambda (given-password mode)
        (if (eq? given-password another-password)
            (origin-acc origin-passord mode)
            display-wrong-another-password-massage)))

(define (display-wrong-another-password-message useless-arg)
    (display "Incorrect another password"))
