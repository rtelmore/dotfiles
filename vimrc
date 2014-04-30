""" Vundle Stuff
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vim-scripts/Vim-R-plugin'
Bundle 'flazz/vim-colorschemes'
Bundle 'jceb/vim-orgmode'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-fugitive'
Bundle 'JuliaLang/julia-vim'
Bundle 'vim-scripts/LaTeX-Suite-aka-Vim-LaTeX'

let maplocalleader = ","
let mapleader = ","

set term=xterm-256color
syntax on 
filetype plugin indent on 
set encoding=utf-8


"""" Searching and Patterns
"set ignorecase		" search is case insensitive
"set smartcase		" search case sensitive if caps on 
"set incsearch		" show best match so far
"set hlsearch		" Highlight matches to the search 

"""" Display
set scrolloff=3		" Keep 3 lines below and above the cursor
set ruler		" line numbers and column the cursor is on
"set number		" Show line numbering
set numberwidth=1	" Use 1 col + 1 space for numbers
"colorscheme desert	" See .vim/colors/wombat

"""" R-plugin stuff
let vimrplugin_screenplugin = 0
let vimrplugin_vimpager = "horizontal"
let vimrplugin_indent_commented = 1
let r_indent_ess_comments = 1
set shiftwidth=2
""let vimrplugin_term = "Terminal"

inoremap jk <ESC>
vmap <Space> <Plug>RESendSelection
nmap <Space> <Plug>RDSendLine

""" Special Mappings
imap ;; <Esc>

"""" Latex Stuff
let g:Tex_ViewRule_pdf = 'open -a Preview'

