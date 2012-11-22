#lang racket/base

(require "roman-numerals.rkt"
         rackunit)

; All examples taken from Wikipedia:
; http://en.wikipedia.org/wiki/Roman_numerals

(check-equal? (roman->number "MMVI") 2006)
(check-equal? (roman->number "MCMXLIV") 1944)
(check-equal? (roman->number "MDCCCCX") 1910)
(check-equal? (roman->number "MCMLIV") 1954)
(check-equal? (roman->number "MCMXC") 1990)

(check-equal? (roman->number "MDCCCCLXXXXVIIII") 1999)
(check-equal? (roman->number "MCMXCIX") 1999)
(check-equal? (roman->number "MIM") 1999)

(check-not-equal? (roman->number "MDCCCCLXXXXVIIII") 2000)
(check-not-equal? (roman->number "MCMXCIX") 2000)
(check-not-equal? (roman->number "MIM") 2000)

