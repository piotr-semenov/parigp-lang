## SYNTAX TEST "source.parigp" "https://stackoverflow.com/a/65401338"

  \\ Code from https://stackoverflow.com/a/65401338
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp punctuation.definition.comment.parigp
  f(a)={my(e); [ispower(a,3,&e), e]}
##^ source.parigp meta.function.parigp entity.name.function.user.parigp
## ^ source.parigp meta.function.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##  ^ source.parigp meta.function.parigp variable.parameter.function.parigp
##   ^ source.parigp meta.function.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##    ^ source.parigp meta.function.parigp keyword.operator.assignment.parigp
##     ^ source.parigp punctuation.section.group.begin.parigp
##      ^^ source.parigp meta.block.parigp keyword.control.parigp
##        ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##         ^ source.parigp meta.block.parigp variable.name.parigp
##          ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##           ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
##            ^ source.parigp meta.block.parigp constant.character.whitespace.parigp
##             ^ source.parigp meta.block.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##              ^^^^^^^ source.parigp meta.block.parigp meta.brackets.parigp entity.name.function.builtins.parigp
##                     ^ source.parigp meta.block.parigp meta.brackets.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                      ^    ^ source.parigp meta.block.parigp meta.brackets.parigp meta.parens.parigp variable.name.parigp
##                       ^ ^ source.parigp meta.block.parigp meta.brackets.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                        ^ source.parigp meta.block.parigp meta.brackets.parigp meta.parens.parigp constant.numeric.int.parigp
##                          ^ source.parigp meta.block.parigp meta.brackets.parigp meta.parens.parigp keyword.operator.pointer.parigp
##                            ^ source.parigp meta.block.parigp meta.brackets.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                             ^ source.parigp meta.block.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##                              ^ source.parigp meta.block.parigp meta.brackets.parigp constant.character.whitespace.parigp
##                               ^ source.parigp meta.block.parigp meta.brackets.parigp variable.name.parigp
##                                ^ source.parigp meta.block.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                 ^ source.parigp punctuation.section.group.end.parigp
