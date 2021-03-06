"
"save these contents as _myvimrc file
"source _myvimrc
"# -----install guidance--Start-------------------
"#udpate vim python gcc
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
"git clone --recursive https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"#git clone https://github.com/gmarik/Vundle.vim.git  ~/.vim/bundle/Vundle.vim
"gvim
"vim +PluginInstall +qall
":PluginInstall
"cd ~/.vim/bundle/YouCompleteMe
"./install.py --clang-completer
"python3 ./install.py --clang-completer
"or
"./install.py --all
"python3 ./install.py --all
" will download clang and other pludgin automatically
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
"
set cursorcolumn
"set cuc
"
"set color of column highlight
":hi CursorColumn ctermbg=grey guibg=Grey40
":hi CursorColumn cterm=underline ctermbg=grey guibg=Grey40
":hi CursorColumn cterm=reverse ctermbg=grey guibg=Grey40
:hi CursorColumn cterm=NONE ctermbg=grey guibg=Grey40
"autocmd InsertEnter * hi CursorColumn cterm=NONE ctermbg=grey guibg=Grey40
"autocmd InsertEnter * hi CursorLine cterm=bold gui=bold ctermbg=grey guibg=Grey40
"autocmd InsertLeave * hi CursorLine cterm=NONE gui=NONE ctermbg=grey guibg=Grey40
"
"show symbol, like show blank and tab
set list
"set nolist
"
"set the space line, if linespace=0, Maybe the underline is invisible
set linespace=4
"
set wrap       "auto display line with a line break, but do not insert the line break in the file
"set nowrap       "display a lines in one lies
"
set backspace=indent,eol,start
"
"set guifont size in gvim
"you could resize with Ctl-Shift-'+' | Ctl-'-' in vim
"set guifont=Sans\ Bold\ 12
set guifont=Monospace\ 16

" set the color of text background
set background=dark
color murphy
"colorscheme desert
"colorscheme industry
"
"

set magic
"substitute magic
"set nomagic
"set smagic    "substitute magic
"set sm

set cindent     "Enables automatic C program indenting.
"set cin
"""more cindent setting: cinkeys, cinoptions, cinwords

set autoindent     "Copy indent from current line when starting a new line
"set ai     "autoindent
"mask_for_sv_file"set smartindent     "better than autoindent, use basic c syntax to indent
"set si     "smartindent
set shiftwidth=2     "indent multi shifwidth value
set expandtab        "replae the tab with blankspace
"set et     "set expandtab       "
"
set tabstop=2         "set to show the tab with 2 blankspace; identify how many space as a TAB
set softtabstop=2    " how many space to show for a tab in Insert mode
":retab 2                  "command, to replace the tab as 2 space in current file
"ret 2
"set textwidth=30 "breaking the line if the count is over 30 in this line
"set linebreak
"
"set smartcase  "- use case if any caps used    Override the 'ignorecase' option if the search pattern contains upper case characters.
"set scs
"
set ignorecase "- ignore case insensitive
"set ic
" Include only uppercase words with uppercase search term
set smartcase
"
set hlsearch   "- search highlighting
"set hls
"
set incsearch "- show match as search proceeds
"set is
"
set nocompatible
""""remove the toolbar
set guioptions-=T
""""remove the menubar
""set guioptions-=m
""""enable the menubar
set guioptions=m
""
set wildmenu     "wmnu, When 'wildmenu' is on, command-line completion operates in an enhanced mode.
set wildmode=longest,list
"set omnifunc=syntaxcomplete#Complete     "incase, you have to use moni
"--------------------------------------
"filetype plugin indent on
"set completeopt+=longest
"set completeopt+=menu
"set wildmenu
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
"set nolist
"
set mouse=a
" Display options
set showmode
set showcmd
set showcmd     "show the commnds info
set cmdheight=1 "set the number of display command line as 1
set laststatus=2 "set the status bar (default is 1, no display)
"
filetype plugin indent on
"
syntax enable     "keep your current color settings
"syntax on     "overrule your settings with the defaults
"tabnine, based on youcompleteme, set this if do not use vundle install  the youcompleteme
"set rtp+=~/tabnine-vim
"
"set the folder methods
"set foldmethod=indent
"set foldmethod=manual
set foldmethod=syntax
set foldlevel=100
syntax enable  "This command switches on syntax highlighting: >
" set the fold options
set nofoldenable
"set foldenable     "enable fold when you need
"set fen     "=foldenable
"
"set spell
set spelllang=en_us
"set spell spelllang=en_us
"""""set nospell
"setlocal spell spelllang=en_us
"]s    """""To move to a next misspelled word,
"[s    """""To move to a misspelled word, but search backwards
"]S    """""To move to a next word, but only stop at bad words, not at rare words or words for another region
"[S    """""To move to a Bad word, but search backwards
"z=    """""if I highlight autocompletion and then use z= to see recommended list details, select the item you need
"zg    """"""Use the zg command and Vim will add it to its dictionary.
"zw    """"""Mark words as incorrect
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
"" -----Vundle part--Start------------------
" 1. get the Vundle.vim file
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" copy following words into bot of your .vimrc file
" vundle set before call plugin list
set nocompatible              " be iMproved, required for Vundle
filetype off                  " required for Vundle

" set the runtimepath to include Vundle and initialize rtp=runtimepath
"set runtimepath+=~/.vim/syntax

set rtp+=~/.vim/bundle/Vundle.vim
"
"vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
"help file: https://github.com/VundleVim/Vundle.vim/blob/v0.10.2/doc/vundle.txt
"http://vim-scripts.org/vim/scripts.html

" call vundle from ~/.vim/bundle
call vundle#begin()           "required for Vundle
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
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
Plugin 'Valloric/YouCompleteMe'
"""recompile the YouCompleteMe for local Env
"re-compile lib for YCM
""sudo apt install python2.7-dev
"""cd ~/.vim/bundle/YouCompleteMe
"""./install.py --clang-completer
"""or
"""./install.py --all
""" will download clang and other pludgin automatically
"
"The g:ycm_auto_trigger option
"auto popup to complete
"augroup set_completeopt
"  au!
"  au Filetype * set completeopt=menu,preview
"augroup END
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
Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'Python-Syntax-Folding'
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
call vundle#end()            "required for Vundle
filetype plugin indent on    "required for Vundle 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
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
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后
"" -----Vundle part--end------------------
"
"filetype on
"set the *.min file as the makefile type
au BufReadPre,BufNewFilE,FileReadPost *.min  set filetype=make
"set *.min file with make syntax highlight
:autocmd BufReadPost,FileReadPost *.min set syntax=make
"
"set the *.cshrc and *_cshrc file as the makefile type
au BufReadPre,BufNewFilE,FileReadPost *.cshrc,*_cshrc  set filetype=csh
"set *.cshrc and *_cshrc file with make syntax highlight
:autocmd BufReadPost,FileReadPost *.cshrc,*_cshrc set syntax=csh
"
"set the *.emacs and *_emacs file as the makefile type
au BufReadPre,BufNewFilE,FileReadPost *.emacs,*_emacs  set filetype=lisp
"set *.emacs and *_emacs file with make syntax highlight
:autocmd BufReadPost,FileReadPost *.emacs,*_emacs set syntax=lisp
"
"set the *.c,*.h file auto pattern
":autocmd BufEnter  *.c,*.h     abbr FOR for (i = 0; i < 3; ++i)<CR>{<CR>}<Esc>O
":autocmd BufLeave  *.c,*.h     unabbr FOR

"highlight the keywords you need in vim
"highlight <-> hi
highlight MatchParen ctermbg=DarkRed guibg=lightblue
"hi MatchParen ctermbg=DarkRed guibg=lightblue
"
""highlight  the user defined keywords

"it is better to put those match words on end of file
"just one highlight type per time
:match Todo /fshan\|DSF_IP\|dsf_ip\|fixme\|todo/
:2match Error /Error:\|error:\|ERROR:\|Error-\|ERROR-\|error-/
:3match Underlined /incompatible\|redefined\|expansion/
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


""you could check the highlight details with hi or hightlight
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
source $VIMRUNTIME/macros/matchit.vim
endif

if exists("loaded_matchit")
let b:match_ignorecase = 0
"let b:match_ignorecase = 1
let b:match_skip = 's:Comment'
let b:match_words = '<:>'
"autocmd BufReadPre,BufNewFile,FileReadPost *.min  set filetype=make
":autocmd FileType systemverilog :let b:match_words .=  '<:>,'
"                    \ . 'module:endmodule,'
endif "end of if exists("loaded_matchit")

:let b:match_words .=  '<:>,'
                    \ . 'module:endmodule,'
                    \ . 'begin:\<end\>,'
                    \ . 'fork:\<join\>\|join_any\|join_none,'
                    \ . 'class:endclass,'
                    \ . 'function:endfunction,'
                    \ . '\<task\>:\<endtask\>,'
                    \ . 'case\|casex\|casez:default\s*\::endcase,'
                    \ . '\<#ifdef\>\|\<#ifndef\>\|\<#if\>\|\<#ifeq\>\|\<#ifneq\>:\<#else\>:\<#endif\>,'
                    \ . 'ifdef\|ifndef\|ifeq\|ifneq:else:\<endif\>,'
                    \ . '`ifdef\|`ifndef\|`if:`else:`endif,'
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
let b:match_words = '<:>,' .
        \ '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,' .
        \ '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,' .
        \ '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'
"

".html file match jump
autocmd BufReadPre,BufNewFilE *.html  :let b:match_words = '<:>,'
                    \ . '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,'
                    \ . '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,'
                    \ . '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'



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
syntax match Todo /todo\|fshan\|DSF_IP\|dsf_ip/
syntax match Error /Error\:\|error\:\|error\-\|Error\-/


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
command! UpdateTags !ctags -R .
"command! MyCdFilePath               cd %:p:h
command! MyCdCurrentFilePath        cd %:p:h
command! MyDotInIskeywordAdd        set iskeyword+=.
command! MyDotInIskeywordRemove     set iskeyword-=.
command! MySaveWithSudo             :w !sudo tee %
command! MySearchCompileError       :/"incompatible\|redefined\|expansion\|error\:\|Error\:\|error\-"
command! MyRemoveWriteSpaceOnEnd    :%s/\s*$//g
command! MyRemoveEmptyLine          :%s/^\s*$\n//g
command! MyReplaceSpaceWithNewLine  :%s/\s//g
command! MyWriteSpace2UnderLine     :s/\s*/_/g
command! MySpellCheckEn             set spell spelllang=en_us
command! MyCheckCurrentActiveGroups :so $VIMRUNTIME/syntax/hitest.vim
":let b:match_words =  '<:>,' . '/<if/>:/<then/>:/<else/>:/<endif/>\|/<fi/>'
command! MyAddMatchWords            let b:match_words= '<:>,' .
command! MyShowHex                  :%!xxd
command! MyDiffIgnoreWhiteSpace     :set diffopt+=iwhite,iblank
"command! MyCursorHighlight          :hi CursorLine cterm=NONE ctermbg=grey CursorColumn ctermbg=grey
command! MyCursorColumn             :hi CursorColumn cterm=NONE ctermbg=grey guibg=Grey40
command! MyCursorLine               :hi CursorLine cterm=NONE ctermbg=grey gui=NONE guibg=Grey40
" :set diffopt+=iblank
" :set diffopt+=iwhite
" :set diffopt+=icase
" :set diffopt+=iwhiteall
" :set diffopt+=iwhiteeol

"input a ENTER in vim: C-v, <Enter>, then you could get  as a Enter input in vim
" change line char in windows is ^M, we could input it as i_CTRL-v_CTRL-SHIFT-m
"au BufReadPost,FileReadPost *.v,*.vh,*.sv,*.svh :iab ccc //-------------------- //comments: //--------------------

"set the *.v,*.vh,*.sv,*.svh,*.c,*.h file auto pattern
au BufRead,BufNewFile,FileReadPost *.v,*.vh,*.sv,*.svh,*.c,*.h iab cccc //--------------------//comments: //--------------------

au BufRead,BufNewFile,FileReadPost *.v,*.vh,*.sv,*.svh,*.c,*.h iab Fileheader //--------------------<CR>//Comments: <CR>//--------------------<CR>

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
":set            - shows vars different from defaults
":set all        - shows all values
":set foo?       - shows the value of foo
":set foo+=opt   - add opt to the value w/o changing others
":set foo-=opt   - remove opt from value
":set foo&       - reset foo to default value
":setlocal foo   - only the current buffer
"""Search and replace... (substitute)
"""search whole file and replace, (substitute)
":%s/search_for_this/replace_with_this/
":%s/search_for_this/replace_with_this/g
""" confirm each replace
":%s/search_for_this/replace_with_this/c
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
"""  C-x    C-f       "#####file names
"""  C-x    C-l       "whole lines
"""  C-x    C-d       "macro definitions (also in included files)
"""  C-x    C-i       "current and included files
"""  C-x    C-k       "words from a dictionary
"""  C-x    C-t       "words from a thesaurus
"""  C-x    C-]       "#####tags
"""  C-x    C-v       "Vim command line
"""  C-x    C-o       "Omni compeletion
"""  C-x    C-j       "Search keywords to complete in forwad directions

"""  C-n              "#####find the next match,
"""  C-p              "find the previous match.
"""  C-y              "#####select current selection
"""  C-e              "quit the selection

"""----------------------------Multi-window----------------------------
"""C + W + s
""":sp [filename]
"""C-w + c                "close current window
"""C-w + o                "keep current window, close others
"""C-w + =                "make all window have same hight
"""C-w + _                "make current window have the max hight
"""C-w + 1 + _            "make current window have the min hight
""":res(ize) _                 "make current window have the min hight
"""C-w + |                "make current window have the max width
"""C-w + 1 + |            "make current window have the min width
"""C-w + n                "Creat a new split windows
"""C-w + vn               "Creat a new split windows
"""C-w + ]                "Splite current window, and jump to the cursor
""":vp [filename]
"""C-w + h                "向左移动窗口
"""C-w + j                "向下移动窗口
"""C-w + j                "向上移动窗口
"""C-w + l                "向右移动窗口

"""C-w + w                "这个命令会在所有窗口中循环移动
"""C-w + t                "移动到最左上角的窗口
"""C-w + b                "移动到最右下角的窗口
"""C-w + p                "移动到前一个访问的窗口
""":res(ize) num            "将窗口的高度调整为num行
""":res num
""":vertical res(ize) num   "将窗口的宽度调整为num列
""":vertical res num      "将窗口的宽度调整为num列
""":res(ize)+num            "将窗口的高度增加num行
"""C-w + -                "减小窗口
"""C-w + +                "增加窗口
"""C-w + num -            "减小窗口num行
"""C-w + num +            "增加窗口num行
""":res(ize)-num            "将窗口的高度减少num行
""":vertical res(ize)+num   "将窗口的宽度增加num列
""":vertical res(ize)-num   "将窗口的宽度减少num列
"""C-w c-]                "就会在分割窗口bai(window)里打开标签.
"""C-w T                  "让某个窗口另起一个标签页(tab)，（大写T）就可以.
""":f FileName            "给窗口重命名
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
"C-]                      "jump to tag linker define
"C-t                      "jump back according the tag info
"C-o                      "jump back the previous operation location
"C-i                      "jump forward, Vs jump back
"gf                       "go to file
"gd                       "go to variable define
"
":tn                       "go next tag info accorind the tag list
":tp                       "go previous tag info accorind the tag list
"g]                       "list the jump tag definition available
":ts                      "list the jump tag definition available
":tjump                   "jump to tag dinfinition if there is one definition, list the jump tag definition available if there are more than one definition
":tlast
":tfirst
"
"""q + :                  "list the command history list
"""q + /                  "list the search command history list
"""q + ?                  "list the search command history list
""""--------------------Netrw - embeded plugin--------------------
""":Explore
""":E
""":Sexplore
""":Sex
""":Vexplore
""":Vex
"let g:netrw_sort_by
"let g:netrw_sort_direction = 'reverse'
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
