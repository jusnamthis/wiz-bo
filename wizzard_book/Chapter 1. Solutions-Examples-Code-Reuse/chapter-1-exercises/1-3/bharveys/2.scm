(define (every proc args)
    (cond
      ((equal? args '()) '())
      (else
       (se
        (proc (first args))
        (every proc (bf args))))))
