(define (squares numbers)
    (cond
      ((empty? numbers) '())
      (else (se (sq (first numbers)) (squares (bf numbers))))))
