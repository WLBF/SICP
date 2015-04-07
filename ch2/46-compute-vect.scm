(load "46-vect-represent.scm")

(define (add-vect vect another-vect)
    (make-vect (+ (xcor-vect vect)
                  (xcor-vect another-vect))
               (+ (ycor-vect vect)
                  (ycor-vect another-vect))))

(define (sub-vect vect another-vect)
    (make-vect (- (xcor-vect vect)
                  (xcor-vect another-vect))
               (- (ycor-vect vect)
                  (ycor-vect another-vect))))

(define (scale-vect factor vect)
    (make-vect (* factor (xcor-vect vect))
               (* factor (ycor-vect vect))))
