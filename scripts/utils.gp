\\ utils.gp
\\
\\ Copyright (c) 2024 Piotr K. Semenov (piotr.k.semenov at gmail dot com)
\\ Distributed under the New BSD License. (See accompanying file LICENSE)

/*!
 \file utils.gp

 Utils for run-time type identification of PARI/GP commands.
*/

/*!
 \brief Identifies the type of PARI/GP command into tmGrammar group
 \param[in] cmdname the PARI/GP command represented as string
 \return tmGrammar group name

 \code{.gp}
    read("utils.gp");
    classify("allocatemem")
 \endcode
*/
classify(cmdname: t_STR) = {
   my(CONTROL: t_STR = "keyword.control",
      CONST: t_STR = "constant.language",
      FUNC: t_STR = "entity.name.function");

    if(cmdname == "O", return(FUNC));
    if(vecsearch(["allocatemem",
                  "breakpoint",
                  "dbg_down", "dbg_up",
                  "default",
                  "input",
                  "quit"], cmdname) > 0, return(CONTROL));
    if(vecsearch(["Catalan", "Euler", "I", "Pi", "oo"], cmdname) > 0, return(CONST));

    my(cmdtype: t_STR = concat(["type(", cmdname, ")"]));
    iferr(if(#eval(cmdtype) > 0, return(FUNC)),
        e,
        if(component(e, 1) == "sorry, closure not implemented", return(CONTROL))
    );
    iferr(if(eval("%"),, return(CONTROL)),
        e,
        if(component(e, 1) == "The result history is empty", return(CONTROL))
    );
};
addhelp("classify", "classify(C): classifies PARI/GP command into tmGrammar group");
