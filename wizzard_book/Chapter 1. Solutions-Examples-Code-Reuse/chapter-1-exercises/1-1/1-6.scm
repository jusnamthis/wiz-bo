#lang simply-scheme
; Программа завершится с переполнением стека и ошибкой интерпретатора, поскольку
; if является особой формой, и вычисляет then/else-clause в зависимости от истинности предиката.
; В приведённой процедуре new-if интерпретатор, следуя аппликативному порядку вычислений, сначала вычисляет оператор и операнды,
; вторым оператором (else-clause) при этом является рекурсивная процедура (sqrt-iter).

(define (new-if predicate then-clause else-clause)
(cond (predicate then-clause)
(else else-clause)))

(define (sqrt-iter guess x)
(new-if (good-enough? guess x)
guess
(sqrt-iter (improve guess x)
x)))

(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
(sqrt-iter 1.0 x))

(define (average x y)
(/ (+ x y) 2))

(define (improve guess x)
(average guess (/ x guess)))

(define (square x) (* x x))

(sqrt 16)