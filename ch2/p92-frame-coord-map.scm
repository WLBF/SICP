(load "46-xycor.scm")
(load "46-compute-vect.scm")

(define (frame-coord-map frame)
    (lambda (v)
             (add-vect
               (origin-frame frame)
                 (add-vect (scale-vect (xcor-vect v)
                                       (edge1-frame frame))
                           (select-vect (ycor-vect v)
                                       (edge2-frame frame))))))
