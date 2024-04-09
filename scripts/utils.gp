\\ utils.gp
\\
\\ Copyright (c) 2015 Piotr K. Semenov (piotr.k.semenov at gmail dot com)
\\ Distributed under the New BSD License. (See accompanying file LICENSE)

/*!
 \file utils.gp

 Utils for run-time type identification of PARI/GP commands.
*/

/*!
 \brief Identifies the type of PARI/GP command
 \param[in] cmdname the PARI/GP command represented as string
 \return command type selected from "control", "const", and "function"

 \code{.gp}
    read("utils.gp");
    classify("allocatemem")
 \endcode
*/
classify(cmdname: t_STR) = {
    my(CONTROL="control", CONST="const", FUNC="function");

    if(cmdname=="O", return(FUNC));
    if(vecsearch(["allocatemem", "break", "breakpoint", "default"], cmdname) > 0, return(CONTROL));
    if(vecsearch(["Catalan", "Euler", "I", "Pi"], cmdname) > 0, return(CONST));

    my(cmdtype=concat(["type(", cmdname, ")"]));
    iferr(if(#eval(cmdtype) > 0, return(FUNC)),
        e,
        if(component(e, 1) == "sorry, closure not implemented", return(CONTROL))
    )
};
addhelp("classify", "classify(C): classifies PARI/GP command as control/const/function.");
