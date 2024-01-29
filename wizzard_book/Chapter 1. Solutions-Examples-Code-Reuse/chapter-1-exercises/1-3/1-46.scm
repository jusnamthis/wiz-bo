#lang simply-scheme

(define (iterative-improve good-enough? improve)
  (lambda (x)
    (if (good-enough? x)
        x
        ((iterative-improve good-enough? improve) ((improve) x)))))

(define (sqrt x)
  (define approximation 0.0001)
  
  (define (abs x)
    (if (< x 0)
        (- x)
        x))
  
  (define (square y) (* y y))
  
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) approximation))
  
  (define (improve)
    (lambda (guess) (average guess (/ x guess))))
  
  (define (average x y) (/ (+ x y) 2))
  
  ((iterative-improve good-enough? improve) 1.0))

(sqrt 16)