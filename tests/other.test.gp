## SYNTAX TEST "source.parigp" "Functions"

  [(x) -> x, 1]
##^ source.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
## ^ source.parigp meta.brackets.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##  ^ source.parigp meta.brackets.parigp meta.parens.parigp variable.name.parigp
##   ^ source.parigp meta.brackets.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##    ^  ^  ^ source.parigp meta.brackets.parigp constant.character.whitespace.parigp
##     ^^ source.parigp meta.brackets.parigp keyword.operator.lambda
##        ^ source.parigp meta.brackets.parigp variable.name.parigp
##         ^ source.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##           ^ source.parigp meta.brackets.parigp constant.numeric.int.parigp
##            ^ source.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp

  \q
##^^ source.parigp support.function.parigp

  \w "output.txt"
##^^ source.parigp support.function.parigp
##  ^ source.parigp constant.character.whitespace.parigp
##   ^^^^^^^^^^^^ source.parigp constant.character.escape.parigp

  x = 1;
  x *= 10;
##^ source.parigp variable.name.parigp
## ^  ^ source.parigp constant.character.whitespace.parigp
##  ^^ source.parigp keyword.operator.arithmetic.assign.parigp
##     ^^ source.parigp constant.numeric.int.parigp
##       ^ source.parigp markup.punctuation.statement-terminator.parigp

  y = x >> 2;
##^   ^ source.parigp variable.name.parigp
## ^ ^ ^  ^ source.parigp constant.character.whitespace.parigp
##  ^ source.parigp keyword.operator.assignment.parigp
##      ^^ source.parigp keyword.operator.shift.parigp
##         ^ source.parigp constant.numeric.int.parigp
##          ^ source.parigp markup.punctuation.statement-terminator.parigp
