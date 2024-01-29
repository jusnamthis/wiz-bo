#lang simply-scheme
;; вычисляет произведение значений функций? что это значит?
;; есть одна функция, есть интервал
;; например f(x)
;; например f(1) = 100
;; f(2) = 200;
;; f(3) = 300;
;; тогда конечным результатом будет 100 * 200 * 300

(define (product func a next b)
   (if (> a b)
      1
      (*
       (func a)
       (product func (next a) next b))))

;; допустим функция - x квадрат

;(define (sqr x) (* x x))
(define (inc x) (+ x 1))

;(product sqr 1 inc 4)

;; покажите как с помощью этой процедуры (product) определить factorial

(define (ident x) x)

(define (factorial x)
  (product ident 1 inc x))

(factorial 9)
