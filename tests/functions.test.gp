## SYNTAX TEST "source.parigp" "Functions"

  -oo
##^ source.parigp keyword.operator.arithmetic.parigp
## ^^ source.parigp constant.language.parigp

  x = Euler() * I
##^ source.parigp variable.name.parigp
## ^ ^ source.parigp constant.character.whitespace.parigp
##  ^ source.parigp keyword.operator.assignment.parigp
##    ^^^^^     ^ source.parigp constant.language.parigp
##         ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##          ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##           ^ ^ source.parigp constant.character.whitespace.parigp
##            ^ source.parigp keyword.operator.arithmetic.parigp

  Col([])
##^^^ source.parigp entity.name.function.builtins.parigp
##   ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##    ^ source.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##     ^ source.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##      ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp

  x = Mod(4, 5);
##^ source.parigp variable.name.parigp
## ^ ^ source.parigp constant.character.whitespace.parigp
##  ^ source.parigp keyword.operator.assignment.parigp
##    ^^^ source.parigp entity.name.function.builtins.parigp
##       ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##        ^  ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##         ^ source.parigp meta.parens.parigp markup.punctuation.separator.parigp
##          ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##            ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##             ^ source.parigp markup.punctuation.statement-terminator.parigp

  x.mod
##^ source.parigp variable.name.parigp
## ^ source.parigp markup.punctuation.member.parigp
##  ^^^ source.parigp entity.name.function.member.builtins.parigp

  ellinit([0, 0, 0, -1, 0]).b2
##^^^^^^^ source.parigp entity.name.function.builtins.parigp
##       ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##        ^ source.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##         ^  ^  ^   ^  ^ source.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##          ^  ^  ^   ^ source.parigp meta.parens.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##           ^  ^  ^   ^ source.parigp meta.parens.parigp meta.brackets.parigp constant.character.whitespace.parigp
##                  ^ source.parigp meta.parens.parigp meta.brackets.parigp keyword.operator.arithmetic.parigp
##                       ^ source.parigp meta.parens.parigp punctuation.section.brackets.end.parigp
##                        ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                         ^ source.parigp markup.punctuation.member.parigp
##                          ^^ source.parigp entity.name.function.member.builtins.parigp

  allocatemem();
##^^^^^^^^^^^ source.parigp keyword.control.parigp
##           ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##            ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##             ^ source.parigp markup.punctuation.statement-terminator.parigp

  times = ((x), (y: t_REAL), {sign: t_INT = +1}) -> { return(x * y * sign); }
##^^^^^ source.parigp meta.function.lambda.parigp entity.name.function.user.lambda.parigp
##     ^ ^ source.parigp meta.function.lambda.parigp constant.character.whitespace.parigp
##      ^ source.parigp meta.function.lambda.parigp keyword.operator.assignment.parigp
##        ^ source.parigp meta.function.lambda.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##         ^    ^ source.parigp meta.function.lambda.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##          ^    ^ source.parigp meta.function.lambda.parigp meta.parens.parigp meta.parens.parigp variable.parameter.function.parigp
##           ^            ^ source.parigp meta.function.lambda.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##            ^            ^ source.parigp meta.function.lambda.parigp meta.parens.parigp markup.punctuation.separator.parigp
##             ^            ^ source.parigp meta.function.lambda.parigp meta.parens.parigp constant.character.whitespace.parigp
##                ^ source.parigp meta.function.lambda.parigp meta.parens.parigp markup.annotation.parigp
##                 ^ source.parigp meta.function.lambda.parigp meta.parens.parigp constant.character.whitespace.parigp
##                  ^^^^^^ source.parigp meta.function.lambda.parigp meta.parens.parigp support.type.parigp
##                           ^ source.parigp meta.function.lambda.parigp meta.parens.parigp meta.function.parameter.optional.begin.parigp
##                            ^^^^ source.parigp meta.function.lambda.parigp meta.parens.parigp meta.function.parameter.optional.parigp variable.parameter.function.parigp
##                                ^ source.parigp meta.function.lambda.parigp meta.parens.parigp meta.function.parameter.optional.parigp markup.annotation.parigp
##                                 ^ source.parigp meta.function.lambda.parigp meta.parens.parigp meta.function.parameter.optional.parigp constant.character.whitespace.parigp
##                                  ^^^^^ source.parigp meta.function.lambda.parigp meta.parens.parigp meta.function.parameter.optional.parigp support.type.parigp
##                                       ^ ^ source.parigp meta.function.lambda.parigp meta.parens.parigp meta.function.parameter.optional.parigp constant.character.whitespace.parigp
##                                        ^ source.parigp meta.function.lambda.parigp meta.parens.parigp meta.function.parameter.optional.parigp keyword.operator.assignment.parigp
##                                          ^ source.parigp meta.function.lambda.parigp meta.parens.parigp meta.function.parameter.optional.parigp keyword.operator.arithmetic.parigp
##                                           ^ source.parigp meta.function.lambda.parigp meta.parens.parigp meta.function.parameter.optional.parigp constant.numeric.int.parigp
##                                            ^ source.parigp meta.function.lambda.parigp meta.parens.parigp meta.function.parameter.optional.end.parigp
##                                             ^ source.parigp meta.function.lambda.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                              ^ source.parigp meta.function.lambda.parigp constant.character.whitespace.parigp
##                                               ^^ source.parigp keyword.operator.lambda
##                                                 ^ source.parigp constant.character.whitespace.parigp
##                                                  ^ source.parigp meta.block.parigp punctuation.section.group.begin.parigp
##                                                   ^                     ^ source.parigp meta.block.parigp constant.character.whitespace.parigp
##                                                    ^^^^^^ source.parigp meta.block.parigp keyword.control.parigp
##                                                          ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                                                           ^   ^   ^ source.parigp meta.block.parigp variable.name.parigp
##                                                            ^ ^ ^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##                                                             ^   ^ source.parigp meta.block.parigp keyword.operator.arithmetic.parigp
##                                                                       ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                                                        ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
##                                                                          ^ source.parigp punctuation.section.group.end.parigp

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
##^^ source.parigp constant.character.whitespace.parigp
##  ^^ source.parigp support.function.parigp

  \w "output.txt"
##^^ source.parigp support.function.parigp
##  ^ source.parigp constant.character.whitespace.parigp
##   ^^^^^^^^^^^^ source.parigp constant.character.escape.parigp

  x -> x
##^ source.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp variable.parameter.function.parigp
## ^ source.parigp meta.function.lambda.anonymous.parigp constant.character.whitespace.parigp
##  ^^ source.parigp meta.function.lambda.anonymous.parigp keyword.operator.lambda
##    ^ source.parigp constant.character.whitespace.parigp
##     ^ source.parigp variable.name.parigp

  [(x) -> x, 1]
##^ source.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
## ^ source.parigp meta.brackets.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##  ^ source.parigp meta.brackets.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp variable.parameter.function.parigp
##   ^ source.parigp meta.brackets.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.parens.parigp punctuation.section.parens.end.parigp
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
## ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.function.parameter.optional.parigp meta.function.parameter.optional.begin.parigp
##  ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.function.parameter.optional.parigp variable.parameter.function.parigp
##   ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp meta.function.parameter.optional.parigp meta.function.parameter.optional.end.parigp
##    ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp constant.character.whitespace.parigp
##     ^^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp keyword.operator.lambda
##       ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##        ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##         ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##          ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##           ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp

  (x -> 1)(10)
##^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
## ^ source.parigp meta.parens.parigp meta.function.lambda.anonymous.parigp entity.name.function.user.lambda.anonymous.parigp variable.parameter.function.parigp
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

  less = (x, y) -> x < y;
##^^^^ source.parigp entity.name.function.user.lambda.parigp
##    ^ ^      ^  ^ ^ ^ source.parigp constant.character.whitespace.parigp
##     ^ source.parigp keyword.operator.assignment.parigp
##       ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##        ^  ^ source.parigp meta.function.lambda.parigp meta.parens.parigp variable.parameter.function.parigp
##         ^ source.parigp meta.function.lambda.parigp meta.parens.parigp markup.punctuation.separator.parigp
##          ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##            ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##              ^^ source.parigp keyword.operator.lambda
##                 ^   ^ source.parigp variable.name.parigp
##                   ^ source.parigp keyword.operator.comparison.parigp
##                      ^ source.parigp markup.punctuation.statement-terminator.parigp

  (greater10 = x -> x > 10);
##^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
## ^^^^^^^^^ source.parigp entity.name.function.user.lambda.parigp
##          ^ ^ source.parigp meta.parens.parigp meta.function.lambda.parigp constant.character.whitespace.parigp
##           ^ source.parigp meta.parens.parigp meta.function.lambda.parigp keyword.operator.assignment.parigp
##             ^ source.parigp meta.parens.parigp meta.function.lambda.parigp variable.parameter.function.parigp
##               ^^ source.parigp keyword.operator.lambda
##                 ^ ^ ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##                  ^ source.parigp variable.name.parigp
##                    ^ source.parigp keyword.operator.comparison.parigp
##                      ^^ source.parigp constant.numeric.int.parigp
##                        ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                         ^ source.parigp markup.punctuation.statement-terminator.parigp

  \\ Code from pages 39-40 of "User's Guide to PARI/GP"
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp punctuation.definition.comment.parigp
  x.r = {
##^ source.parigp variable.name.parigp
## ^ source.parigp meta.function.member.parigp markup.punctuation.member.parigp
##  ^ source.parigp entity.name.function.user.member.parigp
##   ^ source.parigp meta.function.member.parigp constant.character.whitespace.parigp
##    ^ source.parigp meta.function.member.parigp keyword.operator.assignment.parigp
##     ^ source.parigp constant.character.whitespace.parigp
##      ^ source.parigp meta.block.parigp punctuation.section.group.begin.parigp
    if (type(x) != "t_VEC" || length(x) < 14,
##^^ source.parigp meta.block.parigp constant.character.whitespace.parigp
##  ^^ source.parigp meta.block.parigp entity.name.function.builtins.parigp
##    ^ source.parigp meta.block.parigp constant.character.whitespace.parigp
##     ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##      ^^^^ source.parigp meta.block.parigp meta.parens.parigp entity.name.function.builtins.parigp
##          ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##           ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##            ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##             ^  ^       ^  ^         ^ ^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##              ^^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.comparison.parigp
##                 ^^^^^^^ source.parigp meta.block.parigp meta.parens.parigp constant.character.escape.parigp
##                         ^^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.logical.parigp
##                            ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp entity.name.function.builtins.parigp
##                                  ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                                   ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##                                    ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                      ^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.comparison.parigp
##                                        ^^ source.parigp meta.block.parigp meta.parens.parigp constant.numeric.int.parigp
##                                          ^ source.parigp meta.block.parigp meta.parens.parigp markup.punctuation.separator.parigp
        error("this is not a proper elliptic curve: " x)
##^^^^^^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##      ^^^^^ source.parigp meta.block.parigp meta.parens.parigp keyword.control.parigp
##           ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp constant.character.escape.parigp
##                                                   ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##                                                    ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##                                                     ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
    );
##^^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##  ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##   ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
    x[13]
##^^ source.parigp meta.block.parigp constant.character.whitespace.parigp
##  ^ source.parigp meta.block.parigp variable.name.parigp
##   ^ source.parigp meta.block.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##    ^^ source.parigp meta.block.parigp meta.brackets.parigp constant.numeric.int.parigp
##      ^ source.parigp meta.block.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
  };
##^ source.parigp meta.block.parigp punctuation.section.group.end.parigp
## ^ source.parigp markup.punctuation.statement-terminator.parigp
