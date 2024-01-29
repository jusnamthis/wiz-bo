#lang simply-scheme
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (inc a) (+ a 1))

(define (ident a) a)

(accumulate * 1 ident 1 inc 5) ;; факториал 5