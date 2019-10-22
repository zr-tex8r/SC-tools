SC-tools
========

LaTeX： ゆきだるま芸人用のLaTeXパッケージ集

![NICE!](https://raw.githubusercontent.com/zr-tex8r/SC-tools/images/essence-1.png)  
“本質的”なナニカ

scnicefoot ― TeXの脚注をﾅﾝﾄｶにする
-----------------------------------

[TeXConf 2019]において某シカノさんがTeXの脚注をなんとかする講演を
する予定であったが、TeXConf 2019が台風の影響で中止になったため、
ﾅﾝﾄｶConf 2019において某ZR氏がTeXの脚注をﾅﾝﾄｶにする講演を行った。

[TeXConf 2019]]: https://texconf2019.tumblr.com/
[ﾅﾝﾄｶConf 2019]: https://twitter.com/hashtag/%EF%BE%85%EF%BE%9D%EF%BE%84%EF%BD%B6conf2019?src=hash

### パッケージ読込

    \usepackage{scnicefoot}

### 説明

[サンプル文書](scnicefoot/sample.tex)とその[出力結果](scnicefoot/sample.pdf)を参照されたい。
なお、出力のPDF文書はAdobe製のビューアで見るといっそう素敵になる。


scsnowman-lib ― scsnowman用の拡張パッケージ
---------------------------------------------

### zrsymmetric ― 対称なゆきだるま

    \usepackage{scsnowman}
    \usescsnowmanlibrary{zrsymmetric}

#### 説明

[scsnowman]の描くゆきだるまを左右対称にする。

参照：
[scsnowmanでつくる対称コルーチン（※最新の定義）](https://zrbabbler.hatenablog.com/entry/2019/08/08/184504)


scplain_bst ― 文献一覧を本質的にする文献スタイル
-------------------------------------------------

### 使用法

    \bibliographystyle{scplain}


scpremiumfriday ― 文書をプレミアムフライデー対応にする
-------------------------------------------------------

### パッケージ読込

    \usepackage{scpremiumfriday}

### 使用法

単にこのパッケージを読み込むだけで、文書が[プレミアムフライデー]対応に
なる。すなわち、プレミアムフライデーの日に文書をコンパイルすると、
ゆきだるま☃からのチョット素敵なメッセージが端末に表示される。

[プレミアムフライデー]: https://ja.wikipedia.org/wiki/%E3%83%97%E3%83%AC%E3%83%9F%E3%82%A2%E3%83%A0%E3%83%95%E3%83%A9%E3%82%A4%E3%83%87%E3%83%BC

プレミアムフライデーのキャンペーンの目的は、午後3時に仕事を終えることを
呼びかけることにある。従って、この時刻以降に文書をコンパイルした場合には、
もっと素敵なことが起こるようになっている。

参照：
[プレミアムフライデー的な何かを作ってみた（scpremiumfriday パッケージ）](http://d.hatena.ne.jp/zrbabbler/20170324/1490318527)

### scpremiumeveryday パッケージ

scpremiumfriday の改良版。プレミアムフライデーの日であるか否かに関わらず
素敵なことが起こる。


scwrapfig ― SC版のwrapfig
--------------------------

(この項目は書きかけです。)

--------------------

S(C)ee Also
-----------

  * [scsnowman]： 最も“本質的”なパッケージ
  * [scmessages]: LaTeXのエラー・警告メッセージをカワイイものにする
  * [scdviout-pdf]: dviout用のPGFドライバ実装（※ただし画期的）
  * [SC-ripts]： “本質的”な(La)TeXスクリプト

[scsnowman]: https://github.com/aminophen/scsnowman
[scmessages]: https://github.com/wtsnjp/scmessages
[scdviout-pdf]: https://github.com/zr-tex8r/scdviout-pdf
[SC-ripts]: https://github.com/zr-tex8r/SC-ripts

--------------------
Takayuki YATO (aka. "ZR") 
http://zrbabbler.sp.land.to/
