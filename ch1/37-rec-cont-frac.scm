(load "36-fixed-point.scm")
(define (cont-frac n d k)
        (define (cf i)
              (if (= k i)
              (/ (n k) (d k))
              (/ (n i)
               (+ (d i) (cf (+ i 1))))))

    (cf 1))
