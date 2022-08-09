" My settings started from here
set nocompatible
set bg=dark
filetype plugin on
syntax on
set tabstop=4 softtabstop=4
"set list
"set listchars=tab:>+ ,trail:-
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
hi Normal guibg=NONE ctermbg=NONE 
            

"Plug-in section started here:
call plug#begin('~/.vim/plugged') "Start
Plug 'vimwiki/vimwiki' "Vim Wiki
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "Search Plugin
Plug 'junegunn/fzf.vim' "Search Plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Auto complete
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
call plug#end() "End


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
nnoremap <C-k> :Colors<Cr>

"COC remap:
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

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
let CSE3100 = {}
let CSE3100.path = '~/Gits/CSE3100/'
let CSE3100.nested_syntaxes = {'c': 'cpp', 'markdown': 'md'}
let CSE3100.auto_toc = 1
let CSE3100.ext = '.md'

let CSE3500 = {}
let CSE3500.path = '~/Gits/CSE3500/'
let CSE3500.auto_toc = 1
let CSE3500.ext = '.md'
let CSE3500.syntax = 'markdown'

let CSE3666 = {}
let CSE3666.path = '~/Gits/CSE3666/'
let CSE3666.auto_toc = 1
let CSE3666.ext = '.md'
let CSE3666.syntax = 'markdown'

let g:vimwiki_list = [CSE3100, CSE3500, CSE3666]

"Vimwiki remap
nmap <Leader>tl <Plug>VimwikiTableMoveColumnLeft
nmap <Leader>tr <Plug>VimwikiTableMoveColumnRight
map <Leader>tm <Plug>VimwikiTable

let &t_SI = "\e[5 q" "insert mode should use blinking line
let &t_EI = "\e[1 q" "Everything else except insert mode should use blinking line
let g:airline#extensions#ale#enabled = 1 "always enable ALE status box


"Automatically start up
" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
