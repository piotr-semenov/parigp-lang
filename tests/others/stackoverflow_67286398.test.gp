## SYNTAX TEST "source.parigp" "https://stackoverflow.com/a/67286398"

  \\ Code from https://stackoverflow.com/a/67286398
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp punctuation.definition.comment.parigp
  counts_for((v: t_VEC), lower: t_INT, upper: t_INT) = {
##^^^^^^^^^^ source.parigp meta.function.parigp entity.name.function.user.parigp
##          ^ source.parigp meta.function.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##           ^ source.parigp meta.function.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##            ^ source.parigp meta.function.parigp meta.parens.parigp meta.parens.parigp variable.parameter.function.parigp
##             ^ source.parigp meta.function.parigp meta.parens.parigp meta.parens.parigp markup.annotation.parigp
##              ^ source.parigp meta.function.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##               ^^^^^ source.parigp meta.function.parigp meta.parens.parigp meta.parens.parigp support.type.parigp
##                    ^ source.parigp meta.function.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                     ^             ^ source.parigp meta.function.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                      ^      ^      ^      ^ source.parigp meta.function.parigp meta.parens.parigp constant.character.whitespace.parigp
##                       ^^^^^         ^^^^^ source.parigp meta.function.parigp meta.parens.parigp variable.parameter.function.parigp
##                            ^             ^ source.parigp meta.function.parigp meta.parens.parigp markup.annotation.parigp
##                              ^^^^^         ^^^^^ source.parigp meta.function.parigp meta.parens.parigp support.type.parigp
##                                                 ^ source.parigp meta.function.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                                  ^ source.parigp meta.function.parigp constant.character.whitespace.parigp
##                                                   ^ source.parigp meta.function.parigp keyword.operator.assignment.parigp
##                                                    ^ source.parigp constant.character.whitespace.parigp
##                                                     ^ source.parigp meta.block.parigp punctuation.section.group.begin.parigp

    my(counts = vector(1+upper-lower));
##  ^^ source.parigp meta.block.parigp keyword.control.parigp
##    ^               ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##     ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##           ^ ^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##            ^ source.parigp meta.block.parigp keyword.operator.assignment.parigp
##              ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp entity.name.function.builtins.parigp
##                     ^ source.parigp meta.block.parigp meta.parens.parigp constant.numeric.int.parigp
##                      ^     ^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.arithmetic.parigp
##                       ^^^^^ ^^^^^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##                                  ^^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                    ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
    for(i=1, #v, counts[1+v[i]-lower]++);
##  ^^^ source.parigp meta.block.parigp keyword.control.parigp
##     ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##      ^     ^  ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##       ^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.assignment.parigp
##        ^             ^ source.parigp meta.block.parigp meta.parens.parigp constant.numeric.int.parigp
##         ^   ^ source.parigp meta.block.parigp meta.parens.parigp markup.punctuation.separator.parigp
##          ^   ^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##           ^ source.parigp meta.block.parigp keyword.operator.cardinality.parigp
##                     ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                       ^    ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp keyword.operator.arithmetic.parigp
##                        ^    ^^^^^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp variable.name.parigp
##                         ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                          ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp meta.brackets.parigp variable.name.parigp
##                           ^      ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                   ^^ source.parigp meta.block.parigp keyword.operator.increment-decrement.parigp
##                                     ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                      ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
    vector(#counts, i, [i-1, counts[i]])
##  ^^^^^^ source.parigp meta.block.parigp entity.name.function.builtins.parigp
##        ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##         ^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.cardinality.parigp
##          ^^^^^^  ^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##                ^  ^ source.parigp meta.block.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                 ^  ^ source.parigp meta.block.parigp constant.character.whitespace.parigp
##                     ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                      ^    ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp variable.name.parigp
##                       ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp keyword.operator.arithmetic.parigp
##                        ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                         ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##                          ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp constant.character.whitespace.parigp
##                                 ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                                  ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp meta.brackets.parigp variable.name.parigp
##                                   ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                    ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                     ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
  };
##^ source.parigp punctuation.section.group.end.parigp
## ^ source.parigp markup.punctuation.statement-terminator.parigp

  counts_for1({v: t_VEC}) = {
##^^^^^^^^^^^ source.parigp entity.name.function.user.parigp
##           ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##            ^ source.parigp meta.function.parigp meta.parens.parigp meta.function.parameter.optional.parigp meta.function.parameter.optional.begin.parigp
##             ^ source.parigp meta.function.parigp meta.parens.parigp meta.function.parameter.optional.parigp variable.parameter.function.parigp
##              ^ source.parigp meta.function.parigp meta.parens.parigp meta.function.parameter.optional.parigp markup.annotation.parigp
##               ^ source.parigp meta.function.parigp meta.parens.parigp meta.function.parameter.optional.parigp constant.character.whitespace.parigp
##                ^^^^^ source.parigp support.type.parigp
##                     ^ source.parigp meta.function.parigp meta.parens.parigp meta.function.parameter.optional.parigp meta.function.parameter.optional.end.parigp
##                      ^ source.parigp meta.function.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                       ^ source.parigp meta.function.parigp constant.character.whitespace.parigp
##                        ^ source.parigp meta.function.parigp keyword.operator.assignment.parigp
##                         ^ source.parigp constant.character.whitespace.parigp
##                          ^ source.parigp meta.block.parigp punctuation.section.group.begin.parigp
    counts_for(v, vecmin(v), vecmax(v))
##  ^^^^^^^^^^ source.parigp meta.block.parigp variable.name.parigp
##            ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##             ^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##              ^          ^ source.parigp meta.block.parigp meta.parens.parigp markup.punctuation.separator.parigp
##               ^          ^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##                ^^^^^^     ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp entity.name.function.builtins.parigp
##                      ^          ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                       ^          ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##                        ^          ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                    ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
  };
##^ source.parigp punctuation.section.group.end.parigp
## ^ source.parigp markup.punctuation.statement-terminator.parigp

  most_frequent(v: t_VEC) = {
##^^^^^^^^^^^^^ source.parigp meta.function.parigp entity.name.function.user.parigp
##             ^ source.parigp meta.function.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##              ^ source.parigp meta.function.parigp meta.parens.parigp variable.parameter.function.parigp
##               ^ source.parigp meta.function.parigp meta.parens.parigp markup.annotation.parigp
##                ^ source.parigp meta.function.parigp meta.parens.parigp constant.character.whitespace.parigp
##                 ^^^^^ source.parigp meta.function.parigp meta.parens.parigp support.type.parigp
##                      ^ source.parigp meta.function.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                       ^ source.parigp meta.function.parigp constant.character.whitespace.parigp
##                        ^ source.parigp meta.function.parigp keyword.operator.assignment.parigp
##                         ^ source.parigp constant.character.whitespace.parigp
##                          ^ source.parigp meta.block.parigp punctuation.section.group.begin.parigp
    my(counts=counts_for1(v));
##  ^^ source.parigp meta.block.parigp keyword.control.parigp
##    ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##     ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##           ^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.assignment.parigp
##            ^^^^^^^^^^^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##                       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                        ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##                         ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                          ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                           ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
    vecsort(counts, [2], 4)[1][1]
##  ^^^^^^^ source.parigp meta.block.parigp entity.name.function.builtins.parigp
##         ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##          ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##                ^    ^ source.parigp meta.block.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                 ^    ^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##                  ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                   ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                    ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                       ^ source.parigp meta.block.parigp meta.parens.parigp constant.numeric.int.parigp
##                        ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                         ^  ^ source.parigp meta.block.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                          ^  ^ source.parigp meta.block.parigp meta.brackets.parigp constant.numeric.int.parigp
##                           ^  ^ source.parigp meta.block.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
  };
##^ source.parigp punctuation.section.group.end.parigp
## ^ source.parigp markup.punctuation.statement-terminator.parigp
