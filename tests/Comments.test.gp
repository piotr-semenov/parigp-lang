## SYNTAX TEST "source.parigp" "Comments"

  \\ one-line comment, rest of line ignored
##^^ source.parigp punctuation.definition.comment.parigp comment.line.double-slash.parigp
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp punctuation.definition.comment.parigp

  /**
##^^ source.parigp comment.block.parigp punctuation.definition.comment.begin.parigp
    Multi-line comment: Line 1
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp comment.block.parigp
    Multi-line comment: Line 2
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp comment.block.parigp
    /* Nested multi-line comments shouldn't confuse the parser */
##  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.parigp comment.block.parigp
  */
##^^ source.parigp comment.block.parigp punctuation.definition.comment.end.parigp
