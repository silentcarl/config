syntax on
set backspace=indent,eol,start
set expandtab
set shiftwidth=4
set tabstop=4
set nu
set ruler
set ignorecase
set statusline=\ %F%m%r%h\ %w\ \ \ \ %{&ff}:%{&fenc!=''?&fenc:&enc}\ \ \ \ %l,%c:%p%%
set paste


"set foldmethod=syntax
set foldmethod=indent
set nofoldenable
"let javaScript_fold=1         " JavaScript
"let perl_fold=1               " Perl
"let php_folding=1             " PHP
"let r_syntax_folding=1        " R
"let ruby_fold=1               " Ruby
"let sh_fold_enabled=1         " sh
"let vimsyn_folding='af'       " Vim script
"let xml_syntax_folding=1      " XML

let mapleader=";"
cmap w!! w !sudo tee % >/dev/null

set background=dark
"let g:solarized_termtrans = 1
set t_Co=256

" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" if !has("gui_running")
"     let g:solarized_termtrans=1
"     let g:solarized_termcolors=256
" endif
" colo solarized

" colo zenburn
colo tomorrow
" colo gruvbox
" colo monokai
" colo molokai
"set background=light
"colo desert
"colo my1
"colo my2

"**************************   TMUX    *************************************
if exists('$TMUX')
    set term=screen-256color
endif

"**************************************************************************


"**************************   Vundle  *************************************

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" vim 中文文档
Bundle 'asins/vimcdoc'
" 树形目录
Bundle 'scrooloose/nerdtree'
nmap <Leader>f :NERDTreeToggle<CR>
" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭 https://github.com/scrooloose/nerdtree/issues/21
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 打开vim时自动打开NERDTree
autocmd vimenter * NERDTree
" autocmd VimEnter * wincmd p 
autocmd VimEnter * if argc() | wincmd p | endif


" command-T
" Bundle 'git://git.wincent.com/command-t.git' 
" if &term =~ "xterm" || &term =~ "screen"
"     let g:CommandTCancelMap = ['<ESC>', '<C-c>']
" endif

" vim-indent-guides
" Bundle 'git://github.com/nathanaelkane/vim-indent-guides.git' 

Plugin 'Yggdroot/indentLine'
let g:indentLine_color_term = 241
let g:indentLine_enabled = 0
let g:indentLine_char = '┆'
" set conceallevel=1
" let g:indentLine_conceallevel=1
nmap <Leader>i :IndentLinesToggle<CR>

" ctrlP
Bundle 'git://github.com/kien/ctrlp.vim.git' 

" ag.vim
Bundle 'git://github.com/rking/ag.vim.git' 
let g:ackprg = 'ag --vimgrep'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"**************************   Vundle  *************************************
