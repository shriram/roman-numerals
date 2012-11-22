#lang racket

(provide roman-string? roman->number)

(require [for-syntax racket])

(define roman-table
  (hash #\M 1000
        #\D 500
        #\C 100
        #\L 50
        #\X 10
        #\V 5
        #\I 1))

(define (roman-string? s)
  (andmap (lambda (c)
            (hash-ref roman-table c false))
          (string->list s)))

(define (roman->number s)
  (let ([nums (map (λ (c) (hash-ref roman-table c)) (string->list s))])
    (let loop ([ns nums])
      (cond
        [(empty? ns) 0]
        [(empty? (rest ns)) (first ns)]
        [(cons? (rest ns))
         (if (>= (first ns) (first (rest ns)))
             (+ (first ns) (loop (rest ns)))
             (+ (- (first (rest ns)) (first ns))
                (loop (rest (rest ns)))))]))))
