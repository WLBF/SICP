(load "p119-tag.scm")
(load "p123-put-and-get.scm")

(define (install-rectanglar-package)
     
     (define (real-part z) (car z))
     (define (imag-part z) (car z))
    
     (define (make-from-real-imag x y) (cons x y))
   
     (define (magnitude z)
       (sqrt (+ (square (real-part z))
                (square (imag-part z)))))

     (define (tag x) (attach-tag 'rectangular))
      (put 'real-part '(rectangular) real-part)
  (put 'imag-part '(rectangular) imag-part)
  (put 'magnitude '(rectangular) magnitude)
  (put 'angle '(rectangular) angle)

  (put 'make-from-real-imag 'rectangular 
       (lambda (x y) (tag (make-from-real-imag x y))))
  (put 'make-from-mag-ang 'rectangular 
       (lambda (r a) (tag (make-from-mag-ang r a))))

'done)

(define (make-from-real-imag x y)
    ((get 'make-from-real-imag 'rectangular) x y))
