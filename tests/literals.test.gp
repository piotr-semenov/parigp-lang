## SYNTAX TEST "source.parigp" "Literals"

  1.23E-10
##^^^^^^^^ source.parigp constant.numeric.float

  -123 + 043664.32
## ^^^ source.parigp constant.numeric.int
##.      ^^^^^^^^^ source.parigp constant.numeric.float

  00432
##^^^^^ source.parigp constant.numeric.int

  0x12A3F
##^^^^^^^ source.parigp constant.numeric.hex

  0b00011001
##^^^^^^^^^^ source.parigp constant.numeric.bin

  "Hello, world!"
## ^^^^^^^^^^^^^ source.parigp constant.character.escape

  s = "Lorem_ipsum;"
##    ^^^^^^^^^^^^^ source.parigp constant.character.escape
