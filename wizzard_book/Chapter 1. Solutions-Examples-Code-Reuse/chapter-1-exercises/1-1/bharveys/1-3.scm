(define (switch s)
    (cond
      (
       (equal? (butlast s) '())
       (cond
         ((equal? (first s) 'you) 'I)
         (else (first s))))
      ((member? (last s) '(I me)) (se (switch (butlast s)) 'you))
      ((equal? (last s) 'you) (se (switch (butlast s)) 'me))
      (else (se (switch (butlast s)) (last s)))))
