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
"or
"./install.py --all
" will download clang and other pludgin automatically
" -----install guidance--End-------------------

"good web: https://blog.csdn.net/zhangpower1993/article/details/52184581
"good web: https://github.com/VundleVim/Vundle.vim/blob/v0.10.2/doc/vundle.txt
"good web: https://www.cnblogs.com/aaronLinux/p/6798898.html

" -----good part--Start-------------------
set encoding=utf-8
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
"
"set cul
"set nocursorline
"set nocul
"
set cursorcolumn
"set cuc
"
"show symbol, like show blank and tab
set list
"set nolist
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
"color murphy
colorscheme desert
"
"highlight the keywords you need in vim
"highlight <-> hi
highlight MatchParen ctermbg=DarkRed guibg=lightblue
"hi MatchParen ctermbg=DarkRed guibg=lightblue
"
""highlight  the user defined keywords
syntax keyword TodoFrankShan TODO todo Todo DSF_IP Error: Error-
"highlight link TodoFrankShan Todo
highlight link TodoFrankShan vimTodo
"you could check the highlight details with hi or hightlight
"
"define udpate the tags command in vim env, this require ctags is avilable in env
command! UpdateTags !ctags -R .
"":! command_you_want_to_run    "run the shell command in VIM command

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
set smartindent     "better than autoindent, use basic c syntax to indent
"set si     "smartindent
set shiftwidth=2     "indent multi shifwidth value
set expandtab       "replae the tab with blankspace 
"set et     "set expandtab       "
"
set tabstop=2         "set to show the tab with 2 blankspace; identify how many space as a TAB
set softtabstop=2    " how many space to show for a tab in Insert mode
":retab 2                  "command, to replace the tab as 2 space in current file
"ret 2
"set textwidth=30 "breaking the line if the count is over 30 in this line
"set linebreak
"
"set smartcase  "- use case if any caps used 	Override the 'ignorecase' option if the search pattern contains upper case characters.
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
set wildmenu     "wmnu, When 'wildmenu' is on, command-line completion operates in an enhanced mode.
set wildmode=longest,list
"set omnifunc=syntaxcomplete#Complete     "incase, you have to use moni
"--------------------------------------
"filetype plugin indent on
"set completeopt+=longest
"set completeopt+=menu
"set wildmenu
"syntax on
"syntax enable
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
set showmatch
" Highlight matching pairs of brackets. Use the '%' character to jump between them.
"set mps+=<:>
set matchpairs+=<:>
:au FileType c,cpp,java set mps+==:;
"":autocmd FileType c,cpp,java set mps+==:;
"set sm
set mouse=a
" Display options
set showmode
set showcmd
"
filetype plugin indent on
"
syntax enable     "keep your current color settings
"syntax on     "overrule your settings with the defaults
"tabnine, based on youcompleteme, set this if do not use vundle install  the youcompleteme
"set rtp+=~/tabnine-vim
"
" set the fold options
set nofoldenable
"set foldenable     "enable fold when you need
"set fen     "=foldenable
"set the folder methods
"set foldmethod=indent
"set foldmethod=manual
set foldmethod=syntax
set foldlevel=1
"
"set spell
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
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtimepath to include Vundle and initialize rtp=runtimepath
"set runtimepath+=~/.vim/syntax

set rtp+=~/.vim/bundle/Vundle.vim
"
"vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
"help file: https://github.com/VundleVim/Vundle.vim/blob/v0.10.2/doc/vundle.txt
"http://vim-scripts.org/vim/scripts.html

" call vundle from ~/.vim/bundle
call vundle#begin()
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
call vundle#end()            "required
filetype plugin indent on    "required 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
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
"filetype on
"set the *.min file as the makefile type
au BufReadPre,BufNewFilE *.min  set filetype=make
"set *.min file with make syntax highlight
:autocmd BufReadPost,FileReadPost *.min set syntax=make
"
"set the *.c,*.h file auto pattern
:autocmd BufEnter  *.c,*.h     abbr FOR for (i = 0; i < 3; ++i)<CR>{<CR>}<Esc>O 
:autocmd BufLeave  *.c,*.h     unabbr FOR
"" -----match jump part--start------------------
set showmatch
"set sm
"let b:match_ignorecase = 0
".html file match jump
let b:match_words = '<:>,' .
        \ '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,' .
        \ '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,' .
        \ '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'

let b:match_words =  '<:>,' .
                    \ '\<if\>:\<else\>,' .
                    \ '\<begin\>:\<end\>,' . '\<fork\>:\<join\>,' .
                    \ '\<module\>:\<endmodule\>,' .
                    \ '\<function\>:\<endfunction\>,' .
                    \ '\<task\>:\<endtask\>,' .
                    \ '\<case\>\|\<casex\>\|\<casez\>:\<endcase\>,' .
                    \ '\<class\>:\<endclass\>,' .
                    \ '\<#ifdef\>\|\<#ifndef\>\|\<#if\>\|\<#ifeq\>\|\<#ifneq\>:\<#else\>:\<#endif\>,' .
                    \ 'ifdef\|ifndef\|ifeq\|ifneq:else:endif,' .
                    \ '`ifdef\|`ifndef\|`if:`else:`endif,' .
                    \ '\<fshan_start\>:\<fshan_end\>'
"
"format of match_words:
"         ='<:>,' .
"       \  '<:>,' .
"       \  '< \<match_head1 \> \| \< match_head2 \> : \<match_end \>,' .
"       \  '<fshan_start:fshan_end>'
"" -----match jump part--end------------------
"" -----personal comand--Start-------------------
"""vim +{command} filename
"""vim -c {command} filename
"""vim --cmd {command}
"""vim -t tag_name
"""vim +{command}
"""vim +"source Session_You_Need_call.vim"
"""vim -d filename1 filename2
"""vim -do filename1 filename2
""" dp     "diffput the different block different put
""" do     "diffget the different block different obtain
""" V to select the line or lines you need, and :diffput or :diffpuwill update the line or lines you selected to other side
""" V to select the line or lines you need, and :diffget or :diffgwill update the line or lines you selected to current side
""":diffu     "diffupdate
""":diffthis     "enter diff mode with current open files, or difft
""":diffoff     "exit from diff mode, or diffo
" isf     =     isfname
" isk     =     iskeyword
command! MyCdCurrentFilePath cd %:p:h
command! MyDotInIskeywordAdd  set iskeyword+=.
command! MyDotInIskeywordRemove  set iskeyword-=.
command! MySaveWithSudo :w !sudo tee %
""" -----personal comand--End-------------------
""" -----popular comand--Start-------------------
"""open and edit the syntax file in your environment
":e $VIMRUNTIME/syntax/tcl.vim
""" then you could add your keywords in this file
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
""" for windows more
command! MyCdFilePath cd %:p:h
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
""" Folding, open
"zo
""" Folding, close
"zc
""" delete the words in '' 删除单引号中的文字
"di’
""" delete the words in ""删除双引号中的文字
"di”
""" delete the words in '' and '' 删除单引号以及其中的文字
"da’
""" delete the words in "" and "" 删除单引号以及其中的文字
"da”
"buffer - show current buffers
":ls
"""buffer - open buffer #2 in this window
":b 2
"registers     - show named registers and what's in them
":reg
"""registers     - paste what's in register "5
"   '"5p'
"""vim tips and tricks https://www.cs.swarthmore.edu/oldhelp/vim/home.html
"""----------------------------Auto completion----------------------------
"""Completion command
"""COMPLETING SPECIFIC ITEMS
"""  CTRL-X    CTRL-F    "file names
"""  CTRL-X    CTRL-L    "whole lines
"""  CTRL-X    CTRL-D    "macro definitions (also in included files)
"""  CTRL-X    CTRL-I    "current and included files
"""  CTRL-X    CTRL-K    "words from a dictionary
"""  CTRL-X    CTRL-T    "words from a thesaurus
"""  CTRL-X    CTRL-]    "tags
"""  CTRL-X    CTRL-V    "Vim command line
"""  CTRL-X    CTRL-O    "Omni compeletion
"""  CTRL-X    CTRL-J    "Search keywords to complete in forwad directions

"""  CTRL-N              "find the next match, 
"""  CTRL-P              "find the previous match.
"""  CTRL-Y              "select current selection 
"""  CTRL-E              "quit the selection

"""----------------------------Multi-window----------------------------
"""Ctl + W + s
""":sp [filename]
"""Ctl-W + c              "close current window
"""Ctl-W + o              "keep current window, close others
"""Ctl-W + =              "make all window have same hight
"""Ctl-W + _              "make current window have the max hight
""":res _                 "make current window have the min hight
"""Ctl-W + |              "make current window have the max width
"""Ctl-W + 1 + |          "make current window have the max width
"""Ctl-W + n              "Creat a new split windows
"""Ctl-W + vn             "Creat a new split windows
"""Ctl-W + ]              "Splite current window, and jump to the cursor
""":vp [filename]
"""Ctrl-w + h             "向左移动窗口
"""Ctrl-w + j             "向下移动窗口
"""Ctrl-w + j             "向上移动窗口
"""Ctrl-w + l             "向右移动窗口

"""Ctrl-w + w             "这个命令会在所有窗口中循环移动
"""Ctrl-w + t             "移动到最左上角的窗口
"""Ctrl-w + b             "移动到最右下角的窗口
"""Ctrl-w + p             "移动到前一个访问的窗口
""":resize num            "将窗口的高度调整为num行
""":res num
""":vertical resize num   "将窗口的宽度调整为num列
""":vertical res num      "将窗口的宽度调整为num列
""":resize+num            "将窗口的高度增加num行
"""CTL-W + -              "减小窗口
"""CTL-W + +              "增加窗口
"""CTL-W + num -          "减小窗口num行
"""CTL-W + num +          "增加窗口num行
""":resize-num            "将窗口的高度减少num行
""":vertical resize+num   "将窗口的宽度增加num列
""":vertical resize-num   "将窗口的宽度减少num列

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

" -----popular comand--End-------------------
