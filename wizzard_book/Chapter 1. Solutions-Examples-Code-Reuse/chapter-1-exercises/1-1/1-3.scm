#lang simply-scheme

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (two-biggest-numbers-sum x y z) (cond ((and (> x y) (> z y)) (sum-of-squares x z))
                                             ((and (> y x) (> z x)) (sum-of-squares y z))
                                             ((and (> y z) (> x z)) (sum-of-squares x y))
                                             (else (+ x y z))))

(two-biggest-numbers-sum 1 1 1)