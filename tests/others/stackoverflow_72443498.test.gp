## SYNTAX TEST "source.parigp" "https://stackoverflow.com/a/72443498"

  \\ Code from https://stackoverflow.com/a/72443498
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp punctuation.definition.comment.parigp
  M = matreduce([1,2,1,1,2,2,2,3,1,2,1,3]);
##^ source.parigp variable.name.parigp
## ^ ^ source.parigp constant.character.whitespace.parigp
##  ^ source.parigp keyword.operator.assignment.parigp
##    ^^^^^^^^^ source.parigp entity.name.function.builtins.parigp
##             ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##              ^ source.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##               ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ source.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ source.parigp meta.parens.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##                                      ^ source.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                       ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                        ^ source.parigp markup.punctuation.statement-terminator.parigp
  N = 4;
##^ source.parigp variable.name.parigp
## ^ ^ source.parigp constant.character.whitespace.parigp
##  ^ source.parigp keyword.operator.assignment.parigp
##    ^ source.parigp constant.numeric.int.parigp
##     ^ source.parigp markup.punctuation.statement-terminator.parigp
  pred = (elt) -> elt > N;
##^^^^ source.parigp entity.name.function.user.lambda.parigp
##    ^ ^     ^  ^   ^ ^ source.parigp constant.character.whitespace.parigp
##     ^ source.parigp keyword.operator.assignment.parigp
##       ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##        ^^^ source.parigp meta.function.lambda.parigp meta.parens.parigp variable.parameter.function.parigp
##           ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##             ^^ source.parigp keyword.operator.lambda
##                ^^^   ^ source.parigp variable.name.parigp
##                    ^ source.parigp keyword.operator.comparison.parigp
##                       ^ source.parigp markup.punctuation.statement-terminator.parigp
  #select(pred, M[,2])
##^ source.parigp keyword.operator.cardinality.parigp
## ^^^^^^ source.parigp entity.name.function.builtins.parigp
##       ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##        ^^^^  ^ source.parigp meta.parens.parigp variable.name.parigp
##            ^ source.parigp meta.parens.parigp markup.punctuation.separator.parigp
##             ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##               ^ source.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                ^ source.parigp meta.parens.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##                 ^ source.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                  ^ source.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                   ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
