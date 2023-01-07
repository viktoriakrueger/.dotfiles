# merge files and put a blankline at the end of each file
cd in/to/dir/ ; for f in *.txt; do (cat "${f}"; echo) >> finalfile.txt; done; cd

# unite / merge pdfs * means all files in this dir
pdfunite ~/path/to/directorie/* ~/new_file.pdf

# zip
zip -r FILENAME.zip /PATH/TO/DIR/*

# unzip


# zip / unzip
unzip ~/location/file.zip -d ~/location/

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