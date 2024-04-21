## SYNTAX TEST "source.parigp" "Functions"

  Col([])
##^^^ source.parigp entity.name.function

  x = Mod(4, 5);
  x.mod
##  ^^^ source.parigp entity.name.function.member

  ellinit([0, 0, 0, -1, 0]).b2
##^^^^^^^ source.parigp entity.name.function
##                          ^^ source.parigp entity.name.function.member

  allocatemem();
##^^^^^^^^^^^ source.parigp keyword.control

# Code from https://stackoverflow.com/a/67286398
counts_for(v: t_VEC, lower: t_INT, upper: t_INT) = {
    my(counts = vector(1+upper-lower));
##  ^^ source.parigp keyword.control
##              ^^^^^^ source.parigp entity.name.function

    for(i=1, #v, counts[1+v[i]-lower]++);
##  ^^^ source.parigp keyword.control
    vector(#counts, i, [i-1, counts[i]])
##  ^^^^^^ source.parigp entity.name.function
};

counts_for1(v: t_VEC) = {
    counts_for(v, vecmin(v), vecmax(v))
##                ^^^^^^ source.parigp entity.name.function
##                           ^^^^^^ source.parigp entity.name.function
};

most_frequent(v: t_VEC) = {
    my(counts=counts_for1(v));
##  ^^ source.parigp keyword.control
    vecsort(counts, [2], 4)[1][1]
##  ^^^^^^^ source.parigp entity.name.function
};

most_frequent(V1)
