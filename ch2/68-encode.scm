(load "p112-huffman.scm")
(define (encode message tree)
  (if (null? message)
      '()
      (append (encode-symbol (car message) tree)
              (encode (cdr message) tree))))

(define (encode-symbol symbol tree)
       (cond ((leaf? tree) 
                        '())
            ((in-branch? symbol (left-branch tree)) 
                        (cons 0 (encode-symbol symbol (left-branch tree))))
            ((in-branch? symbol (right-branch tree)) 
                        (cons 1 (encode-symbol symbol (right-branch tree))))
            (else 
                        (error "This symbol not in tree:" symbol))))

(define (in-branch? symbol tree)
   (not
        (false?
             (find (lambda (s)
                       (eq? s symbol))
                   (symbols tree)))))
