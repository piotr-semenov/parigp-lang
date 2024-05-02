## SYNTAX TEST "source.parigp" "Comments"

  \\ One-line comment, rest of line ignored
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp punctuation.definition.comment.parigp

  /**
##^^ source.parigp comment.block.parigp punctuation.definition.comment.begin.parigp
    Multi-line comment: Line 1
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp comment.block.parigp
    Multi-line comment: Line 2
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp comment.block.parigp
    /* Nested multi-line comments shouldn't confuse the parser */
##  ^^ source.parigp comment.block.parigp comment.block.parigp punctuation.definition.comment.begin.parigp
##     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp comment.block.parigp comment.block.parigp
##                                                             ^^ source.parigp comment.block.parigp comment.block.parigp punctuation.definition.comment.end.parigp
  */
##^^ source.parigp comment.block.parigp punctuation.definition.comment.end.parigp

  (/* Comment inside expression */ 1)
##^ source.parigp meta.parens.parigp punctuation.section.parens.begin.parigp
## ^^ source.parigp meta.parens.parigp comment.block.parigp punctuation.definition.comment.begin.parigp
##    ^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp meta.parens.parigp comment.block.parigp
##                              ^^ source.parigp meta.parens.parigp comment.block.parigp punctuation.definition.comment.end.parigp
##                                 ^ source.parigp meta.parens.parigp constant.numeric.int.parigp
##                                  ^ source.parigp meta.parens.parigp punctuation.section.parens.end.parigp
