roman-numerals
==============

Write Roman Numeral Literals in Racket.  Installs a #%top macro that
checks whether an identifier fits the syntax of a Roman numeral and,
if so, converts it to one.  If the same identifier name is bound in
the module, however, the behavior depends on the order of binding.

roman-numerals.rkt: Roman numeral helper functions
roman-numerals-test.rkt: Test suite for the above

roman-macros.rkt: core macro

test-client.rkt: examples of use
