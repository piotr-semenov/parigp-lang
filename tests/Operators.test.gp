## SYNTAX TEST "source.parigp" "Operators"

  (var! + 100!)
##    ^ source.parigp keyword.operator.factorial
##      ^ source.parigp keyword.operator.arithmetic
##           ^ source.parigp keyword.operator.factorial

  (1 && []) || (0 || "string")
##   ^^ source.parigp keyword.operator.logical
##          ^^ source.parigp keyword.operator.logical
##                ^^ source.parigp keyword.operator.logical

  if(!cond,,print("Bad!"));
##   ^ source.parigp keyword.operator.logical

  (1 >= 1) && (10 <= 11) || (x > 0)
##   ^^ source.parigp keyword.operator.comparison
##         ^^ source.parigp keyword.operator.logical
##                ^^ source.parigp keyword.operator.comparison
##                       ^^ source.parigp keyword.operator.logical
##                             ^ source.parigp keyword.operator.comparison

  y < 0
##  ^ source.parigp keyword.operator.comparison

  x = 10;
##  ^ source.parigp keyword.operator.assignment

  [1..100]
##  ^^ source.parigp keyword.operator.range

  [1, 2, 3; 4, 5, 6]~
##                  ^ source.parigp keyword.operator.transpose

  ('x^2 + 1)'
##          ^ source.parigp keyword.operator.derivative
