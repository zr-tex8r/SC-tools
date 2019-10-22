ENTRY
  { title }
  {}
  {}

FUNCTION {cr} { write$ newline$ }

FUNCTION {open.trashbox}
{ "\let\sczbpXbl\list\let\sczbpXel\endlist" cr
  "\def\list#1#2{\setbox0\vbox\bgroup" cr
  "\trivlist\usecounter{enumiv}}" cr
  "\gdef\endlist{\endtrivlist\egroup}" cr
  "\begin{thebibliography}{TRASHBOX}" cr
}

FUNCTION {trash.it}
{ "\bibitem{" cite$ * "}." * cr
}

FUNCTION {close.trashbox}
{ "\end{thebibliography}" cr
  "\let\list\sczbpXbl\let\endlist\sczbpXel" cr
}

FUNCTION {write.essential}
{ newline$
  "\begin{flushleft}" cr
  "\catcode`\@=11 \let\u@\dimen@ii" cr
  "\u@=0.428446\hsize \divide\u@\@cclvi" cr
  "\font\sc@main=ipxm-r-u26 at 240\u@" cr
  "\font\sc@sub=ipxg-r-u30 at 80\u@" cr
  "\hb@xt@\hsize{\sc@sub\hfil\hfil" cr
  "\raise20\u@\hbox{\char118}\hfil" cr
  "\raise32\u@\hbox{\char147}\hfil" cr
  "\raise32\u@\hbox{\char081}\hfil" cr
  "\raise20\u@\hbox{\char147}\hfil\hfil}%" cr
  "\vskip20\u@" cr
  "\hb@xt@\hsize{\sc@main\hfil\char3\hfil}%" cr
  "\end{flushleft}" cr
}

FUNCTION {article} {}
FUNCTION {book} {}
FUNCTION {inbook} {}
FUNCTION {inproceedings} {}
FUNCTION {mastersthesis} {}
FUNCTION {misc} {}
FUNCTION {phdthesis} {}
FUNCTION {proceedings} {}
FUNCTION {techreport} {}
FUNCTION {unpublished} {}
FUNCTION {default.type} {misc}

READ

EXECUTE {open.trashbox}
ITERATE {trash.it}
EXECUTE {close.trashbox}
EXECUTE {write.essential}
