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

### About custom shape definitions

The [scsnowman] package supports *custom shape definitions*. A custom shape definition is written in a file named `scsnowman-‹name›.def`, and can be loaded by the `\usescsnowmanlibrary` command.

    \usepackage{scsnowman}
    \usescsnowmanlibrary{‹name›}

The option key `shape=‹name›` enables the custom shape definition named `‹name›`.

    \scsnowman[shape=‹name›, muffler=red, …]

### The “zrextra-core” series of custom shape definitions

Custom shape definitions of this series has some interface in common.

  * `\sczrextrasetup{‹key›=‹value›,…}`: Sets an extended parameter.
  * `\sczrextrareset`: Resets all the existing extended parameters defined by zrextra-core.

#### zrextra ― Basic extensions

The custom shape definition `zrextra` defines the following extended parameters.

  * `boldness=‹real r›`: Sets the line width to *r* times the standard value.
  * `bold=‹bool›`: `bold=true` is equivalent to `boldness=1.6`, and `bold=false` is to `boldness=1`.
  * `bodyfill=‹color›`: Sets the color to fill body.
  * `snowfill=‹color›`: Sets the color to fill snow.

NB. The extended parameters provided by `zrextra` is available also in other custom shape definitions of the `zrextra-core` series.

#### zrnofill ― Snowman figures without filling

The custom shape definition `zrnofill` changes the way to draw figures so athat hats and buttons are drawn without filling.

NB. Mufflers and arms are not changed.

#### zrsobbing ― Sobbing snowman figures

The custom shape definition `zrsobbing` draws sobbing snowman figures.

The parameter `sweat` is used to draw teardrops instead of sweat.

This definition provides the following extended parameters.

  * `sobbingmouthfill=‹color›`: Sets the color to fill mouth.

### Legacy custom shape definitions

#### zrsymmetric ― Symmetric snowman figures

The custom shape definition `zrsymmetric` draws horizontally symmetric snowman figures. See [the example](scsnowman-lib/test-zrsymmetric.pdf)
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
