#lang racket

(provide (rename-out [handle-id #%top]))

(require [for-syntax racket "roman-numerals.rkt"])

(define-for-syntax roman-table
  (hash #\x 10
        #\v 5
        #\i 1))

(define-syntax (handle-id stx)
  (syntax-case stx ()
    [(_ . any)
     (let ([str (symbol->string (syntax->datum #'any))])
       (if (roman-string? str)
           (with-syntax [(n (datum->syntax stx (roman->number str)))]
             #'(#%datum . n))
           #'(#%top . any)))]))