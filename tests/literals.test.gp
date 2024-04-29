## SYNTAX TEST "source.parigp" "Literals"

  1.23E-10
##^^^^^^^^ source.parigp constant.numeric.float.parigp

  -123 - .123E-07 + 043664.32
##^    ^          ^ source.parigp keyword.operator.arithmetic.parigp
## ^^^ source.parigp constant.numeric.int.parigp
##       ^^^^^^^^   ^^^^^^^^^ source.parigp constant.numeric.float.parigp

  00432
##^^^^^ source.parigp constant.numeric.int.parigp

  0x12A3F
##^^^^^^^ source.parigp constant.numeric.hex.parigp

  0b00011001
##^^^^^^^^^^ source.parigp constant.numeric.bin.parigp

  "Hello, world!"
## ^^^^^^^^^^^^^ source.parigp constant.character.escape.parigp

  s = "Lorem_ipsum;"
##^ source.parigp variable.name.parigp
## ^ ^ source.parigp constant.character.whitespace.parigp
##  ^ source.parigp keyword.operator.assignment.parigp
##    ^^^^^^^^^^^^^ source.parigp constant.character.escape.parigp
