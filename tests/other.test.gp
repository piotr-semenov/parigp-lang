## SYNTAX TEST "source.parigp" "Functions"


  v = ((y, {z: t_INT = 1}) -> y^2 + z^2)(10)
##^ source.parigp variable.name.parigp
## ^ ^ source.parigp constant.character.whitespace.parigp
##  ^ source.parigp keyword.operator.assignment.parigp
##    ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##     ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##      ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp variable.parameter.function.parigp
##       ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp markup.punctuation.separator.parigp
##        ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp constant.character.whitespace.parigp
##         ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp meta.function.parameter.optional.parigp meta.function.parameter.optional.begin.parigp
##          ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp meta.function.parameter.optional.parigp variable.parameter.function.parigp
##           ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp meta.function.parameter.optional.parigp markup.annotation.parigp
##            ^     ^ ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp meta.function.parameter.optional.parigp constant.character.whitespace.parigp
##             ^^^^^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp meta.function.parameter.optional.parigp support.type.parigp
##                   ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp meta.function.parameter.optional.parigp keyword.operator.assignment.parigp
##                     ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp meta.function.parameter.optional.parigp constant.numeric.int.parigp
##                      ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp meta.function.parameter.optional.parigp meta.function.parameter.optional.end.parigp
##                       ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                        ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp constant.character.whitespace.parigp
##                         ^^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp keyword.operator.lambda
##                           ^   ^ ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##                            ^     ^ source.parigp meta.parens.parigp variable.name.parigp
##                             ^  ^  ^ source.parigp meta.parens.parigp keyword.operator.arithmetic.parigp
##                              ^     ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##                               ^ ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##                                     ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                      ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                                       ^^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##                                         ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp

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

  x -> x
##^ source.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp variable.parameter.function.parigp
## ^ source.parigp meta.function.lambda.anonymous.parigp constant.character.whitespace.parigp
##  ^^ source.parigp meta.function.lambda.anonymous.parigp keyword.operator.lambda
##    ^ source.parigp constant.character.whitespace.parigp
##     ^ source.parigp variable.name.parigp

  [(x) -> x, 1]
##^ source.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
## ^^^ source.parigp meta.brackets.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp
##    ^ source.parigp meta.brackets.parigp meta.function.lambda.anonymous.parigp constant.character.whitespace.parigp
##     ^^ source.parigp meta.brackets.parigp meta.function.lambda.anonymous.parigp keyword.operator.lambda
##       ^ source.parigp meta.brackets.parigp constant.character.whitespace.parigp
##        ^ source.parigp meta.brackets.parigp variable.name.parigp
##         ^ source.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##          ^ source.parigp meta.brackets.parigp constant.character.whitespace.parigp
##           ^ source.parigp meta.brackets.parigp constant.numeric.int.parigp
##            ^ source.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp

  ({x} -> 1)()
##^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
## ^^^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp
##    ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp constant.character.whitespace.parigp
##     ^^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp keyword.operator.lambda
##       ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##        ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##         ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##          ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##           ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp

  (x -> 1)(10)
##^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
## ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp
##  ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp constant.character.whitespace.parigp
##   ^^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp keyword.operator.lambda
##     ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##      ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##       ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##        ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##         ^^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##           ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp

  \\ Currying
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
  ((x) -> (y) -> y + x^2)(1)(2)
##^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
## ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##  ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp variable.parameter.function.parigp
##   ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##    ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp constant.character.whitespace.parigp
##     ^^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp keyword.operator.lambda
##       ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##        ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##         ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp variable.parameter.function.parigp
##          ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##           ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp constant.character.whitespace.parigp
##            ^^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp keyword.operator.lambda
##              ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##               ^   ^ source.parigp meta.parens.parigp variable.name.parigp
##                ^ ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##                 ^ source.parigp meta.parens.parigp keyword.operator.arithmetic.parigp
##                    ^ source.parigp meta.parens.parigp keyword.operator.arithmetic.parigp
##                     ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##                      ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                       ^  ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                        ^  ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##                         ^  ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp

  (x -> y -> y + x^2)(1)(2)
##^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
## ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp variable.parameter.function.parigp
##  ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp constant.character.whitespace.parigp
##   ^^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp keyword.operator.lambda
##     ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##      ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp variable.parameter.function.parigp
##       ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp constant.character.whitespace.parigp
##        ^^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp keyword.operator.lambda
##          ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##           ^ source.parigp meta.parens.parigp variable.name.parigp
##            ^ ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##             ^ source.parigp meta.parens.parigp keyword.operator.arithmetic.parigp
##               ^ source.parigp meta.parens.parigp variable.name.parigp
##                ^ source.parigp meta.parens.parigp keyword.operator.arithmetic.parigp
##                 ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##                  ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                   ^  ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                    ^  ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##                     ^  ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
