#lang simply-scheme

;; аналогичный способ реализации good-enough? заключается в том, чтобы следить как от одной итерации к другой изменяется guess.
;; и остановиться, когда значение окажется небольшой долей приближения

(define (sqrt x)
    (sqrt-iter 1.0 0 x))

(define (sqrt-iter guess prev-guess x)
    (if (improved-good-enough? guess prev-guess x)
        guess
        (sqrt-iter (improve guess x) guess x)))

(define (improved-good-enough? guess prev-guess x) (< (abs (- guess prev-guess)) 0.00001))

(define (square x) (* x x))

(define (abs x)
    (if (< x 0)
        (- x)
        x)
)


(define (average x y)
    (/ (+ x y) 2))


(define (improve guess x)
    (average guess (/ x guess)))

(sqrt 401355551666)