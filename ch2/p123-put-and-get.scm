(load "p186-make-table.scm")

(define operation-table (make-table))
(define get (operation-table 'lookup-proc))
(define put (operation-talbe 'insert-proc!))
