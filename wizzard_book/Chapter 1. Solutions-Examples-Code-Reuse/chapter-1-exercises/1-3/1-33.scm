#lang simply-scheme
; простое число делится на само себя и на единицу

(define (filtered-accumulate predicate combiner null-value term a next b)
  (
   (if (> a b)
       null-value
       (if (predicate a)
           (combiner (term a) (filtered-accumulate predicate combiner null-value term (next a) next b))
           (
            combiner null-value (filtered-accumulate predicate combiner null-value term (next a) next b))
            )
           )
   ))

(define (sum-squares-in-range a b)
  (define (square x) (* x x))
  (define (inc x) (+ x 1))
      (filtered-accumulate prime? + 0 square a inc b))

; произведение всех положительных целых чисел меньше n
; которые просты по отношению к n
; (то есть всех таких положительных целых чисел i < n, что НОД(i, n) = 1)

(define (product-of-numbers-smaller-and-prime-to-x x)
  (define (ident x) x)
  (define (inc x) (+ x 1))
  (define (greatest-common-divisor-predicate x y) (= (gcd x y) 1))
  (filtered-accumulate greatest-common-divisor-predicate * 1 ident 1 inc x)
  )