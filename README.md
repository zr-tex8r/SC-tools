SC-tools
========

LaTeX: Collection of LaTeX packages for Snowman Comedians

![NICE!](https://raw.githubusercontent.com/zr-tex8r/SC-tools/images/essence-1.png)  
*The “essential” one*

scnicefoot ― TeXの脚注をﾅﾝﾄｶにする
-----------------------------------

### Loading

    \usepackage{scnicefoot}

### Usage

Please refer to the [sample document](scnicefoot/sample.tex) and its [output](scnicefoot/sample.pdf).
The output PDF document will come even fancier when viewed with
the Adobe Reader.


scsnowman-lib ― Extension libraries for scsnowman package
----------------------------------------------------------

### zrsymmetric ― Symmetric snowman figures

    \usepackage{scsnowman}
    \usescsnowmanlibrary{zrsymmetric}

#### Usage

This extension library provides additional snowman shape option
named `zrsymmetric`, which will greatly augment the variety
of snowman figures realized by the [scsnowman] package.
As the name indicates, snowman figures with this option
are horizontally symmetric;
see [the example](scsnowman-lib/test-zrsymmetric.pdf)
to know what the shape is like.


scplain_bst ― an *essential* bibliography style
------------------------------------------------

### Usage

    \bibliographystyle{scplain}

This bibliography style will make your bibliography list
contain only *essential* information.


scpremiumfriday ― Make your documents aware of Premium Friday
--------------------------------------------------------------

### Loading

    \usepackage{scpremiumfriday}

### Usage

By loading this package, your documents will become well ready for
[Premium Friday]; that is, when the documents are compiled on an
instance of Premium Friday, then a snowman will leave a little
message on your terminal during the compiling.

[Premium Friday]: https://en.wikipedia.org/wiki/Premium_Friday

The campaign of Premium Friday suggests people to end their work
at 3:00 p.m. If you compile the documents past the time, then a
fancier thing will happen.

Reference:
[プレミアムフライデー的な何かを作ってみた（scpremiumfriday パッケージ）](http://d.hatena.ne.jp/zrbabbler/20170324/1490318527)


### The scpremiumeveryday package

This is an enhanced version of the scpremiumfriday package. While
scpremiumfriday makes the document more *essential* only on days
of Premium Friday, scpremiumeveryday will provide the same effect
everyday.


scwrapfig ― SC-variant of wrapfig
----------------------------------

(stub)

--------------------

S(C)ee Also
-----------

  * [scsnowman]: The most *essential* package
  * [scmessages]: Make the LaTeX2e messages (errors and warnings) cute
  * [scdviout-pdf]: PGF driver implementation for dviout (but *essential*)
  * [SC-ripts]: *Essential* (La)TeX scripts

[scsnowman]: https://github.com/aminophen/scsnowman
[scmessages]: https://github.com/wtsnjp/scmessages
[scdviout-pdf]: https://github.com/zr-tex8r/scdviout-pdf
[SC-ripts]: https://github.com/zr-tex8r/SC-ripts

--------------------
Takayuki YATO (aka. "ZR") 
http://zrbabbler.sp.land.to/
