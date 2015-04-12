(load "p113-adjoin-set.scm")
(load "p114-make-leaf-set.scm")
(define (generate-huffman-tree pairs)
    (successive-merge (make-leaf-set pairs)))

(define (successive-merge leaf-list)
    (cond ((= leaf-list '()) '())
          ((null? (cdr leaf-list)) (car leaf-list))
          (else (successive-merge  (adjoin-set 
                             (make-code-tree 
                                (car leaf-list) 
                                   (cadr leaf-list)) (cddr leaf-list))))))
