#lang simply-scheme

(define (cube-root x)
    (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-root-iter (improve guess x) x)))

(define (good-enough? guess x) (< (abs (- (cube guess) x)) 0.00001))

(define (cube x) (* x x x))

(define (abs x)
    (if (< x 0)
        (- x)
        x)
)

(define (improve guess x)
      (/
           (+
               (/
                    x
                    (square guess)
                )
                (* 2 guess)
           )
           3
      )
)

(define (square x) (* x x))

(cube-root 8)