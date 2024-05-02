## SYNTAX TEST "source.parigp" "Functions"

  Col([])
##^^^ source.parigp entity.name.function.builtins.parigp
##   ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##    ^ source.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##     ^ source.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##      ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp

  x = Mod(4, 5);
##^ source.parigp variable.name.parigp
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
##                                              ^  ^ source.parigp constant.character.whitespace.parigp
##                                               ^^ source.parigp keyword.operator.lambda
##                                                  ^ source.parigp meta.block.parigp punctuation.section.group.begin.parigp
##                                                   ^                     ^ source.parigp meta.block.parigp constant.character.whitespace.parigp
##                                                    ^^^^^^ source.parigp meta.block.parigp keyword.control.parigp
##                                                          ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                                                           ^   ^   ^ source.parigp meta.block.parigp variable.name.parigp
##                                                             ^   ^ source.parigp meta.block.parigp keyword.operator.arithmetic.parigp
##                                                                       ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                                                        ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
##                                                                          ^ source.parigp punctuation.section.group.end.parigp

  \\ Code from https://stackoverflow.com/a/65401338
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
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
##                          ^ source.parigp meta.block.parigp meta.brackets.parigp meta.parens.parigp keyword.operator.pointer.parigp
##                            ^ source.parigp meta.block.parigp meta.brackets.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                             ^ source.parigp meta.block.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##                              ^ source.parigp meta.block.parigp meta.brackets.parigp constant.character.whitespace.parigp
##                               ^ source.parigp meta.block.parigp meta.brackets.parigp variable.name.parigp
##                                ^ source.parigp meta.block.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                 ^ source.parigp punctuation.section.group.end.parigp

  \\ Code from https://stackoverflow.com/a/67286398
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
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


  \\ Code from https://stackoverflow.com/a/72443498
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
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
