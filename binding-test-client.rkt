#lang racket

(require rackunit) ;; unit testing

(require "roman-macros.rkt") ;; recognizes Roman Numerals

;; Note that binding identifiers masks them

(check-equal?
  (let ([I 23])
    (+ I I))
  46)

(define V 57)

(check-equal? (+ V V) 114)

(check-equal? X 10)

;; so that they're no longer Roman numerals