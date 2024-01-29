#lang simply-scheme
;; определите процедуру double, которая принимает как аргумент процедуру с одним аргументом
; и возвращает процедуру, которая применяет исходную процедуру дважды.
; например если процедура inc добавляет к своему аргументу 1, то (double inc) должна быть процедурой, которая добавляет 2

(define (inc x) (+ x 1))

; взять полученный результат на предыдущем шаге и повторить действие

(define (double proc)
  (lambda (x)
    (proc (proc x))))

(define double-inc (double inc))

(double-inc 2)

(define double-sqr (double (lambda (x) (* x x))))

(double-sqr 2)