#lang simply-scheme

(define (repeated proc x)
  (lambda (repeat-count)
    ;(if (= repeat-count 0)
        ;x
        ;(
         ;; по текущей логике эта лямбда-процедура должна вызывать сама себя, но она этого не может делать, тк никак к ней не обратиться --
         ;; процедура анонимная

    ;; идея в том, что repeat-count - это количество повторений, я могу его уменьшать, но куда мне его передавать
    ;; достигнув нуля в repeat-count можно передать полученное значение
    ;; значение будет получено путём вычисления proc к x
    ;; при этом x меняется с каждым вызовом
    (if (= repeat-count 0)
        x
        ((repeated proc (proc x)) (- repeat-count 1)))))


;; например возвести два в квадрат трижды это 8

(define (square x) (* x x))
((repeated square 2) 3)

(define (inc x) (+ x 1))
((repeated inc 5) 10)