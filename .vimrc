" My settings started from here
set nocompatible
set bg=dark
filetype plugin on
syntax on
set tabstop=4 softtabstop=4
"set list
"set listchars=tab:>+ ,trail: '-'
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set nohlsearch  " No hightlight search
set hidden       " Keep unsaved files open
set noerrorbells
set nowrap
set noswapfile
set incsearch
set scrolloff=8
set signcolumn=yes
"set guifont=*
let &t_ut=''
hi Normal guibg=NONE ctermbg=NONE 
            

"Plug-in section started here:
call plug#begin('~/.vim/plugged') "Start
Plug 'vimwiki/vimwiki' "Vim Wiki
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "Search Plugin
Plug 'junegunn/fzf.vim' "Search Plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree' "File Explorer.
Plug 'preservim/nerdcommenter' "Comment plugin
Plug 'christoomey/vim-tmux-navigator' "tmux navigator
Plug 'vim-airline/vim-airline' "status bar
Plug 'Yggdroot/indentLine' "Indentation indicator
Plug 'ap/vim-css-color' "css color
Plug 'tpope/vim-fugitive' "Git plugin
Plug 'francoiscabrol/ranger.vim' "Ranger integration plugin

"Colorschemes:
Plug 'morhetz/gruvbox' "Colorscheme Plugin
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'dylanaraps/wal.vim'
call plug#end() "End

"====Colorscheme====
let g:gruvbox_italic=1
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
colorscheme gruvbox
au BufNewFile,BufRead /*.rasi setf css

"Vim remap
"<C-w>v vertical split
"<C-w>s horizontal split
"<C-w>+ or <C-w>- vertical resize
"<C-w> > or <C-w> < horizontal resize

"reselect visual mode after indenting
vnoremap < <gv
vnoremap > >gv

"Remap and key-bindding session
"set leader = space
let mapleader = " " 

"Ranger remap
let g:ranger_open_new_tab = 1
let g:ranger_map_keys = 0
map <leader>r :Ranger<cr>

"kemap for jumpping into config files
nmap <leader>vrc :edit ~/.vimrc<cr>
nmap <leader>tmx :edit ~/.tmux.conf<cr>
nmap <leader>coc :edit ~/.vim/coc-settings.json<cr>
nmap <leader>i3 :edit ~/.config/i3/config<cr>
nmap <leader>bar :edit ~/.config/polybar/cuts/config.ini<cr>
"Functional remap:
nmap <leader>Q :bufdo bdelete<cr> 

"Fzf mappings
nnoremap <C-p> :Files<Cr>
nnoremap <C-g> :GFiles<Cr>
nnoremap <C-o> :Buffers<Cr>
nnoremap <C-f> :Rg! 

"COC remap:
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-python', 
                            \ 'coc-pyright', 'coc-clangd', 'coc-browser', 
                            \ 'coc-fzf-preview', 'coc-ltex', 'coc-markdownlint', 
                            \ 'coc-markdown-preview-enhanced', 'coc-word']

"NERDTree remap:
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>b :NERDTree<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

"Nerd Commenter remap
nmap <C>cc :NERDCommenterComment<CR>

"remap parenthesis for automatically clsoing
inoremap (; (<CR>);<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O

"Vimwiki section:
let vimwiki = {}
let vimwiki.path = '~/vimwiki/'
let vimwiki.name = 'main'
let vimwiki.ext = '.md'
let vimwiki.syntax = 'default' "Avaiable options: default, markdonw, mediawiki, media
let vimwiki.auto_toc = 1

let CSE3100 = {}
let CSE3100.path = '~/vimwiki/School/CSE3100'
let CSE3100.name = 'CSE3100'
let CSE3100.auto_toc = 1
let CSE3100.ext = '.md'
let CSE3100.nested_syntaxes = {'c': 'cpp', 'markdown': 'md'}

let CSE3500 = {}
let CSE3500.path = '~/vimwiki/School/CSE3500'
let CSE3500.name = 'CSE3500'
let CSE3500.auto_toc = 1
let CSE3500.ext = '.md'
let CSE3500.syntax = 'default'

let CSE3666 = {}
let CSE3666.path = '~/vimwiki/School/CSE3666'
let CSE3666.name = 'CSE3666'
let CSE3666.auto_toc = 1
let CSE3666.ext = '.md'
let CSE3666.syntax = 'default'

let SOCI= {}
let SOCI.path = '~/vimwiki/School/SOCI'
let SOCI.name = 'SOCI'
let SOCI.auto_toc = 1
let SOCI.ext = '.md'
let SOCI.syntax = 'default'

let Linux = {}
let Linux.path = '~/vimwiki/Linux/'
let Linux.name = 'Linux'
let Linux.auto_toc = 1
let Linux.ext = '.md'
let Linux.syntax = 'default'

let Programming= {}
let Programming.path = '~/vimwiki/Programming/'
let Programming.name = 'Programming'
let Programming.auto_toc = 1
let Programming.ext = '.md'
let Programming.nested_syntaxes = {'default': '.md', 'python': 'python', 'c': 'cpp'}

let g:vimwiki_list = [vimwiki, CSE3100, CSE3500, CSE3666, SOCI, Linux, Programming]

"Vimwiki remap
nmap <Leader>tl <Plug>VimwikiTableMoveColumnLeft
nmap <Leader>tr <Plug>VimwikiTableMoveColumnRight

let &t_SI = "\e[5 q" "insert mode should use blinking line
let &t_EI = "\e[1 q" "Everything else except insert mode should use blinking line
let g:airline#extensions#ale#enabled = 1 "always enable ALE status box


"Automatically start up
" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
