## SYNTAX TEST "source.parigp" "http://www.boojum.org.uk/maths/quartic-surfaces/subgroups.gp"

  \\ Given a subgroup H in HNF and an element h, reduce h to a canonical
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp punctuation.definition.comment.parigp

  \\ coset representative by subtracting elements of H
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp punctuation.definition.comment.parigp
  coset_reduce(H,h) = forstep(i = 4, 1, -1, h -= (h[i] \ H[i,i]) * H[,i]~); h;
##^^^^^^^^^^^^ source.parigp meta.function.parigp entity.name.function.user.parigp
##            ^ source.parigp meta.function.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##             ^ ^ source.parigp meta.function.parigp meta.parens.parigp variable.parameter.function.parigp
##              ^ source.parigp meta.function.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                ^ source.parigp meta.function.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                 ^ source.parigp meta.function.parigp constant.character.whitespace.parigp
##                  ^ source.parigp meta.function.parigp keyword.operator.assignment.parigp
##                   ^                                                     ^ source.parigp constant.character.whitespace.parigp
##                    ^^^^^^^ source.parigp keyword.control.parigp
##                           ^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                            ^             ^                      ^ source.parigp meta.parens.parigp variable.name.parigp
##                             ^ ^  ^  ^   ^ ^  ^               ^ ^ source.parigp meta.parens.parigp constant.character.whitespace.parigp
##                              ^ source.parigp meta.parens.parigp keyword.operator.assignment.parigp
##                                ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##                                 ^  ^   ^ source.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                                   ^   ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##                                      ^ source.parigp meta.parens.parigp keyword.operator.arithmetic.parigp
##                                            ^^ source.parigp meta.parens.parigp keyword.operator.arithmetic.assignment.parigp
##                                               ^ source.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                                                ^      ^ source.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##                                                 ^      ^ source.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                                                  ^      ^ ^ source.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp variable.name.parigp
##                                                   ^        ^ source.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                                    ^ ^ source.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##                                                     ^ source.parigp meta.parens.parigp meta.parens.parigp keyword.operator.arithmetic.parigp
##                                                             ^ source.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                                                  ^ source.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                                                                   ^ source.parigp meta.parens.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##                                                                    ^ source.parigp meta.parens.parigp meta.brackets.parigp variable.name.parigp
##                                                                     ^ source.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                                                      ^ source.parigp meta.parens.parigp keyword.operator.transpose.parigp
##                                                                       ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                                                        ^  ^ source.parigp markup.punctuation.statement-terminator.parigp
##                                                                          ^ source.parigp variable.name.parigp

  \\ Put a subgroup into a canonical form
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp punctuation.definition.comment.parigp
  subgroup_reduce(H) =
##^^^^^^^^^^^^^^^ source.parigp meta.function.parigp entity.name.function.user.parigp
##               ^ source.parigp meta.function.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                ^ source.parigp meta.function.parigp meta.parens.parigp variable.parameter.function.parigp
##                 ^ source.parigp meta.function.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                  ^ source.parigp meta.function.parigp constant.character.whitespace.parigp
##                   ^ source.parigp meta.function.parigp keyword.operator.assignment.parigp
  {
##^ source.parigp meta.block.parigp punctuation.section.group.begin.parigp
  for(i = 1, 3, H[1][i,] %= 4; if(H[2] != [], H[2][i] %= 4));
##^^^ source.parigp meta.block.parigp keyword.control.parigp
##   ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##    ^         ^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##     ^ ^  ^  ^        ^  ^  ^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##      ^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.assignment.parigp
##        ^  ^              ^ source.parigp meta.block.parigp meta.parens.parigp constant.numeric.int.parigp
##         ^  ^ source.parigp meta.block.parigp meta.parens.parigp markup.punctuation.separator.parigp
##               ^  ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                 ^   ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                   ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp variable.name.parigp
##                    ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##                       ^^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.arithmetic.assignment.parigp
##                           ^ source.parigp meta.block.parigp meta.parens.parigp markup.punctuation.statement-terminator.parigp
##                             ^^ source.parigp meta.block.parigp meta.parens.parigp entity.name.function.builtins.parigp
##                               ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                                ^           ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##                                 ^      ^    ^  ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                                  ^           ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                                   ^     ^     ^  ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                    ^  ^   ^       ^  ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##                                     ^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp keyword.operator.comparison.parigp
##                                          ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                                                 ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp variable.name.parigp
##                                                    ^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp keyword.operator.arithmetic.assignment.parigp
##                                                       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp constant.numeric.int.parigp
##                                                        ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                                         ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                                          ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
  H[1][4,] %= 2; if(H[2] != [], H[2][4] %= 2);
##^ source.parigp meta.block.parigp variable.name.parigp
## ^  ^ source.parigp meta.block.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##  ^  ^ source.parigp meta.block.parigp meta.brackets.parigp constant.numeric.int.parigp
##   ^   ^ source.parigp meta.block.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##      ^ source.parigp meta.block.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##        ^  ^  ^ source.parigp meta.block.parigp constant.character.whitespace.parigp
##         ^^ source.parigp meta.block.parigp keyword.operator.arithmetic.assignment.parigp
##            ^ source.parigp meta.block.parigp constant.numeric.int.parigp
##             ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
##               ^^ source.parigp meta.block.parigp entity.name.function.builtins.parigp
##                 ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                  ^           ^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##                   ^      ^    ^  ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                    ^           ^  ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                     ^     ^     ^  ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                      ^  ^   ^       ^  ^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##                       ^^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.comparison.parigp
##                                      ^^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.arithmetic.assignment.parigp
##                                         ^ source.parigp meta.block.parigp meta.parens.parigp constant.numeric.int.parigp
##                                          ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                           ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
  H[1] = mathnf(concat(H[1],matdiagonal([4,4,4,2])));
##^ source.parigp meta.block.parigp variable.name.parigp
## ^ source.parigp meta.block.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##  ^ source.parigp meta.block.parigp meta.brackets.parigp constant.numeric.int.parigp
##   ^ source.parigp meta.block.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##    ^ ^ source.parigp meta.block.parigp constant.character.whitespace.parigp
##     ^ source.parigp meta.block.parigp keyword.operator.assignment.parigp
##       ^^^^^^ source.parigp meta.block.parigp entity.name.function.builtins.parigp
##             ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##              ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp entity.name.function.builtins.parigp
##                    ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                     ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##                      ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                        ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                         ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                          ^^^^^^^^^^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp entity.name.function.builtins.parigp
##                                     ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                                      ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                                       ^ ^ ^ ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                                        ^ ^ ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp markup.punctuation.separator.parigp
##                                              ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                               ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                                ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                                 ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                                  ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
  if(H[2] != [], H[2] = coset_reduce(H[1],H[2]));
##^^ source.parigp meta.block.parigp entity.name.function.builtins.parigp
##  ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##   ^           ^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##    ^      ^    ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##     ^           ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##      ^     ^     ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##       ^  ^   ^    ^ ^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##        ^^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.comparison.parigp
##             ^ source.parigp meta.block.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                    ^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.assignment.parigp
##                      ^^^^^^^^^^^^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##                                  ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                                   ^    ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##                                    ^    ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                                     ^    ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                                      ^    ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                                            ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                             ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                              ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
  H;
##^ source.parigp meta.block.parigp variable.name.parigp
## ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
  }
##^ source.parigp meta.block.parigp punctuation.section.group.end.parigp

  \\ Test whether G is a subgroup of H
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp punctuation.definition.comment.parigp
  issubgroup(G,H) =
##^^^^^^^^^^ source.parigp meta.function.parigp entity.name.function.user.parigp
##          ^ source.parigp meta.function.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##           ^ ^ source.parigp meta.function.parigp meta.parens.parigp variable.parameter.function.parigp
##            ^ source.parigp meta.function.parigp meta.parens.parigp markup.punctuation.separator.parigp
##              ^ source.parigp meta.function.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##               ^ source.parigp meta.function.parigp constant.character.whitespace.parigp
##                ^ source.parigp meta.function.parigp keyword.operator.assignment.parigp
  {
##^ source.parigp meta.block.parigp punctuation.section.group.begin.parigp
  local(M);
##^^^^^ source.parigp meta.block.parigp keyword.control.parigp
##     ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##      ^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##       ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##        ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
  if(H[2] == [],
##^^ source.parigp meta.block.parigp entity.name.function.builtins.parigp
##  ^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##   ^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##    ^      ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##     ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##      ^     ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##       ^  ^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##        ^^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.comparison.parigp
##             ^ source.parigp meta.block.parigp meta.parens.parigp markup.punctuation.separator.parigp
    if(G[2] == [],
##^^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##  ^^ source.parigp meta.block.parigp meta.parens.parigp entity.name.function.builtins.parigp
##    ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##     ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##      ^      ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##        ^     ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##         ^  ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##          ^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp keyword.operator.comparison.parigp
##               ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp markup.punctuation.separator.parigp
      M = G[1];
##^^^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##    ^   ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##     ^ ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##      ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp keyword.operator.assignment.parigp
##         ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##          ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##           ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##            ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp markup.punctuation.statement-terminator.parigp
      mathnf(concat(M, H[1])) == mathnf(H[1])
##^^^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##    ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp entity.name.function.builtins.parigp
##          ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##           ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp entity.name.function.builtins.parigp
##                 ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                  ^  ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##                   ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                    ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##                      ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                        ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                         ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                          ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                           ^  ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##                            ^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp keyword.operator.comparison.parigp
##                               ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp entity.name.function.builtins.parigp
##                                     ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                                      ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##                                       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                                        ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                                         ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                          ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
    , 0)
##^^ ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##  ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp markup.punctuation.separator.parigp
##    ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp constant.numeric.int.parigp
##     ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
  ,
##^ source.parigp meta.block.parigp meta.parens.parigp markup.punctuation.separator.parigp
    M = G[1];
##^^ ^ ^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##  ^   ^ source.parigp meta.block.parigp meta.parens.parigp variable.name.parigp
##    ^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.assignment.parigp
##       ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##        ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##         ^ source.parigp meta.block.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##          ^ source.parigp meta.block.parigp meta.parens.parigp markup.punctuation.statement-terminator.parigp
    if(G[2] != [], M = concat(M, G[2]~ - H[2]~));
##^^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##  ^^ source.parigp meta.block.parigp meta.parens.parigp entity.name.function.builtins.parigp
##    ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##     ^           ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##      ^      ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##        ^     ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##         ^  ^   ^ ^ ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##          ^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp keyword.operator.comparison.parigp
##               ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                   ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp keyword.operator.assignment.parigp
##                     ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp entity.name.function.builtins.parigp
##                           ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                            ^  ^       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##                             ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                              ^     ^ ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##                                ^       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                                 ^       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                                  ^       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                   ^       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp keyword.operator.transpose.parigp
##                                     ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp keyword.operator.arithmetic.parigp
##                                            ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                             ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                                              ^ source.parigp meta.block.parigp meta.parens.parigp markup.punctuation.statement-terminator.parigp
    mathnf(concat(M, H[1])) == mathnf(H[1])
##^^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##  ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp entity.name.function.builtins.parigp
##        ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##         ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp entity.name.function.builtins.parigp
##               ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                ^  ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##                 ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp markup.punctuation.separator.parigp
##                  ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp constant.character.whitespace.parigp
##                    ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                     ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                      ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                        ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
##                         ^  ^ source.parigp meta.block.parigp meta.parens.parigp constant.character.whitespace.parigp
##                          ^^ source.parigp meta.block.parigp meta.parens.parigp keyword.operator.comparison.parigp
##                             ^^^^^^ source.parigp meta.block.parigp meta.parens.parigp entity.name.function.builtins.parigp
##                                   ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
##                                    ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp variable.name.parigp
##                                     ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.begin.parigp
##                                      ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp constant.numeric.int.parigp
##                                       ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp meta.brackets.parigp punctuation.section.brackets.end.parigp
##                                        ^ source.parigp meta.block.parigp meta.parens.parigp meta.parens.parigp punctuation.section.parens.end.parigp
  );
##^ source.parigp meta.block.parigp meta.parens.parigp punctuation.section.parens.end.parigp
## ^ source.parigp meta.block.parigp markup.punctuation.statement-terminator.parigp
  }
##^ source.parigp meta.block.parigp punctuation.section.group.end.parigp
