## SYNTAX TEST "source.parigp" "Operators"

  (var! + 100!)
##    ^ source.parigp keyword.operator.factorial.parigp
##      ^ source.parigp keyword.operator.arithmetic.parigp
##           ^ source.parigp keyword.operator.factorial.parigp

  (1 && []) || (0 || "string")
##   ^^ source.parigp keyword.operator.logical.parigp
##          ^^ source.parigp keyword.operator.logical.parigp
##                ^^ source.parigp keyword.operator.logical.parigp

  if(!cond,,print("Bad!"));
##   ^ source.parigp keyword.operator.logical.parigp

  (1 >= 1) && (10 <= 11) || (x > 0)
##   ^^ source.parigp keyword.operator.comparison.parigp
##         ^^ source.parigp keyword.operator.logical.parigp
##                ^^ source.parigp keyword.operator.comparison.parigp
##                       ^^ source.parigp keyword.operator.logical.parigp
##                             ^ source.parigp keyword.operator.comparison.parigp

  y < 0
##  ^ source.parigp keyword.operator.comparison.parigp

  x = 10;
##  ^ source.parigp keyword.operator.assignment.parigp

  [1..100]
##  ^^ source.parigp keyword.operator.range.parigp

  [1, 2, 3; 4, 5, 6]~
##                  ^ source.parigp keyword.operator.transpose.parigp

  [('x^2 + 1)', 1; 1, 'x]'
##           ^ source.parigp keyword.operator.derivative.parigp
##                       ^ source.parigp keyword.operator.derivative.parigp
