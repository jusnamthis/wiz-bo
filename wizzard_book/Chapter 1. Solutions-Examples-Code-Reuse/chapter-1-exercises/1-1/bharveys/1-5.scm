(define (ends-e sent)
    (cond
      ((equal? sent '()) '())
      ((equal?
        'e
        (last (first sent)))
       (se (first sent) (ends-e (bf sent))))
      (else
       (se '() (ends-e (bf sent))))))
