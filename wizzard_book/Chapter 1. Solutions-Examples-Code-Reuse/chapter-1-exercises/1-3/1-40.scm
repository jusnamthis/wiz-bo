#lang simply-scheme
; определите процедуру cubic, которую можно было бы использовать совместно с процедурой newtons-method в выражениях вида
; (newtons-method (cubic a b c) 1)
; для приближенного вычисления нулей кубических уравнений x^3 + ax^2 + bx + c

(define cubic (a b c)
  (lambda (x)
    (+
         (* x x x)
         (* a (* x x))
         (* b x)
         c)))