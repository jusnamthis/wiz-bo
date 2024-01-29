(define (ordered? nums)
    (cond
      ((equal? nums '()) #t)
      ((equal? (bf nums) '()) #t)
      (else
       (and
        (< (first nums)
           (first (bf nums)))
        (ordered? (bf nums))))))
