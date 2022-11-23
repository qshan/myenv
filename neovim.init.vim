"
###detail:
###   https://launchpad.net/~neovim-ppa
###   https://launchpad.net/~neovim-ppa/+archive/ubuntu/stable
###   https://launchpad.net/~neovim-ppa/+archive/ubuntu/unstable
#
###TODO#sudo add-apt-repository ppa:neovim-ppa/stable
##TODO##
#sudo add-apt-repository ppa:neovim-ppa/unstable
"save the init.vim content for neovim here
" ~/.config/nvim/init.vim
""TODO
":source ~/.vimrc
"
set runtimepath+=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
""source ~/.vimrc

if exists('g:vscode')
    " VSCode extension
else
    " ordinary Neovim
"
    ":set guioptions=mlrb
    :set guioptions+=m

    ""set the columns to fits on the screen
    :set columns=9999
endif

" inside plug#begin:
" use normal easymotion when in VIM mode
""Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
" use VSCode easymotion when in VSCode mode
""Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })


""try here again
source ~/.vimrc
