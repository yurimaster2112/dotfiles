" My settings started from here
set nocompatible
set bg=dark
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
            

"Plug-in section started here:
call plug#begin('~/.vim/plugged') "Start
Plug 'morhetz/gruvbox' "Colorscheme Plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "Search Plugin
Plug 'junegunn/fzf.vim' "Search Plugin
"Plug 'dense-analysis/ale' "Syntax checker
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Auto complete
Plug 'preservim/nerdtree' "File Explorer.
Plug 'preservim/nerdcommenter' "Comment plugin
Plug 'christoomey/vim-tmux-navigator' "tmux navigator
Plug 'raimondi/delimitmate' "auto closing ( ' 
Plug 'vim-airline/vim-airline' "status bar
call plug#end() "End
colorscheme gruvbox "Set colorscheme according to plugin


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

"Remap for jumpping into config files
nmap <leader>vrc :edit ~/.vimrc<cr>
nmap <leader>tmx :edit ~/.tmux.conf<cr>
nmap <leader>coc :edit ~/.vim/coc-settings.json<cr>
nmap <leader>i3 :edit ~/.config/i3/config<cr>

"Functional remap:
nmap <leader>Q :bufdo bdelete<cr> 

"remapping control - P for fzf search
nnoremap <C-p> :Files<Cr>



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



" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[5 q" "insert mode should use blinking line
let &t_EI = "\e[1 q" "Everything else except insert mode should use blinking line
let g:airline#extensions#ale#enabled = 1 "always enable ALE status box




"Automatically start up
" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
