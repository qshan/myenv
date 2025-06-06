"
" Reference: https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-package
"
" sudo apt-get install software-properties-common
""" sudo apt-get install python-software-properties
" sudo apt install neovim
" sudo apt install python3-neovim
"
" sudo add-apt-repository ppa:neovim-ppa/stable
" sudo apt-get update
" sudo apt-get install neovim
"
" sudo apt-get install python-dev python-pip python3-dev python3-pip
"
""###detail:
""###   https://launchpad.net/~neovim-ppa
""###   https://launchpad.net/~neovim-ppa/+archive/ubuntu/stable
""###   https://launchpad.net/~neovim-ppa/+archive/ubuntu/unstable
""#
""###TODO#sudo add-apt-repository ppa:neovim-ppa/stable
""##TODO##
""#sudo add-apt-repository ppa:neovim-ppa/unstable
"save the init.vim content for neovim here
" ~/.config/nvim/init.vim
""TODO
":source ~/.vimrc
"
"workaround for nvim-qt could not open file in shell
if @% == ""
  bd
endif
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
    :set guioptions+=r
    :set guioptions+=a
"    :set guifont=Monospace\ 20

    ""set the columns to fits on the screen
""not_work_on_nvim""""    :set columns=9999
endif
"
"the unnamed register is the same as the
" * register.  Thus you can yank to and paste the selection without prepending
" * to commands.
" for register *
":set clipboard+=unnamed
:set clipboard=unnamed
" for register +
":set clipboard+=unnamedplus
:set clipboard=unnamedplus
" :let @+=@""
" paste the unnamed contents is ""p
" paste the clipboard contents "+p

:let g:python3_host_prog = "/usr/bin/python3.8"

let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0

:noswapfile

" inside plug#begin:
" use normal easymotion when in VIM mode
""Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
" use VSCode easymotion when in VSCode mode
""Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })


""try here again
""start_source
""end_source
""source ~/.vimrc

"
"save these contents as _myvimrc file
"source _myvimrc

""------------------------------
"ToCheck"init sequence by call followed item one by one
"   /etc/vim/vimrc
"   /etc/vim/vimrc.local
"   ~/.vimrc
""------------------------------
"# -----install guidance--Start-------------------
"#update vim python gcc
"#fshan

"sudo add-apt-repository ppa:jonathonf/vim
"sudo add-apt-repository ppa:jonathonf/python-3.6
"sudo add-apt-repository ppa:jonathonf/python-2.7
"sudo add-apt-repository ppa:jonathonf/gcc
"
"sudo apt update
"sudo apt install vim git
"""""sudo apt-get -f install
"""""sudo apt-get install git
"sudo apt-get install build-essential cmake llvm-4.0 clang-4.0 libclang-4.0-dev libboost-all-dev clang python-dev python3-dev
"#get bundle plugin tools if internet is available
"mkdir -p ~/.vim/bundle/
"cd ~/.vim/bundle/
"worked""git clone --recursive https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"old""#git clone https://github.com/gmarik/Vundle.vim.git  ~/.vim/bundle/Vundle.vim
"gvim
"vim +PluginInstall +qall
":PluginInstall
"cd ~/.vim/bundle/YouCompleteMe
"git submodule update --init --recursive
"./install.py --clang-completer
"python3 ./install.py --clang-completer
"or
"./install.py --all
"python3 ./install.py --all
" will download clang and other plugin automatically
" -----install guidance--End-------------------

"good web: https://blog.csdn.net/zhangpower1993/article/details/52184581
"good web: https://github.com/VundleVim/Vundle.vim/blob/v0.10.2/doc/vundle.txt
"good web: https://www.cnblogs.com/aaronLinux/p/6798898.html

" -----good part--Start-------------------
set nocompatible
"
"set encoding=utf-8
set number
"set nu
"set nonumber
"set nonu
set laststatus=2     "0->never;1->only when at least 2 windows;2->always
"
set ruler
"set ru
"set noruler
"
set cursorline
"set cul
"set nocursorline
"set nocul
"
"set color of line highlight
":hi CursorLine cterm=NONE ctermbg=grey
":hi CursorLine cterm=underline ctermbg=grey guibg=Grey40
":hi CursorLine ctermbg=grey guibg=Grey40
":hi CursorLine cterm=bold ctermfg=white ctermbg=grey gui=bold guifg=white guibg=Grey40
:hi CursorLine cterm=NONE ctermbg=DarkGray guibg=Grey40
":hi CursorLine ctermfg=NONE ctermbg=DarkGray guifg=Grey40 guibg=Grey40
":hi CursorLine cterm=reverse ctermbg=DarkGray guifg=reverse guibg=Grey40
":hi DiffAdd cterm=reverse ctermbg=DarkGray guifg=reverse guibg=Grey40
":hi DiffAdd ctermfg=231 ctermbg=65 guifg=#ffffff guibg=#5f875f
":hi DiffChange ctermbg=67 guibg=#5f87af
":hi DiffChange ctermbg=67 guibg=Grey40
":hi DiffDelete ctermfg=231 ctermbg=133 guifg=#ffffff guibg=#af5faf
":hi DiffText ctermbg=251 guibg=#c6c6c6
"
"
set cursorcolumn
"set cuc
"
"set color of column highlight
":hi CursorColumn ctermbg=grey guibg=Grey40
":hi CursorColumn cterm=underline ctermbg=grey guibg=Grey40
":hi CursorColumn cterm=reverse ctermbg=grey guibg=Grey40
"debug":hi CursorColumn cterm=NONE ctermbg=grey guibg=Grey40
"autocmd InsertEnter * hi CursorColumn cterm=NONE ctermbg=grey guibg=Grey40
"autocmd InsertEnter * hi CursorLine cterm=bold gui=bold ctermbg=grey guibg=Grey40
"autocmd InsertLeave * hi CursorLine cterm=NONE gui=NONE ctermbg=grey guibg=Grey40
"
"show symbol, like show blank and tab
""set list
"set nolist
"
"set the space line, if linespace=0, Maybe the underline is invisible
set linespace=4
"
set wrap
"auto display line with a line break, but do not insert the line break in the file
"set nowrap       "display a lines in one lies
"
set backspace=indent,eol,start
"
"info"set guifont size in gvim/nvim
"you could resize with Ctl-Shift-'+' | Ctl-'-' in vim
"list the available font in gvim or GUI frontend
"set guifont=*
"
"set guifont=Sans\ Bold\ 12
"set guifont=Monospace\ 16
"set guifont=Monospace\ 20
"for nvim-qt set
"nvim-qt":GuiFont FontName:hXX:b/l/i
"Guifont DejaVu Sans Mono:h15
""TODO":Guifont DejaVu\ Sans\ Mono:h15
command! MyFont10                    :Guifont DejaVu\ Sans\ Mono:h10
command! MyFont12                    :Guifont DejaVu\ Sans\ Mono:h12
command! MyFont14                    :Guifont DejaVu\ Sans\ Mono:h14
command! MyFont15                    :Guifont DejaVu\ Sans\ Mono:h15
command! MyFont16                    :Guifont DejaVu\ Sans\ Mono:h16
command! MyFont18                    :Guifont DejaVu\ Sans\ Mono:h18
command! MyFont20                    :Guifont DejaVu\ Sans\ Mono:h20
command! MyFont22                    :Guifont DejaVu\ Sans\ Mono:h22
command! MyFont26                    :Guifont DejaVu\ Sans\ Mono:h26
command! MyFont28                    :Guifont DejaVu\ Sans\ Mono:h28
command! MyFont30                    :Guifont DejaVu\ Sans\ Mono:h30

command! MyTabstop                   :set tabstop=2 softtabstop=2 shiftwidth=2
" set softtabstop=2

"autocmd BufReadPost,FileReadPost *,*.* :Guifont DejaVu\ Sans\ Mono:h15
"only"worked"with"gui"
""au BufReadPost,FileReadPost *,*.* :MyNvimGuiFont15
""
""Guifont DejaVu Sans Mono:h15
if exists('g:GuiLoaded')
"  if exists('nodiff')
  if &diff
    :MyFont12
"    :MyDiffIgnoreWhiteSpace
  else
    :MyFont22
  endif
endif
"autocmd BufWritePost * match ExtraWhitespace /\s\+$/
au BufReadPost,FileReadPost * :if exists('g:GuiLoaded')
"au BufReadPost,FileReadPost *   :if exists('nodiff')
au BufReadPost,FileReadPost *   :if &diff
au BufReadPost,FileReadPost *     :MyFont12
au BufReadPost,FileReadPost *   :else
au BufReadPost,FileReadPost *     :MyFont22
au BufReadPost,FileReadPost *   :endif
au BufReadPost,FileReadPost * :endif

"au BufReadPost,FileReadPost *.md     :MyFont20

"""Guifont DejaVu Sans Mono:h15
"""au BufReadPost,FileReadPost *,*.* :MyNvimGuiFont15
"":Guifont DejaVu\ Sans\ Mono:h15
""endif
"
":GuiFont DejaVu Sans Mono:h15
"if exists('g:nvim-qt')
""debug"if exists('g:GuiLoaded-qt')
""debug"  :Guifont DejaVu Sans Mono:h16
""debug"endif
"
""Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif
"info""change the font size in terminal mode
""C-x C-H--       "decrease the char size in current buffer
""C-x C-H-=/+     "increase the char size in current buffer

"debug"set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"for terminal mode
set termguicolors
"
" set the color of text background
set background=dark
color murphy
"colorscheme desert
"colorscheme industry
"
""set backup
""set history=50
""
set magic
"substitute magic
"set nomagic
"set smagic
""substitute magic
"set sm

"set cindent     "Enables automatic C program indenting.
""set cin
"""more cindent setting: cinkeys, cinoptions, cinwords
"
""todo"set smartindent     "Do smart autoindenting when starting a new line
"set si
set autoindent     "Copy indent from current line when starting a new line
"set ai     "autoindent
"
"set smarttab
"set sta
"mask_for_sv_file"set smartindent     "better than autoindent, use basic c syntax to indent
"set si     "smartindent
set shiftwidth=2     "indent multi shifwidth value
set expandtab        "replae the tab with blankspace
"To insert a real tab when 'expandtab' is on, use CTRL-V<Tab>
"set et
""set expandtab
""
set tabstop=2                 "set to show the tab with 2 blankspace; identify how many space as a TAB
"worked"set vartabstop=2,4,4,2        "set to show the tab with 2 blankspace; identify how many space as a TAB
set softtabstop=2             " how many space to show for a tab in Insert mode
"worked"set varsofttabstop=2,4,4,2    "set to show the tab with 2 blankspace; identify how many space as a TAB
au BufReadPost,FileReadPost * :set      tabstop=2
au BufReadPost,FileReadPost * :set  softtabstop=2

set shiftwidth=2                 "when smarttab is on, follow shiftwidth?
"set tabstop=2 softtabstop=2     "when smarttab is off, follow tabstop softtabstop?

":retab 2                  "command, to replace the tab as 2 space in current file
"ret 2
"set textwidth=30 "breaking the line if the count is over 30 in this line
set noerrorbells " for the sake of your sanity, I highly recommend turning this on
set linebreak
"set showbreak=>
set showbreak=+++
"
"set smartcase  "- use case if any caps used    Override the 'ignorecase' option if the search pattern contains upper case characters.
"set scs
"
set ignorecase
"- ignore case insensitive
"set ic
" Include only uppercase words with uppercase search term
set smartcase
"
set hlsearch
"- search highlighting
"set hls
"
set incsearch
"- show match as search proceeds
"set is
"
set nocompatible
""""remove the toolbar
"only for Win32""set guioptions-=T
""""remove the menubar
""set guioptions-=m
""""enable the menubar
"set guioptions+=m
""
""set title with default style, the default is filename
set title
""
set wildmenu     "wmnu, When 'wildmenu' is on, command-line completion operates in an enhanced mode.
set wildmode=longest,list
"set omnifunc=syntaxcomplete#Complete     "incase, you have to use moni
"--------------------------------------
"filetype plugin indent on
"set cot+=longest
set completeopt+=longest
set completeopt+=menu
set completeopt+=preview
""set completeopt+=popup
set wildmenu
"set nowildmenu
""
"syntax enable  "This command switches on syntax highlighting: >
"syntax on      "turn on the syntax highlight
"syntax off     "turn off the syntax highlight
"The `:syntax enable` command will keep your current color settings.  This allows using `:highlight` commands to set your preferred colors before or after using this command.  If you want Vim to overrule your settings with the defaults, use: >  :syntax on
"set omnifunc=syntaxcomplete#Complete
"autocmd FileType c set omnifunc=ccomplete#Complete
"--------------------------------------
"setting for completion
"set ignorecase "- ignore case insensitive
"set infercase
"
"show symbol, like show blank and tab
set list
""set nolist
" unicode example i C-v uxxxx
"   u21a9   ↩
"   u21b5   ↵
"   u21a6   ↦
"   u2610   ☐
" Reference linker for unicode
" https://unicode-table.com
"
" https://www.vertex42.com/ExcelTips/unicode-symbols.html#:~:text=Standard%200-255%20%28UTF-8%29%20Character%20Set%20%20%20%21,%20%2092%20%2014%20more%20rows%20
" https://en.wikipedia.org/wiki/List_of_Unicode_characters
" https://www.quackit.com/character_sets/unicode/
"
""set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:.
""set listchars=eol:$,tab:»\ ,trail:~,extends:>,precedes:<,space:·
""set listchars=eol:↩,tab:»»,trail:~,extends:>,precedes:<,space:⌴⏘
set listchars+=eol:↵,tab:»»
set listchars+=trail:~,extends:>,precedes:<
""set listchars=space:□
set listchars+=space:·
"highlight StrangeWhitespace guibg=Red ctermbg=Red
""highlight Whitespace                        cterm=underline gui=underline ctermbg=NONE guibg=NONE ctermfg=yellow guifg=yellow
""autocmd ColorScheme * highlight Whitespace  cterm=underline gui=underline ctermbg=NONE guibg=NONE ctermfg=yellow guifg=yellow
""match Whitespace /  \+/
"
"highlight the space on end of the line
""syntax match ExtraWhitespace /\s\+$/
                      highlight SpaceOnEnd ctermbg=red guibg=red
autocmd ColorScheme * highlight SpaceOnEnd ctermbg=red guibg=red
""autocmd ColorScheme * highlight SpaceOnEnd
"set_in_2match""autocmd BufWinEnter * match     SpaceOnEnd /\s\+$/
"autocmd FileRead *.* match ExtraWhitespace /\s\+$/
"autocmd BufWritePost * match ExtraWhitespace /\s\+$/
"
"set mouse=a
set mouse=invc
" Display options
set showmode
""set showcmd
set showcmd     "show the commnds info
set cmdheight=1 "set the number of display command line as 1
set laststatus=2 "set the status bar (default is 1, no display)
"
"todo"filetype plugin indent on
"
syntax enable     "keep your current color settings
"syntax on     "overrule your settings with the defaults
"tabnine, based on youcompleteme, set this if do not use vundle install  the youcompleteme
"set rtp+=~/tabnine-vim
"
"set the folder methods
"set foldmethod=indent
"set foldmethod=manual
let b:verilog_indent_width = 2
let g:verilog_disable_indent_lst = "module,class,interface"
let g:verilog_syntax_fold_lst = "all"
""" help verilog_systemverilog
""let g:verilog_syntax_fold_lst = "function,task,class,instance,define,comments,block,property,sequence,covergroup"
set foldmethod=syntax ""for verilog_systemverilog plugin
set foldlevel=100
"set foldlevel=0
"
:syntax enable
"This command switches on syntax highlighting: >
" set the fold options
set nofoldenable
"set foldenable     "enable fold when you need
"set fen     "=foldenable
"
""" https://secluded.site/vim-as-a-markdown-editor/
"" " Set spell check to British English
""autocmd FileType markdown setlocal spell spelllang=en_gb
"set spell
""set spelllang=en_us
""setlocal spell spelllang=en_gb
setlocal spell spelllang=en_us
"" " Set spell check to US English
""autocmd FileType markdown setlocal spell spelllang=en_us
"set spell spelllang=en_us
"""""set nospell
"setlocal spell spelllang=en_us
"]s    """""" To move to a next misspelled word,
"[s    """""" To move to a misspelled word, but search backwards
"]S    """""" To move to a next word, but only stop at bad words, not at rare words or words for another region
"[S    """""" To move to a Bad word, but search backwards
"z=    """""" if I highlight autocompletion and then use z= to see recommended list details, select the item you need
"zg    """""" Use the zg command and Vim will add it to its dictionary.
"zw    """""" Mark words as incorrect
"zug   """""" Undo |zw| and |zg|, remove the word from the entry in 'spellfile'.  Count used as with |zg|.
"zwg   """""" Undo |zw| and |zg|, remove the word from the entry in 'spellfile'.  Count used as with |zg|.
"
" Automatically save and load folds
"autocmd BufEnter * lcd %:p:h
" Automatically save and load folds
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview "
"
autocmd BufWritePost $MYVIMRC source $MYVIMRC

"" -----good part--end------------------
"
"" -----vim-plugin part--Start------------------
" 1. get the plugin.vim file
"
"" for vim
"vim" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"vim"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
"" for neovim
"neovim" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"neovim"        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"
"vim" mkdir -p ~/.vim/autoload
"vim" git clone https://github.com/junegunn/vim-plug.git ~/.vim/autoload/plug.vim
"neovim" mkdir -p ~/.local/share/nvim/site/autoload
"neovim" git clone https://github.com/junegunn/vim-plug.git ~/.local/share/nvim/site/autoload/plug.vim
"
" copy following words into bot of your .vimrc file
" vundle set before call plugin list
set nocompatible              " be iMproved, required for Vundle
"syntax on     "overrule your settings with the defaults
syntax enable     "keep your current color settings
filetype off                  " required for Vundle
"
" set the runtimepath to include Vundle and initialize rtp=runtimepath
"set runtimepath+=~/.vim/syntax
"todo" set rtp+=~/.vim/bundle/Vundle.vim
""set rtp+=~/.local/share/nvim/site/autoload/plug.vim
"
"worked""" set runtimepath
"worked"set rtp+=~/.local/share/nvim/site/autoload
"worked""" load plugin ~/.local/share/nvim/site/autoload/plug.vim/plug.vim
"worked"runtime! plug.vim/plug.vim
"
"" create a folder to maintain vim-plug
"" info Required plugin in init.vim will be installed in ~/.local/share/nvim/plugged/ for neovim
"todo" mkdir -p ~/.vim/vim-plug
"" clone the vim-plug to local
"todo" git clone https://github.com/junegunn/vim-plug.git ~/.vim/vim-plug/vim-plug
"" set runtimepath
set rtp+=~/.vim/vim-plug
"" load vim-plug plugin before call required plugin
runtime! vim-plug/plug.vim
""
"vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
"help file: https://github.com/VundleVim/Vundle.vim/blob/v0.10.2/doc/vundle.txt
"http://vim-scripts.org/vim/scripts.html

" call vundle from ~/.vim/bundle
" call vundle#begin()
""call plug#begin("~/.local/share/nvim/site/autoload/plug.vim")
call plug#begin()
"required for Vundle
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')
"
"vim-plug"todo" Plug 'VundleVim/Vundle.vim'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'tomasr/molokai'
"Plugin 'vim-scripts/phd'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'derekwyatt/vim-fswitch'
"Plugin 'kshenoy/vim-signature'
"Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
"Plugin 'majutsushi/tagbar'
"Plugin 'vim-scripts/indexer.tar.gz'
"Plugin 'vim-scripts/DfrankUtil'
"Plugin 'vim-scripts/vimprj'
"Plugin 'dyng/ctrlsf.vim'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'vim-scripts/DrawIt'
"Plugin 'SirVer/ultisnips'
""
""for_vim""Plugin 'Valloric/YouCompleteMe'
"""recompile the YouCompleteMe for local Env
"re-compile lib for YCM
""sudo apt install python2.7-dev
"""cd ~/.vim/bundle/YouCompleteMe
"""./install.py --clang-completer
"""or
"""./install.py --all
""" will download clang and other plugin automatically
"
"The g:ycm_auto_trigger option
"auto popup to complete
"augroup set_completeopt
"  au!
"  au Filetype * set completeopt=menu,preview
"augroup END
""
""A completion plugin for neovim coded in Lua.
"" Reference: https://github.com/hrsh7th/nvim-cmp
"" This example configuration uses vim-plug as the plugin manager and vim-vsnip as a snippet plugin.
"call plug#begin(s:plug_dir)
"nvim-cmp completion plugin
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
"todo"Plug 'neovim/nvim-lspconfig'  " LSP 配置
"todo"Plug 'hrsh7th/nvim-cmp'       " 自动补全
"todo"Plug 'hrsh7th/cmp-nvim-lsp'   " LSP 补全源
Plug 'williamboman/mason.nvim' " LSP 安装工具
"nvim-cmp source for buffer words
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
"A completion plugin for neovim coded in Lua
Plug 'hrsh7th/nvim-cmp'
"
" For vsnip users.
" Snippet plugin for vim/nvim that supports LSP/VSCode's snippet format.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
"call plug#end()
"
"https://scalameta.org/metals/docs/editors/vim/
"https://github.com/scalameta/nvim-metals?tab=readme-ov-file#installation
"todo"Prerequisites
"1. latest nvim v.0.10.x or newer.
"2. Ensure Coursier is installed locally
"3. Ensure that you have all the LSP mappings for the core functionality you want setup
"4. Ensure plenary.nvim is installed
"5. Subscribe to this discussion which will notify you of any breaking changes.
"6. Unfamiliar with Lua and Neovim? Check out the great :h lua-guide.
"needed""Plugin 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'scalameta/nvim-metals'
":help metals-commands
"
"
"Plugin for quarto start
"" reference: https://github.com/quarto-dev/quarto-nvim
Plug 'quarto-dev/quarto-nvim'
Plug 'jmbuhr/otter.nvim'
"todo"debug"Plugin 'nvim-treesitter/nvim-treesitter'
"Plugin 'hrsh7th/nvim-cmp'
"Plugin 'neovim/nvim-lspconfig'
" :QuartoPreview
"Plugin for quarto end
"
"todo""https://github.com/jmbuhr/quarto-nvim-kickstarter
"
"
"tabnine-vim is good complete plugin based on youcomplete. It is better to use on Windows. YCM is not good for windows install
"Plugin 'zxqfl/tabnine-vim'
"Plugin 'derekwyatt/vim-protodef'
"Plugin 'scrooloose/nerdtree'
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'gcmt/wildfire.vim'
"Plugin 'sjl/gundo.vim'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'lilydjwg/fcitx.vim'
"""""Verilog/SystemVerilog Syntax and Omni-completion
Plug 'vhda/verilog_systemverilog.vim'
Plug 'azidar/firrtl-syntax'
"todo""Plug 'Python-Syntax-Folding'
Plug 'vim-scripts/Python-Syntax-Folding'
Plug 'Konfekt/FastFold'
"" https://github.com/Konfekt/FastFold

"if !has('nvim')
"  Plugin 'Python-Syntax-Folding'
"  Plugin 'Konfekt/FastFold'
"  ""set ttymouse=xterm2
"endif

"https://github.com/vhda/verilog_systemverilog.vim
"the following example is used to show the installation of different plugin
" 以下范例用来支持不同格式的插件安装.
" please file the script of install plugin between vundle#begin and
" vundle#end.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" the plugin on github
" 格式为 Plugin '用户名/插件仓库名'
" format: Plugin 'Username/PluginName'
""Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" The plugin from http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
"""Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
"""Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
"""Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
"""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
"""Plugin 'ascenator/L9', {'name': 'newL9'}
" 你的所有插件需要在下面这行之前
" 插件列表结束
"Plugin 'qshan/nerdcommenter'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
"
"not_work"Plugin 'qshan/firrtl-syntax'
Plug 'derekwyatt/vim-scala'
"
"todo" https://github.com/mattf1n/VimMarp
"todoPlugin 'skywind3000/asyncrun.vim'
"todoPlugin 'mattf1n/VimMarp.vim'
"
" https://www.shixuen.com/linux/vim_markdown.html
"" https://secluded.site/vim-as-a-markdown-editor/#vim-markdown
"" https://codeinthehole.com/tips/writing-markdown-in-vim/
" install vim-markdown
""https://github.com/qshan/vim-markdown
""#todo# sudo apt install vim-addon-manager
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
""Plugin 'godlygeek/tabular'
""Plugin 'plasticboy/vim-markdown'
""
"" reference linker https://zhuanlan.zhihu.com/p/35536223
"" reference linker https://github.com/iamcco/markdown-preview.nvim
"" reference liker: https://dev.to/hrk2023/markdown-preview-in-vim-44bl
Plug 'mzlogin/vim-markdown-toc'
""TODO"
Plug 'iamcco/mathjax-support-for-mkdp'
""TODO"
Plug 'iamcco/markdown-preview.nvim'
" sudo apt install yarn
"
" https://github.com/instant-markdown/vim-instant-markdown
Plug 'instant-markdown/vim-instant-markdown'
"todo" sudo npm -g install instant-markdown-d
"todo" sudo apt install xdg-utils  curl nodejs
" sudo apt install pandoc
" pip install --user smdv
" reference info : https://github.com/instant-markdown/vim-instant-markdown
" help info: :help vim-instant-markdown-configuration
"disable autostart"" let g:instant_markdown_autostart = 0
"Manual start""       InstantMarkdownPreview|
"Manual stop""        InstantMarkdownStop|
" :Toc
" :InsertToc
" :SetexToAtx
" Markdown format reference web :
" https://docs.github.com/zh/get-started/writing-on-github/working-with-advanced-formatting
"
" Plugin 'mzlogin/vim-markdown-toc'
" :GenTocGFM
" :GenTocMarked
":source %
":PluginInstall
":call mkdp#util#install()
""
"
Plug 'tpope/vim-surround'
"  ds
"  Old text                  Command     New text ~
"  "Hello *world!"           ds"         Hello world!
"  (123+4*56)/2              ds)         123+456/2
"  <div>Yo!*</div>           dst         Yo!
"  cs
"  [123+4*56]/2              cs])        (123+456)/2
"  "Look ma, I'm *HTML!"     cs"<q>      <q>Look ma, I'm HTML!</q>
"  "Hello *world!"           cs"'        'Hello world!'
"  "Hello *world!"           cs"<q>      <q>Hello world!</q>
"  (123+4*56)/2              cs)]        [123+456]/2
"  (123+4*56)/2              cs)[        [ 123+456 ]/2
"  <div>Yo!*</div>           cst<p>      <p>Yo!</p>
"  ys
"  if *x>3 {                 ysW(        if ( x>3 ) {
"  Hello w*orld!             ysiw)       Hello (world)!
"  Hello w*orld!             yssB            {Hello world!}
"  ysW
"  "hello"                   ysWfprint<cr>     print("hello")
"  "hello"                   ysWFprint<cr>     print( "hello" )
"  "hello"                   ysW<C-f>print<cr> (print "hello")
" info yss
"  print "Hello *world!"     yss-        <?php print "Hello world!" ?>
"  my $str = *whee!;         vllllS'     my $str = 'whee!';
"--------------------
""
Plug 'jiangmiao/auto-pairs'
"
"" input methods for chinese language input
"" reference linker https://github.com/ZSaberLv0/ZFVimIM
""Plugin 'ZSaberLv0/ZFVimIM'
""Plugin 'ZSaberLv0/ZFVimJob' " optional, for better db load performance
""
"" enable ZFVimIM and change input mode: ;;
"" search next: ;
"
"" reference linker https://zhuanlan.zhihu.com/p/79615409
Plug 'ZSaberLv0/ZFVimIM'
Plug 'ZSaberLv0/ZFVimJob'
Plug 'ZSaberLv0/ZFVimGitUtil'
"Plugin 'YourUserName/ZFVimIM_pinyin_base'
"TODO""Plugin 'ZSaberLv0/ZFVimIM_pinyin_base'
"TODO""Plugin 'ZSaberLv0/ZFVimIM_pinyin'
"TODO""Plugin 'ZSaberLv0/ZFVimIM_openapi'
""
"" reference linker https://github.com/StrayDragon/vim-smartim
""TODO"Plugin 'StrayDragon/vim-smartim'
""
Plug 'makerj/vim-pdf'
"
"https://github.com/chrisbra/vim-diff-enhanced
Plug 'chrisbra/vim-diff-enhanced'
":help EnhancedDiff
"
"https://github.com/will133/vim-dirdiff
Plug 'will133/vim-dirdiff'
":help dirdiff
":DirDiff <dir1> <dir2>
"vim -c "DirDiff dir1 dir2"
"
" https://github.com/rickhowe/diffchar.vim
Plug 'rickhowe/diffchar.vim'
":help diffchar
"
":help hl-DiffText
":help hl-DiffChange
":hi
"
"
"call vundle#end()
call plug#end()
"required for Vundle
"
filetype on
filetype plugin on
filetype plugin indent on    "required for Vundle 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"" To ignore plugin indent changes, instead use:
"filetype plugin on
"
"mathjax reference :
" https://www.mathjax.org/
" https://docs.github.com/zh/get-started/writing-on-github/working-with-advanced-formatting/writing-mathematical-expressions
" https://github.github.com/gfm/
"Minimal default configuration for instant-markdown
filetype plugin on
" :help vim-instant-markdown-configuration
let g:instant_markdown_autostart = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_mermaid = 1
let g:instant_markdown_slow = 1
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_mermaid = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
"let g:instant_markdown_theme = 'dark'
"
" setting for Plugin 'mzlogin/vim-markdown-toc'
let g:vmt_link = 1
let g:vmt_min_level = 1
let g:vmt_max_level = 6
"
"todo"" metals config
"  metals_config = require("metals").bare_config()
"  metals_config.settings = {
"    verboseCompilation = true,
"    excludedPackages = {
"      "akka.actor.typed.javadsl",
"      "com.github.swagger.akka.javadsl"
"    }
"  }
"
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" 常用的命令
" :PluginList         - 列出所有已配置的插件
" :PluginInstall      - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo   - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean        - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后
"" -----Vundle part--end------------------
"
"nvim"" for ycm
"nvim""let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
"nvim""let g:ycm_confirm_extra_conf = 0
"
"vim for ycm
let g:ycm_show_detailed_diag_in_popup=1
"vim C-c to close the popup
    autocmd FileType c,cpp let b:ycm_hover = {
      \ 'command': 'GetDoc',
      \ 'syntax': &filetype
      \ }
"
" Reference: https://github.com/hrsh7th/nvim-cmp
"""" Configuration of 'hrsh7th/nvim-cmp' 'hrsh7th/nvim-lspconfig'
" work with plugin 'hrsh7th/nvim-cmp'
"
lua <<EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)

        -- For `mini.snippets` users:
        -- local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
        -- insert({ body = args.body }) -- Insert at cursor
        -- cmp.resubscribe({ "TextChangedI", "TextChangedP" })
        -- require("cmp.config").set_onetime({ sources = {} })
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
  -- Set configuration for specific filetype.
  --[[ cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' },
    }, {
      { name = 'buffer' },
    })
 })
 require("cmp_git").setup() ]]--

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  --todo-- require('lspconfig')['<cmp_nvim_lsp>'].setup {
  --todo--   capabilities = capabilities
  --todo-- }
EOF
"
"""" end of Configuration of 'hrsh7th/nvim-cmp' 'hrsh7th/nvim-lspconfig'
"
"
" Overview of which map command works in which mode.  More details below.
"      COMMANDS                    MODES ~
" :map   :noremap  :unmap     Normal, Visual, Select, Operator-pending
" :nmap  :nnoremap :nunmap    Normal
" :vmap  :vnoremap :vunmap    Visual and Select
" :smap  :snoremap :sunmap    Select
" :xmap  :xnoremap :xunmap    Visual
" :omap  :onoremap :ounmap    Operator-pending
" :map!  :noremap! :unmap!    Insert and Command-line
" :imap  :inoremap :iunmap    Insert
" :lmap  :lnoremap :lunmap    Insert, Command-line, Lang-Arg
" :cmap  :cnoremap :cunmap    Command-line
" :tmap  :tnoremap :tunmap    Terminal
"
"set the leaderkey setting
"let mapleader = "Space"  "map leader-key to ,
let mapleader = ","  "map leader-key to ,
"info"" check the leaderkey map
":echo mapleader
nmap <leader>n :set number<CR>
nmap <leader>t :tabnew<CR>
""info" :map  ""lists current mappings
""info" show the hotkey define in current status
" :map
"
"set here again to avoid the vundle's plugin setting
:hi CursorLine   cterm=NONE ctermbg=grey gui=NONE guibg=Grey40
":hi CursorLine   cterm=NONE ctermbg=DarkYellow gui=NONE guibg=Grey40
":hi CursorLine   cterm=NONE ctermfg=Black ctermbg=grey gui=NONE guibg=Grey40
:hi CursorColumn cterm=NONE ctermbg=grey gui=NONE guibg=Grey40
":autocmd InsertEnter * highlight CursorLine cterm=bold gui=bold
:autocmd InsertEnter * highlight CursorLine cterm=underline ctermbg=NONE gui=underline guibg=NONE
":autocmd InsertLeave * highlight CursorLine cterm=NONE gui=NONE
:autocmd InsertLeave * highlight CursorLine cterm=NONE      ctermbg=grey gui=NONE      guibg=Grey40

"          *cterm-colors*
"      NR-16   NR-8    COLOR NAME ~
"      0       0       Black
"      1       4       DarkBlue
"      2       2       DarkGreen
"      3       6       DarkCyan
"      4       1       DarkRed
"      5       5       DarkMagenta
"      6       3       Brown, DarkYellow
"      7       7       LightGray, LightGrey, Gray, Grey
"      8       0*      DarkGray, DarkGrey
"      9       4*      Blue, LightBlue
"      10      2*      Green, LightGreen
"      11      6*      Cyan, LightCyan
"      12      1*      Red, LightRed
"      13      5*      Magenta, LightMagenta
"      14      3*      Yellow, LightYellow
"      15      7*      White
"
"
"filetype on
"set the *.min file as the makefile type
"au BufReadPre,BufNewFilE,FileReadPost *.min,Make*  set filetype=make
:au BufReadPre,BufNewFilE,FileReadPost *.min,Make*  setfiletype make
"set *.min file with make syntax highlight
:autocmd BufReadPost,FileReadPost *.min,Make* set syntax=make
""
"au BufReadPre,BufReadPost,BufNewFilE,FileReadPost *.v,*.sv  set filetype=verilog_systemverilog
:au BufReadPre,BufReadPost,BufNewFilE,FileReadPost *.v,*.sv  setfiletype verilog_systemverilog
"
"set the *.scala file as the makefile type
"au BufReadPre,BufReadPost,BufNewFilE,FileReadPost *.scala,*.sc,*.sbt  set filetype=scala
:au BufReadPre,BufReadPost,BufNewFilE,FileReadPost *.scala,*.sc,*.sbt,*.mill  setfiletype scala
"
"set the *.cshrc and *_cshrc file as the makefile type
au BufReadPre,BufReadPost,BufNewFilE,FileReadPost *.cshrc,*_cshrc  set filetype=csh
"set *.cshrc and *_cshrc file with make syntax highlight
:autocmd BufReadPost,FileReadPost *.cshrc,*_cshrc set syntax=csh
"
"set the *.emacs and *_emacs file as the makefile type
"au BufReadPre,BufNewFilE,FileReadPost *.emacs,*_emacs  set filetype=lisp
:au BufReadPre,BufNewFilE,FileReadPost *.emacs,*_emacs  setfiletype lisp
"set *.emacs and *_emacs file with make syntax highlight
:autocmd BufReadPost,FileReadPost *.emacs,*_emacs set syntax=lisp
"
"markdown
 :au BufReadPre,BufNewFilE,FileReadPost *.md,*_md  set filetype=markdown
"set *.emacs and *_emacs file with make syntax highlight
:autocmd BufReadPost,FileReadPost *.md,*_md set syntax=markdown
"
"The ":syntax" commands are implemented by sourcing a file.  To see exactly how
"this works, look in the file:
"    command           file ~
"    :syntax enable    $VIMRUNTIME/syntax/syntax.vim
"    :syntax on        $VIMRUNTIME/syntax/syntax.vim
"    :syntax manual    $VIMRUNTIME/syntax/manual.vim
"    :syntax off       $VIMRUNTIME/syntax/nosyntax.vim
"
"TODO""au Syntax c           runtime! syntax/c.vim
"TODO""au Syntax cpp         runtime! syntax/cpp.vim
"TODO""au Syntax sv          runtime! syntax/verilog.vim
"
"------------------------------
"set the *.c,*.h file auto pattern
":autocmd BufEnter  *.c,*.h     abbr FOR for (i = 0; i < 3; ++i)<CR>{<CR>}<Esc>O
":autocmd BufLeave  *.c,*.h     unabbr FOR

"highlight the keywords you need in vim
"highlight <-> hi
highlight MatchParen ctermbg=DarkRed guibg=lightblue
"hi MatchParen ctermbg=DarkRed guibg=lightblue
"
""highlight  the user defined keywords

""todo""list the syntax list
""syntax list
""list the syntax specific item
""syntax syntax_item_name
"it is better to put those match words on end of file
"just one highlight type per time
"worked":match Todo /TODO\|todo\|Todo\|fshan\|qshan\|DSF_IP\|dsf_ip\|fixme/
au BufWinEnter,BufReadPost,FileReadPost * :match Todo /fshan\|qshan\|??\|DSF_IP\|dsf_ip\|fixme\|FIXME\|Fixme\|FixMe\|Todo\|todo/

""""""                                          syntax keyword FrankShanTodo    fshan qshan DSF_IP dsf_ip TODO todo Todo fixme Fixme FIXME
""""""au BufWinEnter,BufReadPost,FileReadPost * syntax keyword FrankShanTodo    fshan qshan DSF_IP dsf_ip TODO todo Todo fixme Fixme FIXME
""""""highlight link FrankShanTodo  Todo

"
"worked":2match Error /Error:\|error:\|ERROR:\|Error-\|ERROR-\|error-/
au BufWinEnter,BufReadPost,FileReadPost * :2match Error /Error:\|error:\|ERROR:\|Error-\|ERROR-\|error-\|\s\+$/
"
highlight Underlined term=reverse cterm=bold ctermfg=7 ctermbg=1 gui=reverse guifg=White guibg=Red
":3match Underlined /incompatible\|redefined\|expansion/
"worked":3match WildMenu /incompatible\|redefined\|expansion\|worked\|info/
au BufWinEnter,BufReadPost,FileReadPost * :3match WildMenu /incompatible\|redefined\|expansion\|worked\|info\>\|not\|issue/
"
"
"need source $MYVIMRC after e(open)
"syntax keyword FrankShanTodo   todo DSF_IP dsf_ip fshan
"syntax keyword FrankShanError  Error error
"syntax keyword FrankShanError  Error: error: Error-
"hi def link FrankShanTodo      Todo
"hi def link FrankShanError     Error
"
"need source $MYVIMRC after e(open)
"syntax match Todo /todo\|fshan\|DSF_IP\|dsf_ip/
"syntax match Error /Error\:\|error\:\|error\-\|Error\-/


""you could check the highlight details with hi or highlight
"""""syntax keyword FrankShanTodo  contained fshan DSF_IP dsf_ip TODO todo Todo
"""""hi FrankShanTodo   term=standout ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow
""""""highlight link FrankShanTodo  Todo
"""""syntax keyword FrankShanError contained Error error "Error:" "error:" "Error-" "error-"
"""""hi FrankShanError  term=reverse cterm=bold ctermfg=7 ctermbg=1 guifg=White guibg=Red
""""""highlight link FrankShanError Error
""""""Todo  xxx term=standout ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow
""""""Error xxx term=reverse cterm=bold ctermfg=7 ctermbg=1 guifg=White guibg=Red


"" -----match jump part--start------------------
"packadd! matchit
set showmatch
" Highlight matching pairs of brackets. Use the '%' character to jump between them.
"set mps+=<:>
"set matchpairs+=<:>
"let b:match_ignorecase = 0
:au FileType c,cpp,java set mps+==:;
"":autocmd FileType c,cpp,java set mps+==:;
"set sm
"------------------------------
filetype plugin on
if exists("loaded_matchit")
else
"source ~/.vim/plugin/matchit.vim
  if !has('nvim')
""    source $VIMRUNTIME/macros/matchit.vim
  else
""    source /usr/share/nvim/runtime/plugin/matchit.vim
  endif
endif

if exists("loaded_matchit")
  let b:match_ignorecase = 0
  "let b:match_ignorecase = 1
  let b:match_skip = 's:Comment'
""  let b:match_words = '<:>'
  "autocmd BufReadPre,BufNewFile,FileReadPost *.min  set filetype=make
  ":autocmd FileType systemverilog :let b:match_words .=  '<:>,'
  "                    \ . 'module:endmodule,'
endif "end of if exists("loaded_matchit")

:let b:match_words  =  '<:>,'
                    \ . '\<module\>:\<endmodule\>,'
                    \ . '\<begin\>:\<end\>,'
                    \ . '\<fork\>:\<join\>\|\<join_any\>\|\<join_none\>,'
                    \ . '\<class\>:\<endclass\>,'
                    \ . '\<function\>:\<endfunction\>,'
                    \ . '\<task\>:\<endtask\>,'
                    \ . '\<case\>\|\<casex\>\|\<casez\>:\<default\>:\<endcase\>,'
                    \ . '\<#ifdef\>\|\<#ifndef\>\|\<#if\>\|\<#ifeq\>\|\<#ifneq\>:\<#else\>:\<#endif\>,'
                    \ . '\<ifdef\>\|\<ifndef\>\|\<ifeq\>\|\<ifneq\>:\<else\>:\<endif\>,'
                    \ . '\<`ifdef\>\|\<`ifndef\>\|\<`if\>:\<`else\>:\<`endif\>,'
                    \ . '\<if\>:\<else\>,'
                    \ . '\<while\>:\<continue\>:\<break\>:\<endwhile\>'
                    \ . 'fshan_start:fshan_end,'
                    \ . '\<fshan_start\>:\<fshan_end\>'

"
"autocmd BufReadPre,BufNewFilE *.min  set filetype=make
":autocmd FileType c,cpp let b:match_words .=  '<:>,' .
:autocmd FileType tcsh,csh let b:match_words =  '<:>,' . '/<if/>:/<then/>:/<else/>:/<endif/>'
"
:autocmd FileType bash let b:match_words =  '<:>,' . '/<if/>:/<then/>:/<else/>:/<fi/>'
"

"filetype on
"autocmd BufReadPre,BufNewFilE *.min  set filetype=make
":autocmd FileType c,cpp let b:match_words .=  '<:>,' .
"
":autocmd FileType c,cpp :let b:match_words .=  '/<if/>:/<else/>,'
:autocmd FileType c,cpp let b:match_words =  '<:>,'
                    \ . '/<if/>:/<else/>,'
                    \ . '\<#ifdef\>\|\<#ifndef\>\|\<#if\>:\<#elif\>:\<#else\>:\<#endif\>,'
                    \ . '\<switch\>:\<case\>:\<case\>\|\<default\>'
"

:autocmd FileType systemVerilog let b:match_words =  '<:>,' . '/<`if/>:/<`else/>:/<`endif/>'

":au BufEnter *.sv,*.svh,*.v,*.vh :let b:match_words='module\>:endmodule\>'
"set the match_words according the #####file extension name#####
autocmd BufReadPost,BufNewFile,FileReadPost *.sv,*.svh,*.v,*.vh  :let b:match_words =  '<:>,'
                    \ . 'module\>:endmodule\>,'
                    \ . 'begin\>:\<end\>,'
                    \ . 'fork\>:join\>\|join_any\>\|join_none\>,'
                    \ . 'class\>:endclass\>,'
                    \ . 'package\>:endpackage\>,'
                    \ . 'function\>:endfunction\>,'
                    \ . 'task\>:endtask\>,'
                    \ . 'case\|casex\|casez:default\s*\::endcase\>,'
                    \ . '`ifdef\>\|`ifndef\>:`elsif\>\|`else\>:`endif\>,'
                    \ . 'if\>:else\>,'
                    \ . 'while\>:continue\>:break\>:endwhile\>,'
                    \ . 'fshan_start\>:fshan_end\>'

autocmd BufReadPre,BufNewFilE *.c,*.h  :let b:match_words =  '<:>,'
                    \ . '#ifdef\>\|#ifndef\>\|#if\>\|#ifeq\>:#elif\>\|#else:#endif\>,'
                    \ . 'if\>:else\>,'
                    \ . 'switch\>:case\>:default\s*\:\>,'
                    \ . 'for\>:break\>:continue\>,'
                    \ . 'fshan_start\>:fshan_end\>'

".html file match jump
autocmd BufReadPre,BufNewFilE *.html  :let b:match_words = '<:>,' .
        \ '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,' .
        \ '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,' .
        \ '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'
"

"".html file match jump
"autocmd BufReadPre,BufNewFilE *.html  :let b:match_words = '<:>,'
"                    \ . '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,'
"                    \ . '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,'
"                    \ . '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'



set showmatch
"set sm
"let b:match_ignorecase = 0
"
"
"filetype on
"autocmd BufReadPre,BufNewFilE *.min  set filetype=make
":autocmd FileType c,cpp let b:match_words .=  '<:>,' .
"
"""""":let b:match_words = '<:>,'
"""""":let b:match_words .=  '<:>,'
""""""                    \ . 'module:endmodule,'
""""""                    \ . 'begin:\<end\>,'
""""""                    \ . 'fork:\<join\>\|join_any\|join_none,'
""""""                    \ . 'class\>:endclass\>,'
""""""                    \ . 'package:endpackage,'
""""""                    \ . 'function:endfunction,'
""""""                    \ . '\<task\>:\<endtask\>,'
""""""                    \ . 'case\|casex\|casez:default\s*\::endcase,'
""""""                    \ . '\<#ifdef\>\|\<#ifndef\>\|\<#if\>\|\<#ifeq\>\|\<#ifneq\>:\<#else\>:\<#endif\>,'
""""""                    \ . 'ifdef\|ifndef\|ifeq\|ifneq:else:\<endif\>,'
""""""                    \ . '`ifdef\|`ifndef\|`if:`else:`endif,'
""""""                    \ . '\<if\>:\<else\>,'
""""""                    \ . '\<while\>:\<continue\>:\<break\>:\<endwhile\>,'
""""""                    \ . '\<fshan_start\>:\<fshan_end\>'
"
":autocmd FileType systemVerilog let b:match_words =  '<:>,' . '/<`if/>:/<`else/>:/<`endif/>'
"
":autocmd FileType c,cpp :let b:match_words .=  '/<if/>:/<else/>,'
":autocmd FileType c,cpp let b:match_words =  '<:>,'
"                    \ . '/<if/>:/<else/>,'
"                    \ . '\<#ifdef\>\|\<#ifndef\>\|\<#if\>:\<#elif\>:\<#else\>:\<#endif\>,'
"                    \ . '\<switch\>:\<case\>:\<case\>\|\<default\>'
"

"filetype on
":autocmd BufReadPost,FileReadPost *.min set syntax=make
"autocmd BufReadPre,BufNewFilE *.min  set filetype=make
"set match_words according the #####filetype#####
:autocmd FileType tcsh,csh let b:match_words =  '<:>,'
                          \. 'if\>:then\>:else\>:endif\>'
"
:autocmd FileType bash,sh let b:match_words =  '<:>,'
                          \. 'if\>:then\>:else\>:fi\>\|endif\>,'
                          \. 'func!\>:endfunc\>'
"
"format of match_words:
"         ='<:>,' .
"       \  '<:>,' .
"       \  '< \<match_head1 \> \| \< match_head2 \> : \<match_end \>,' .
"       \  '<fshan_start:fshan_end>'
"
"" -----match jump part--end------------------
""
""" -----hightlight setting--start-------------------
"highlight the keywords you need in vim
"highlight <-> hi
highlight MatchParen ctermbg=DarkRed guibg=lightblue
"hi MatchParen ctermbg=DarkRed guibg=lightblue
"
""highlight  the user defined keywords

"it is better to put those match words on end of file
"just one highlight type per time
":match Todo /fshan\|DSF_IP\|dsf_ip\|Error\:\|error:\|Error\-\|error\-/
"
"need source $MYVIMRC after e(open)
"syntax keyword FrankShanTodo   todo DSF_IP dsf_ip fshan
"syntax keyword FrankShanError  Error error
"syntax keyword FrankShanError  Error: error: Error-
"hi def link FrankShanTodo      Todo
"hi def link FrankShanError     Error
"
"need source $MYVIMRC after e(open)
":highlight to check the build-in item
"TODO#add keyword in syntax list
"syntax match Underlined
"syntax match ErrorMsg
"syntax match IncSearch
"syntax match WildMenu
"syntax match SpaceOnEnd
"worked""syntax match Todo /todo\|info\|DSF_IP\|dsf_ip\|fshan\|qshan\|worked/
"worked""syntax match Error /Error\:\|error\:\|error\-\|Error\-/
"syntax match Ignore /Error\:\|error\:\|error\-\|Error\-/
"syntax match Underlined /Error\:\|error\:\|error\-\|Error\-/
"
"au BufReadPost,FileReadPost *.* :syntax match WildMenu /info\|DSF_IP\|dsf_ip\|fshan\|qshan\|worked/
"au BufReadPost,FileReadPost *.* :syntax match Todo /todo\|TODO\|toDo/
"au BufReadPost,FileReadPost *.* :syntax match Error /Error\:\|error\:\|error\-\|Error\-/


""you could check the highlight details with hi or hightlight
"""""syntax keyword FrankShanTodo  contained fshan DSF_IP dsf_ip TODO todo Todo
"""""hi FrankShanTodo   term=standout ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow
""""""highlight link FrankShanTodo  Todo
"""""syntax keyword FrankShanError contained Error error "Error:" "error:" "Error-" "error-"
"""""hi FrankShanError  term=reverse cterm=bold ctermfg=7 ctermbg=1 guifg=White guibg=Red
""""""highlight link FrankShanError Error
""""""Todo  xxx term=standout ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow
""""""Error xxx term=reverse cterm=bold ctermfg=7 ctermbg=1 guifg=White guibg=Red
""" -----hightlight setting--End-------------------
""
""" -----personal command--Start-------------------
"
"define update the tags command in vim env, this require ctags is avilable in env
"":! command_you_want_to_run    "run the shell command in VIM command
command! UpdateTags                             !ctags -R .
"command! MyTags                                 set tags=tags
"command! MyTags                                 let pwdtags = getcwd() .. "/tags" | execute "set tags=" . pwdtags
command! MyTagsPwd                              let &tags = getcwd() .. "/tags"
"set tags?
"echo tagfiles()
"echo ${getcwd() . "/tags"}
"let &tags = getcwd() .. "/tags"
"
"let pwdtags = getcwd() .. "/tags2" | execute "set tags=" . pwdtags
"set tags?
"echo tagfiles()
"command! MyCdFilePath                           cd %:p:h
command! MyCdCurrentFilePath                    cd %:p:h
command! MyDotInIskeywordAdd                    set iskeyword+=.
command! MyDotInIskeywordRemove                 set iskeyword-=.
"command! MySaveWithSudo                         :w !sudo tee %
command! MySaveWithSudo                         :w !sudo -S tee %
command! MySearchCompileError                   :/"incompatible\|redefined\|expansion\|error\:\|Error\:\|error\-"
command! MyReadCurrentFileName                  :r! echo %
command! MyReadCurrentFileNameWithFullPath      :r! echo %:p
command! MyRemoveWhiteSpaceOnEnd                :%s/\s\+$//g
""autocmd BufWritePost *                          :MyRemoveWhiteSpaceOnEnd
"worked"autocmd BufWritePost *                          :%s/\s\+$//g
command! MyRemoveEmptyLine                      :%s/^\s*$\n//g
command! MyRemoveLineExtensionAll               :%s/\ \+\\$//g
command! MyReplaceSpaceWithNewLine              :%s/\s\+/\r/g
command! MyReplaceSpaceWithNewLine1             :%s/\s\+//g
command! MyReplaceSpaceWithTab                  :%s/\s\+/\t/g
command! MyReplaceSpaceWithUnderLine            :s/\s\+/_/g
command! MyExchangePattern12                    :s/\(Pattern1\)\(Pattern2\)/\2\1/g
""command! MySpellCheckEn                         set spell spelllang=en_us
command! MySpellCheckEn                         setlocal spell spelllang=en_us
command! MyCheckCurrentActiveGroups             :so $VIMRUNTIME/syntax/hitest.vim
command! MyCheckFiletype                        : set filetype?
command! MyAddMatchWords                        let b:match_words= '<:>,' .
command! MyAddLineExtension                     :s/\(.*\)/\1 \\/g
command! MyAddLineExtensionAll                  :%s/\(.*\)/\1 \\/g
command! MyAddLineExtensionWith1                :s/\(.*\)/\1 \|/g
command! MyShowHex                              :%!xxd
"command! MyDiffIgnoreWhiteSpace                 :set diffopt+=iwhite,iblank
command! MyDiffIgnoreWhiteSpace                 :set diffopt+=iwhite,iblank | hi DiffChange ctermbg=67 guibg=Grey40
command! MyDiffIgnoreWhiteSpaceCase             :set diffopt+=iwhite,iblank,icase
":set diffopt+=horizontal
"vim -c "set diffopt+=horizontal"
"command! MyCursorHighlight                      :hi CursorLine cterm=NONE ctermbg=grey CursorColumn ctermbg=grey
command! MyCursorColumn                         :hi CursorColumn cterm=NONE ctermbg=grey guibg=Grey40
command! MyCursorLine                           :hi CursorLine cterm=NONE ctermbg=grey gui=NONE guibg=Grey40
":let b:match_words =  '<:>,' . '/<if/>:/<then/>:/<else/>:/<endif/>\|/<fi/>'
" :set diffopt+=iblank
" :set diffopt+=iwhite
" :set diffopt+=icase
" :set diffopt+=iwhiteall
" :set diffopt+=iwhiteeol

command! MyMarkdownPreview                      :set conceallevel=3
command! MyMarkdownPreviewDisable               :set conceallevel=0
command! MyAddContentLinker                     :'<,'>s/$/<a name="item_liner_for_contents"><\/a>/g
command! MyMarkdownInstantMarkdownPreview       :InstantMarkdownPreview
command! MyMarkdownQuartoPreview                :MarkdownPreview
command! MyLoadLazyNeovim                       :luafile ~/.config/nvim/lua/config/lazy.lua


" set for Plugin 'preservim/vim-markdown'
" https://github.com/preservim/vim-markdown
" Folding
" zr: reduces fold level throughout the buffer
" zR: opens all folds
" zm: increases fold level throughout the buffer
" zM: folds everything all the way
" za: open a fold your cursor is on
" zA: open a fold your cursor is on recursively
" zc: close a fold your cursor is on
" zC: close a fold your cursor is on recursively
"
" let g:vim_markdown_folding_disabled = 1
" let g:vim_markdown_folding_style_pythonic = 1
" let g:vim_markdown_override_foldtext = 0
"
" Set header folding level
"let g:vim_markdown_folding_level = 1
"let g:vim_markdown_folding_level = 6
"
" Concealing
" :help concealcursor
" :help conceallevel
"
" Borderless tables
" let g:vim_markdown_borderless_table = 1
" Mappings
" gx ge ]] [[ ][ [] ]h ]u
"
" Insert timestamp at the end of the line in this format: 2020-0527-113245
nnoremap <C-t><C-s> m'A<C-R>=strftime('%Y-%m%d-%H%M%S')<CR>

" Chinese input setting
set encoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gb2312
set termencoding=utf-8
"
:MyTabstop
:MyTagsPwd
"
":set tags=./tags,tags,/home/user/commontags
"todo""set tags=tags
"todo""set autochdir
"gvim -c "set tags=tags"
"
"input a ENTER in vim: C-v, <Enter>, then you could get  as a Enter input in vim
" change line char in windows is ^M, we could input it as i_CTRL-v_CTRL-SHIFT-m
"au BufReadPost,FileReadPost *.v,*.vh,*.sv,*.svh :iab ccc //-------------------- //comments: //--------------------

"set the *.v,*.vh,*.sv,*.svh,*.c,*.h file auto pattern
au BufRead,BufNewFile,FileReadPost *.v,*.vh,*.sv,*.svh,*.c,*.h iab cccc //--------------------//comments: //--------------------

au BufRead,BufNewFile,FileReadPost *.v,*.vh,*.sv,*.svh,*.c,*.h iab Fileheader //--------------------<CR>//Comments: <CR>//--------------------<CR>

"set the *.md file auto pattern
"worked""au BufRead,BufNewFile,FileReadPost *.md iab mdhdl <hr></hr>
"worked""au BufRead,BufNewFile,FileReadPost *.md iab mdpic ![]()

"
"set the *.c,*.h file auto pattern when edit this file
":autocmd BufEnter  *.c,*.h     abbr FOR for (i = 0; i < 3; ++i)<CR>  {<CR>    //code is here<CR>  }<Esc>O
":autocmd BufEnter  *.c,*.h     abbr FOR for (i = 0; i < 3; ++i)<CR>{<CR>}<Esc>O
:autocmd BufEnter  *.c,*.h     abbr FOR for (i = 0; i < 3; ++i)<CR>{<CR>}<Esc>O
:autocmd BufLeave  *.c,*.h     unabbr FOR
"
:autocmd BufEnter  *.c,*.h     abbr WHILE while ()<CR>{<CR>}<Esc>O
:autocmd BufLeave  *.c,*.h     unabbr WHILE
"
:autocmd BufEnter  *.c,*.h     abbr DO do<CR>{<CR>}while ();<Esc>O
:autocmd BufLeave  *.c,*.h     unabbr DO
"
:autocmd BufEnter  *.c,*.h     abbr SWITCH switch()<CR>{<CR>case ITEM :<CR>;<CR>break;<CR>case ITEM :<CR>;<CR>break;<CR>default:<CR>;<CR>}<Esc>O
:autocmd BufLeave  *.c,*.h     unabbr SWITCH
""
""" -----personal command--End-------------------
"
""" -----popular command--Start-------------------
"""----------------------------cscope start----------------------------
"##info## To get started, build the cscope database in your project root directory: >
"info"" cscope -bcqR
"##info## By default the cscope database file is named "cscope.out". After building the
"database, connect to it from Nvim:
"info"" :cscope add cscope.out
"##info## That establishes a cscope connection for Nvim to use.  You can check the
"result with ":cs show".  It will show something like:
"info"" Once a cscope connection is established, you can make queries to cscope and
"the results will be printed.  Queries are made using the command ":cs find".
"For example: >
"info"" :cs find g ALIGN_SIZE
"##USAGE   :cs find {querytype} {name}
"       {querytype} corresponds to the actual cscope line
"       interface numbers as well as default nvi commands:
"info"" 0 or s: Find this C #symbol#
"info"" 1 or g: Find this #definition#
"info"" 2 or d: Find functions #called by# this function
"info"" 3 or c: Find functions #calling this function#
"info"" 4 or t: Find this #text string#
"info"" 6 or e: Find this #egrep pattern#
"info"" 7 or f: Find this #file#
"info"" 8 or i: Find files #including this file
"info"" 9 or a: Find places where this symbol is #assigned# a value
"
"""----------------------------cscope end----------------------------
"Hotkeys
"""----------------------------basic command to move cursor in command mode----------------------------
"           k
"      h         l
"           j
"e   "move cursor to end of words
"b   "move cursor to start of words
"w   "move cursor to start of next words
"w   "move cursor to start of the line, (no blank part)
"0   "move cursor to start of the line
"$   "move cursor to end of the line
"v+> "shift right of the line
"v+< "shift left of the line
"
"""open and edit the syntax file in your environment
":e $VIMRUNTIME/syntax/tcl.vim
""" then you could add your keywords in this file
""
"""vim +{command} filename
"""vim -c {command} filename
"""vim --cmd {command}
"""vim -t tag_name
"""vim +{command}
""
"""vim +"source Session_You_Need_call.vim"
"""vim -d filename1 filename2
"""vim -do filename1 filename2
""" dp     "diffput the different block different put
""" do     "diffget the different block different obtain
""" V/S-v to select the line or lines you need, and :diffput or :diffpuwill update the line or lines you selected to other side
""" V/S-v to select the line or lines you need, and :diffget or :diffgwill update the line or lines you selected to current side
""":diffu     "diffupdate
""":diffthis     "enter diff mode with current open files, or difft
""":diffoff     "exit from diff mode, or diffo
" isf     =     isfname
" isk     =     iskeyword
""
" :set diffopt+=iblank
" :set diffopt+=iwhite
" :set diffopt+=icase
" :set diffopt+=iwhiteall
" :set diffopt+=iwhiteeol
"
"""set the syntax style by manual
""set syntax=tcl
""set syn=tcl
"""
""" display current working directory
" :pwd
""" display the file name with full path
":echo expand('%:p')
""" display the file name without path
":echo expand('%:t')
"""display the folder current file located
":echo expand('$:p:h')
"""cd the folder current file located
" :cd %:p:h
"""set path of current window as path "设置当前窗口的工作目录为path
":lcd {path}
"""----------------------------basic command to move cursor in command mode----------------------------
"
""" view the list of all variables and their values
" :let
" :set all
" :set            - shows vars different from defaults
" :set all        - shows all values
" :set foo?       - shows the value of foo
" :set foo+=opt   - add opt to the value w/o changing others
" :set foo-=opt   - remove opt from value
" :set foo&       - reset foo to default value
" :setlocal foo   - only the current buffer
"
""""""##Substitute##
":[range]s[ubstitute]/{pattern}/{string}/[flags] [count]
"
"""Search and replace... (substitute)
"""search whole file and replace, (substitute)
":%s/search_for_this/replace_with_this/
":%s/search_for_this/replace_with_this/g
"  *:s_g*
"[g]  Replace all occurrences in the line.  Without this argument,
" replacement occurs only for the first occurrence in each line.  If the
" 'gdefault' option is on, this flag is on by default and the [g]
" argument switches it off.
""
" replace/substitute the specific lines, from Start to End"
":StartLineNumber,EndLineNumbers/search_for_this/replace_with_this/g
":1,6s/search_for_this/replace_with_this/g
" 5428,9971s/^\(3\.5\.[0-9]*\)/#### \1/g
" 18691,23966s/^\(4\.[0-9]*\.[0-9]*\.[0-9]*\)/##### \1/g
" 18691,23966s/^\(4\.[0-9]*\.[0-9]*\)/#### \1/g
" 18691,23966s/^\(4\.[0-9]*\)/### \1/g
""
":s/search_for_this/replace_with_this/g TheNumberOfRepeated
":s/search_for_this/replace_with_this/g 6
""
" replace the specific lines, from current line to add specific number"
":.,+NumberOfOffset%s/search_for_this/replace_with_this/g
":.,+5s/search_for_this/replace_with_this/g
""
""" confirm each replace
":%s/search_for_this/replace_with_this/c
"
"Line numbers may be specified with:                  *:range* *{address}*
" {number}    an absolute line number  *E1247*
" .           the current line                        *:.*
" $           the last line in the file               *:$*
" %           equal to 1,$ (the entire file)          *:%*
" 't          position of mark t (lowercase)          *:'*
" 'T          position of mark T (uppercase); when the mark is in
"             another file it cannot be used in a range
" /{pattern}[/]       the next line where {pattern} matches           *:/*
" ?{pattern}[?]       the previous line where {pattern} matches       *:?*
" \/          the next line where the previously used search
"             pattern matches
" \?          the previous line where the previously used search
"             pattern matches
" \&          the next line where the previously used substitute
"             pattern matches
"
"Each may be followed (several times) by '+' or '-' and an optional number.
"This number is added or subtracted from the preceding line number.  If the
"number is omitted, 1 is used.  If there is nothing before the '+' or '-' then
"the current line is used.
"info"example of number used in range"
"  .+3                three lines below the cursor
"  /that/+1           the line below the next line containing "that"
"  .,$                from current line until end of file
"  0;/that            the first line containing "that", also matches in the
"                     first line.
"  1;/that            the first line after line 1 containing "that"
"
"
""" Folding, select block, then
":fold
""" Fold control - enable
":set foldenable
""" Fold control - methods selection
":set foldmethod=syntax
""" Folding, define z_f
"z_f
""" Folding, open
"z_o
""" Folding, open all in this folding
"z_A
""" Folding, close
"z_c
"
":help folding
":help fold-commands
":help foldmethod
":set foldmethod=syntax
"z_i - toggle folding
"z_j - move to top of next fold
"z_k - move to bottom of previous fold
"z_a - toggle current fold open and closed
"z_o - open current fold
"z_c - close current fold
"z_A - toggle all current folds at the current cursor position
"z_O - open all current folds at the current cursor position
"z_C - close all current folds at the current cursor position
"info"z_M - Close all folds: set 'foldlevel' to 0.
"info"z_R - Open all folds.  This sets 'foldlevel' to highest fold level.
"
""" delete the words in '' 删除单引号中的文字
"d_i_’
""" delete the words in ""删除双引号中的文字
"d_i_”
""" delete the words in '' and '' 删除单引号以及其中的文字
"d_a_’
""" delete the words in "" and "" 删除单引号以及其中的文字
"d_a_”
""" change mode, delete the words between " and into insert mode
"c_w”
""" change mode, delete to end of line and into insert mode
"c_i_w”
""" change mode, delete to current word internally and into insert mode
"c_i_s”
""" change mode, delete to current sentence internally and into insert mode
"c_i_p”
""" change mode, delete to current paragraph internally and into insert mode
"c_$”
"buffer - show current buffers
":ls
"""buffer - open buffer #2 in this window
":b 2
"registers     - show named registers and what's in them
":reg
"""registers     - paste what's in register "5
"   '"5p'
"""vim tips and tricks https://www.cs.swarthmore.edu/oldhelp/vim/home.html
"""----------------------------some command about the motion in insert mode----------------------------
"motion-6.Text object selection *object-select* *text-objects*  *v_a* *v_i*
"This is a series of commands that can only be used while in Visual mode or after an operator.
"The commands that start with "a" select "a"n object including white space,
"the commands starting with "i" select an "inner" object without white space, or just the white space.  Thus the "inner" commands always select less text than the "a" commands.
"
"i_example:  iw  iW  is  ip  ib  iB  i]  i[  i)  i(  i>  i<  i}  i{  i"  i'  i`  it
"a_example:  iw  iW  is  ip  ib  iB  i]  i[  i)  i(  i>  i<  i}  i{  i"  i'  i`  it
"example:
"c_i_w
"c_i_s
"c_i_p
"
"motion-2.Left-right motions    *left-right-motions*
" f{char}   To [count]'th occurrence of {char} to the right.  The  cursor is placed on {char} |inclusive|.
" F{char}   To the [count]'th occurrence of {char} to the left. The cursor is placed on {char} |exclusive|.
"{char} can be entered like with the |f| command.
" t{char} Till before [count]'th occurrence of {char} to the right.  The cursor is placed on the character left of {char} |inclusive|. {char} can be entered like with the |f| command.
" T{char}  Till after [count]'th occurrence of {char} to the left.  The cursor is placed on the character right of {char} |exclusive|. {char} can be entered like with the |f| command.
"motion-4. Word motions *word-motions*
" w
" e
" b

"motion-5. Text object motions *object-motions*
" (     [count] sentences backward.  |exclusive| motion.
" )     [count] sentences forward.  |exclusive| motion.
" {     [count] paragraphs backward.  |exclusive| motion.
" }     [count] paragraphs forward.  |exclusive| motion.
" ]]    [count] sections forward or to the next '{' in the first column.  When used after an operator, then also stops below a '}' in the first column.  |exclusive| Note that |exclusive-linewise| often applies.
" ][    [count] sections forward or to the next '}' in the first column.  |exclusive| Note that |exclusive-linewise| often applies.
" [[    [count] sections backward or to the previous '{' in the first column.  |exclusive| Note that |exclusive-linewise| often applies.
" []    [count] sections backward or to the previous '}' in the first column.  |exclusive| Note that |exclusive-linewise| often applies.
"""
"""----------------------------basic command to move cursor in insert mode----------------------------
"""i_C-r + %            "insert the filename with
"""i_C-r + *            "insert the clipboard contents (X11: primary selection)
"""i_C-r + +            "insert the clipboard contents
"""i_C-r + :            "insert the last command-line
"""i_C-r + .            "insert the last inserted text
"""i_C-r + '"'          "the unnamed register, containing the text of the last delete or yank
"""i_C-r + '#'          "the alternate file name
"""i_C-r + '/'          "the last search pattern
"""i_C-r + '-'          "the last small (less than a line) delete
"""i_C-v + C-m          "insert the symbo of end of line with windows format
"""i_C-a                "Insert previously inserted text.
"""i_C-w                "delete the word before the cursor
"""i_C-u                "delete all of words before the cursor
"""i_C-c                "exit the insert mode
"""----------------------------case change lowercase uppercase----------------------------
"~                      "swap the case on the cursor location
"g~ RET                 "swap the case on the current line
"gu                     "change to lowercase on the current line
"gU                     "change to uppercase on the current line
"""----------------------------read  the output contenst of command in vim command----------------------------
"read the command output
":r! ls
":read! ls
":! grep -rni "KeyWordSearch" PathName
"""----------------------------Auto completion----------------------------
"""Completion command
"""COMPLETING SPECIFIC ITEMS
"""  C-x    C-f       "info"file names
"""  C-x    C-l       "whole lines
"""  C-x    C-d       "info"macro definitions (also in included files)
"""  C-x    C-i       "info"current and included files
"""  C-x    C-k       "info"words from a dictionary
"""  C-x    C-t       "info"words from a thesaurus
"""  C-x    C-]       "info"tags
"""  C-x    C-v       "info"Vim command line
"""  C-x    C-o       "Omni compeletion
"""  C-x    C-j       "Search keywords to complete in forward directions

"""  C-n              "#####find the next match,
"""  C-p              "find the previous match.
"""  C-y              "#####select current selection
"""  C-e              "quit the selection

"""----------------------------Multi-window----------------------------
"""C + W + s
""":sp [filename]
"""C-w + c                  "close current window
"""C-w + o                  "keep current window, close others
"""C-w + =                  "make all window have same hight
"""C-w + _                  "make current window have the max hight
"""C-w + 1 + _              "make current window have the min hight
""":res(ize) _              "make current window have the min hight
"""C-w + |                  "make current window have the max width
"""C-w + 1 + |              "make current window have the min width
"""C-w + n                  "Creat a new split windows
"""C-w + vn                 "Creat a new split windows
"""C-w + ]                  "Splite current window, and jump to the cursor
""":vp [filename]
"""C-w + h                  "向左移动窗口
"""C-w + j                  "向下移动窗口
"""C-w + j                  "向上移动窗口
"""C-w + l                  "向右移动窗口
"""
"""C-w + w                  "这个命令会在所有窗口中循环移动
"""C-w + t                  "移动到最左上角的窗口
"""C-w + b                  "移动到最右下角的窗口
"""C-w + p                  "移动到前一个访问的窗口
"""
"info""C-w + J                  "show window layout vertically
"info""C-w + H                  "show window layout horizontally
"""
""":res(ize) num            "将窗口的高度调整为num行
""":res num
""":vertical res(ize) num   "将窗口的宽度调整为num列
""":vertical res num        "将窗口的宽度调整为num列
""":res(ize)+num            "将窗口的高度增加num行
"""C-w + -                  "减小窗口
"""C-w + +                  "增加窗口
"""C-w + num -              "减小窗口num行
"""C-w + num +              "增加窗口num行
""":res(ize)-num            "将窗口的高度减少num行
""":vertical res(ize)+num   "将窗口的宽度增加num列
""":vertical res(ize)-num   "将窗口的宽度减少num列
"""C-w c-]                  "就会在分割窗口bai(window)里打开标签.
"""C-w T                    "让某个窗口另起一个标签页(tab)，（大写T）就可以.
""":f FileName              "给窗口重命名
"
"""----------------------------Multi-files----------------------------
"""  vi a b c               "vi打开多文件
"""  :n                     "跳至下一个文件，也可以直接指定要跳的文件，如:n c，可以直接跳到c文件
"""  :e#                    "回到刚才编辑的文件
"""  :Ex                    "开启目录浏览器，可以浏览当前目录下的所有文件，并可以选择
"""  :Sex                   "水平分割当前窗口，并在一个窗口中开启目录浏览器
"""  :ls                    "显示当前buffer情况
"""  :shell                 "可以在不关闭vi的情况下切换到shell命令行
"""  :exit                  "从shell回到vi
"
"""----------------------------Multi-TAB----------------------------
"""  :gt                         "多个标签间进行切换时向右切换gt，向左切换用gT
"""  :gT                         "多个标签间进行切换时向右切换gt，向左切换用gT
"""  :tabnew filename            "在编辑的时候想增加一个标签就可以:tabnew filename
"""  :tabc                       "关闭当前的tab
"""  :tabo                       "关闭所有其他的tab
"""  :tabs                       "查看所有打开的tab
"""  :tabp                       "前一个
"""  :tabn                       "后一个
"
"""Jump commands
"C-]                        "jump to tag linker define
"C-t                        "jump back according the tag info
"C-o                        "jump back the previous operation location
"C-i                        "jump forward, Vs jump back
"gf                         "go to file
"gd                         "go to variable define
"
":tn                        "go next tag info accorind the tag list
":tp                        "go previous tag info accorind the tag list
"g]                         "list the jump tag definition available
":ts                        "list the jump tag definition available
":tjump                     "jump to tag dinfinition if there is one definition, list the jump tag definition available if there are more than one definition
":tlast
":tl[ast][!]    Jump to last matching tag.  See |tag-!| for [!].
":tfirst
":[count]tf[irst][!]  Same as ":trewind".
":[count]tr[ewind][!] Jump to first matching tag.  If [count] is given, jump to [count]th matching tag.  See |tag-!| for [!].
"
":ts
":ts[elect][!] [name]
": tags
":tj[ump][!] [name]  Like ":tselect", but jump to the tag directly when there is only one match.
":stj[ump][!] [name] Does ":tjump[!] [name]" and splits the window for the selected tag.
":[count]tn[ext][!] Jump to [count] next matching tag (default 1).  See |tag-!| for [!].
":[count]tp[revious][!] Jump to [count] previous matching tag (default 1). See |tag-!| for [!].
":[count]tN[ext][!] Same as ":tprevious".
"
"
"
"
"
"""q + :                    "list the command history list
"""q + /                    "list the search command history list
"""q + ?                    "list the search command history list
""""--------------------Netrw - embeded plugin--------------------
""":Explore
""":E
""":Sexplore
""":Sex
""":Vexplore
""":Vex
""""     :[N]Explore[!]  [dir]... Explore directory of current file      :Explore
""""     :[N]Hexplore[!] [dir]... Horizontal Split & Explore             :Hexplore
""""     :[N]Lexplore[!] [dir]... Left Explorer Toggle                   :Lexplore
""""     :[N]Sexplore[!] [dir]... Split&Explore current file's directory :Sexplore
""""     :[N]Vexplore[!] [dir]... Vertical   Split & Explore             :Vexplore
""""     :Texplore       [dir]... Tab & Explore                          :Texplore
""""     :Rexplore            ... Return to/from Explorer                :Rexplore
""""------------------------------
""""     Used with :Explore **/pattern : (also see |netrw-starstar|)
""""     :Nexplore............. go to next matching file                :Nexplore
""""     :Pexplore............. go to previous matching file            :Pexplore
"let g:netrw_sort_by
"let g:netrw_sort_direction = 'reverse'
""""--------------------vimgrep     -------------------
"""":vim[grep][!] /{pattern}/[g][j] {file} ...
""""vimgrep /匹配模式/[g][j] 要搜索的文件/范围
""""g：表示是否把每一行的多个匹配结果都加入
""""j：表示是否搜索完后定位到第一个匹配位置
""""vimgrep /pattern/ %               "在当前打开文件中查找
""""vimgrep /pattern/ *               "在当前目录下查找所有
""""vimgrep /pattern/ **              "在当前目录及子目录下查找所有
""""vimgrep /pattern/ *.c             "查找当前目录下所有.c文件
""""vimgrep /pattern/ **/*            "只查找子目录
""""------------------------------
""""cn                                "查找下一个
""""cp                                "查找上一个
""""copen                             "打开quickfix
""""cw                                "打开quickfix
""""cclose                            "关闭qucikfix
""""help vimgrep                      "查看vimgrep帮助
""""--------------------Session     -------------------
"mksession                            "default is Session.vim
"mksession session_name_you_input     "default is Session.vim
"source Session.vim
"vim +"source Session_You_Need_Call.vim"
""""--------------------Binary edit--------------------
"vim -b filename_you_edit
"set binary
"""set bin
"""set nobinary
""""----------------------------------------
"keywords about the tag:
"""""iskeyword isk
"""""showfulltag sft
"""""noshowfulltag nosft
""""":set wildmode=longest,list

" -----popular command--End-------------------

" -----String-char--Start-------------------
" string					*string* *String* *expr-string* *E114*
" ------
" "string"		string constant		*expr-quote*
"
" Note that double quotes are used.
"
" A string constant accepts these special characters:
" \...    three-digit octal number (e.g., "\316")
" \..     two-digit octal number (must be followed by non-digit)
" \.      one-digit octal number (must be followed by non-digit)
" \x..    byte specified with two hex numbers (e.g., "\x1f")
" \x.     byte specified with one hex number (must be followed by non-hex char)
" \X..    same as \x..
" \X.     same as \x.
" \u....  character specified with up to 4 hex numbers, stored according to the
"   current value of 'encoding' (e.g., "\u02a4")
" \U....  same as \u but allows up to 8 hex numbers.
" \b      backspace <BS>
" \e      escape <Esc>
" \f      formfeed <FF>
" \n      newline <NL>
" \r      return <CR>
" \t      tab <Tab>
" \\      backslash
" \"      double quote
" \<xxx>	Special key named "xxx".  e.g. "\<C-W>" for CTRL-W.  This is for use
"   in mappings, the 0x80 byte is escaped.
"   To use the double quote character it must be escaped: "<M-\">".
"   Don't use <Char-xxxx> to get a utf-8 character, use \uxxxx as
"   mentioned above.
" \<*xxx>	Like \<xxx> but prepends a modifier instead of including it in the
"   character.  E.g. "\<C-w>" is one character 0x17 while "\<*C-w>" is four
"   bytes: 3 for the CTRL modifier and then character "W".
"
" Note that "\xff" is stored as the byte 255, which may be invalid in some
" encodings.  Use "\u00ff" to store character 255 according to the current value
" of 'encoding'.
"
" Note that "\000" and "\x00" force the end of the string.
"
" -----String-char--End-------------------


""end_source
