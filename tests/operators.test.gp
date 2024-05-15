## SYNTAX TEST "source.parigp" "Operators"

  (var! + 100!)
##^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
## ^^^ source.parigp meta.parens.parigp variable.name.parigp
##    ^      ^ source.parigp meta.parens.parigp keyword.operator.factorial.parigp
##     ^ ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##      ^ source.parigp keyword.operator.arithmetic.parigp
##            ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp

  (1 && []) || (0 || "string")
##^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
## ^            ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##   ^^ source.parigp meta.parens.parigp keyword.operator.logical.parigp
##  ^  ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##      ^ source.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##       ^ source.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##        ^                  ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##         ^  ^ source.parigp constant.character.whitespace.parigp
##          ^^ source.parigp keyword.operator.logical.parigp
##               ^  ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##                ^^ source.parigp meta.parens.parigp keyword.operator.logical.parigp
##                   ^^^^^^^^ source.parigp meta.parens.parigp constant.character.escape.parigp

  if(!cond,,print("Bad!"));
##^^ source.parigp entity.name.function.builtins.parigp
##  ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##   ^ source.parigp keyword.operator.logical.parigp
##    ^^^^ source.parigp meta.parens.parigp variable.name.parigp
##        ^^ source.parigp meta.parens.parigp markup.punctuation.separator.parigp
##          ^^^^^ source.parigp meta.parens.parigp entity.name.function.builtins.parigp
##               ^ source.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                ^^^^^^ source.parigp meta.parens.parigp meta.parens.parigp constant.character.escape.parigp
##                      ^ source.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                       ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                        ^ source.parigp markup.punctuation.statement-terminator.parigp

  (1 >= 1) && (10 <= 11) || (x > 0)
##^           ^             ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
## ^    ^      ^^    ^^          ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##  ^  ^         ^  ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##   ^^           ^^           ^ source.parigp meta.parens.parigp keyword.operator.comparison.parigp
##       ^             ^          ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##        ^  ^          ^  ^ source.parigp constant.character.whitespace.parigp
##         ^^            ^^ source.parigp keyword.operator.logical.parigp

  y < 0
##^ source.parigp variable.name.parigp
## ^ ^ source.parigp constant.character.whitespace.parigp
##  ^ source.parigp keyword.operator.comparison.parigp
##    ^ source.parigp constant.numeric.int.parigp

  x = 10;
##^ source.parigp variable.name.parigp
## ^ ^ source.parigp constant.character.whitespace.parigp
##  ^ source.parigp keyword.operator.assignment.parigp
##    ^^ source.parigp constant.numeric.int.parigp
##      ^ source.parigp markup.punctuation.statement-terminator.parigp

  [1..100]
##^ source.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
## ^  ^^^ source.parigp meta.brackets.parigp constant.numeric.int.parigp
##  ^^ source.parigp keyword.operator.range.parigp
##       ^ source.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp

  [1, 2, 3; 4, 5, 6]~
##^ source.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
## ^  ^  ^  ^  ^  ^ source.parigp meta.brackets.parigp constant.numeric.int.parigp
##  ^  ^  ^  ^  ^ source.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##   ^  ^  ^  ^  ^ source.parigp meta.brackets.parigp constant.character.whitespace.parigp
##                 ^ source.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                  ^ source.parigp keyword.operator.transpose.parigp

  [('x^2 + 1)', 1; 1, 'x]'
##^ source.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
## ^ source.parigp meta.brackets.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##  ^^ source.parigp meta.brackets.parigp meta.parens.parigp variable.name.parigp
##    ^ source.parigp meta.brackets.parigp meta.parens.parigp keyword.operator.arithmetic.parigp
##     ^   ^ source.parigp meta.brackets.parigp meta.parens.parigp constant.numeric.int.parigp
##      ^ ^ source.parigp meta.brackets.parigp meta.parens.parigp constant.character.whitespace.parigp
##          ^ source.parigp meta.brackets.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##           ^ source.parigp meta.brackets.parigp keyword.operator.derivative.parigp
##            ^  ^  ^ source.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##             ^  ^  ^ source.parigp meta.brackets.parigp constant.character.whitespace.parigp
##                    ^^ source.parigp meta.brackets.parigp variable.name.parigp
##                      ^ source.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                       ^ source.parigp keyword.operator.derivative.parigp

  x = 1; x *= 10;
##^      ^ source.parigp variable.name.parigp
## ^ ^  ^ ^  ^ source.parigp constant.character.whitespace.parigp
##  ^ source.parigp keyword.operator.assignment.parigp
##         ^^ source.parigp keyword.operator.arithmetic.assignment.parigp
##    ^       ^^ source.parigp constant.numeric.int.parigp
##     ^        ^ source.parigp markup.punctuation.statement-terminator.parigp

  y = x >> 2;
##^   ^ source.parigp variable.name.parigp
## ^ ^ ^  ^ source.parigp constant.character.whitespace.parigp
##  ^ source.parigp keyword.operator.assignment.parigp
##      ^^ source.parigp keyword.operator.shift.parigp
##         ^ source.parigp constant.numeric.int.parigp
##          ^ source.parigp markup.punctuation.statement-terminator.parigp

  # [1, 2, 3]
##^ source.parigp keyword.operator.cardinality.parigp
## ^ source.parigp constant.character.whitespace.parigp
##  ^ source.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##   ^  ^  ^ source.parigp meta.brackets.parigp constant.numeric.int.parigp
##    ^  ^ source.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##     ^  ^ source.parigp meta.brackets.parigp constant.character.whitespace.parigp
##          ^ source.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
