#lang racket

(require rackunit) ;; unit testing

(require "roman-macros.rkt") ;; recognizes Roman Numerals

(check-equal? X 10)
(check-equal? XVII 17)

(define (square x) (* x x))

(check-equal? (square X) 100)

(check-equal? (- MDCCCCLXXXXVIIII MIM) 0)
