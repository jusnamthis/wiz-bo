(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
    (
        <
            (abs (- (square guess) x))
            0.0001
    )
)

(define (square x) (x * x))

(define (abs x)
    (if (< x 0)
        (- x)
        x)
)


(define (average x y)
    (/ (+ x y) 2))


(define (improve guess x)
    (average guess (/ x guess)))
