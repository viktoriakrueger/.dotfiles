# markdown

<!-- cite -->

<!-- @Cao.2021 sagt dass .....

das ist so und so [@Cao.2021; @Bakker.2017].

\enquote{wörtliches Zitat} [@bakker2014].

[@Bakker.2017 15-17] -->

po1: <a name=""> </a>
po2: <a href="#"></a>

link: []()
img: ![](/home/viki/)

Strg+Shift+P: table multimarkdown = table editor

| header 1 | header 2 | header 3
|- <TAB>


| header 1 | header 2 | header 3 |
| -------- | -------- | -------- |
|          |          |          |


Here is a simple footnote[^1]. With some additional text after it.


Here is a simple footnote[^2]. With some additional text after it.


[^1]: My reference.
[^2]: My reference.


<details closed>
<summary>test?</summary>
<br>
Well, you asked for it!
</details>



# general

# qutebrowser retrieve bibtex from doi
open page and press e

# merge files and put a blankline at the end of each file
cd in/to/dir/ ; for f in *.txt; do (cat "${f}"; echo) >> finalfile.txt; done; cd


# unite / merge pdfs * means all files in this dir
pdfunite ~/path/to/directorie/* ~/new_file.pdf

# zip
zip -r FILENAME.zip /PATH/TO/DIR/*

# unzip


# zip / unzip
unzip ~/downloads/file.zip -d ~/downloads/

update #system update

alt+w # close window
alt+t # new tab
alt+d # vertical split
alt+shift+d # horizontal split

strg+shift+v # paste

strg+l # clear
strg+c # quit process

rec $FILENAME # record # saved in $HOME

# verknüpfung
ln -sf ~/path/to/directory ~/path/to/location/name_of_file.

# storage analysator
ncdu

# split pane in nemo
F3