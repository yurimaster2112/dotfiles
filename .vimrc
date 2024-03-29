set nocompatible
set bg=dark
filetype plugin on
syntax on
"set spell spelllang=en_gb
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab   "1 Tab = spaces.
set encoding=UTF-8
"set ruler       "Show cursor position all time.
set autoindent
set nosmartindent
set smartindent
set cursorline  "show current cursorline.
set splitbelow  "Horizontal split will display at the bottom.
set splitright  "Vertical split will display at the right.
set relativenumber
set nu
set hidden       " Keep unsaved files open
set noerrorbells
set noswapfile
set scrolloff=8
set signcolumn=yes

set wrap 
set textwidth=100

"set ignorecase
set smartcase
set incsearch "jump to search while typing.
set nohlsearch  " No hightlight search

set laststatus=2 "enable the status bar.
set t_Co=256    "256 colors
let &t_ut=''
set termguicolors
set noshowmode
set updatetime=300
set timeoutlen=400
set clipboard=unnamedplus "system clipboard, contents are copied into + reg.

"set leader = space
let mapleader = " " 
let &t_SI = "\e[5 q" "insert mode should use blinking line
let &t_EI = "\e[1 q" "Everything else except insert mode should use blinking line
hi Normal guibg=NONE ctermbg=NONE 

"Plug-in section started here:
call plug#begin('~/.vim/plugged') "Start
"Productivity Plugins
Plug 'vimwiki/vimwiki' "Vim Wiki
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "Search Plugin
Plug 'junegunn/fzf.vim' "Search Plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree' "File Explorer.
Plug 'preservim/nerdcommenter' "Comment plugin
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator' "tmux navigator
Plug 'itchyny/lightline.vim' "status bar
Plug 'Yggdroot/indentLine' "Indentation indicator
Plug 'ap/vim-css-color' "css color
Plug 'tpope/vim-fugitive' "Git plugin
Plug 'francoiscabrol/ranger.vim' "Ranger integration plugin
Plug 'mhinz/vim-startify' "starting page
Plug 'unblevable/quick-scope' "hightlight search

"markdown and pandoc related plugins
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'

"Colorschemes:
Plug 'morhetz/gruvbox' "Colorscheme Plugin
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'dylanaraps/wal.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

"Delete after a semester
Plug 'kylelaker/riscv.vim'
call plug#end() "End


"====================Sources=========================
source $HOME/vim/plug-config/start-screen.vim
source $HOME/vim/plug-config/fzf.vim
source $HOME/vim/plug-config/vim-wiki.vim
source $HOME/vim/plug-config/ranger.vim
source $HOME/vim/plug-config/coc.vim
source $HOME/vim/plug-config/light-line.vim
source $HOME/vim/plug-config/vim-pandoc.vim "Concealment setting in this file
source $HOME/vim/plug-config/quick-scope.vim
source $HOME/vim/plug-config/colorschemes.vim
source $HOME/vim/key/custom-keybind.vim

"let g:airline#extensions#ale#enabled = 1 "always enable ALE status box
"Automatically start up
" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
