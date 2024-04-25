## SYNTAX TEST "source.parigp" "Functions"

  Col([])
##^^^ source.parigp entity.name.function.builtins

  x = Mod(4, 5);
  x.mod
##  ^^^ source.parigp entity.name.function.member.builtins

  ellinit([0, 0, 0, -1, 0]).b2
##^^^^^^^ source.parigp entity.name.function.builtins
##                          ^^ source.parigp entity.name.function.member.builtins

  allocatemem();
##^^^^^^^^^^^ source.parigp keyword.control

\\ Code from https://stackoverflow.com/a/67286398
  counts_for(v: t_VEC, lower: t_INT, upper: t_INT) = {
##^^^^^^^^^^ source.parigp entity.name.function.user
    my(counts = vector(1+upper-lower));
##  ^^ source.parigp keyword.control
##              ^^^^^^ source.parigp entity.name.function.builtins

    for(i=1, #v, counts[1+v[i]-lower]++);
##  ^^^ source.parigp keyword.control
    vector(#counts, i, [i-1, counts[i]])
##  ^^^^^^ source.parigp entity.name.function.builtins
};

  counts_for1(v: t_VEC) = {
##^^^^^^^^^^^ source.parigp entity.name.function.user
    counts_for(v, vecmin(v), vecmax(v))
##                ^^^^^^ source.parigp entity.name.function.builtins
##                           ^^^^^^ source.parigp entity.name.function.builtins
};

  most_frequent(v: t_VEC) = {
##^^^^^^^^^^^^^ source.parigp entity.name.function.user
    my(counts=counts_for1(v));
##  ^^ source.parigp keyword.control
    vecsort(counts, [2], 4)[1][1]
##  ^^^^^^^ source.parigp entity.name.function.builtins
};


\\ Code from https://stackoverflow.com/a/72443498
M = matreduce([1,2,1,1,2,2,2,3,1,2,1,3]);
##  ^^^^^^^^^ source.parigp entity.name.function.builtins
N = 4;
  pred = (elt) -> elt > N;
##^^^^ source.parigp entity.name.function.user.lambda
  #select(pred, M[,2])
## ^^^^^^ source.parigp entity.name.function.builtins

  less = (x, y) -> x < y;
##^^^^ source.parigp entity.name.function.user.lambda

  greater10 = x -> x > 10;
##^^^^^^^^^ source.parigp entity.name.function.user.lambda
