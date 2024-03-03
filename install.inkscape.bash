#!/usr/bin/env bash
#

# reference linker : https://inkscape.org/
# reference linker : https://textext.github.io/textext/install/linux.html
#onetimes#
sudo add-apt-repository ppa:inkscape.dev/stable
#onetimes# sudo apt update

sudo apt install inkscape

#onetimes# sudo apt install texlive-latex-base
pdflatex --version
#onetimes# sudo apt install texlive-xetex
xelatex --version
#onetimes#
typst --version
#onetimes#
lualatex --version
## Optional: If you wish to have syntax highlighting and some other nice features enabled in the TexText-Gui install GTKSourceView:
#onetimes# sudo apt install gir1.2-gtksource-3.0
