"Vim Resize with <C-w>, can have number in the front.
nnoremap + :res +5<CR>
nnoremap - :res -5<CR>

"Easy search and replace:
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

" File save
nnoremap <Leader>w :w<CR>

"Yank till end
nnoremap Y y$ 

" jump to end of previous word
nnoremap E ge

"Copy, cut, and paste from clipboard:
vmap <leader>y "+y
vmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
vmap <leader>P "+P

"reselect line and better tabbing in normal mode and visual mode.
vnoremap < <gv
vnoremap > >gv
nnoremap > <S-v>><esc>
nnoremap < <S-v><<esc>

" Horizontal movement to the end and beginning of the line.
nnoremap <S-h> g^
nnoremap <S-l> g$
vnoremap <S-h> g^
vnoremap <S-l> g$

"way to move inside wrapped text.
nnoremap <S-k> gk
nnoremap <S-j> gj
vnoremap <S-k> gk
vnoremap <S-j> gj

"Buffer related remap
nnoremap <leader>Q :bufdo bdelete<cr> 
nnoremap <leader>q :tabclose<CR>
nnoremap <leader>n :bnext<CR>
nnoremap <leader>b :bprevious<CR>
nnoremap <leader>h :tabprevious<CR>
nnoremap <leader>l :tabnext<CR>
nnoremap <leader>o :tabnew<CR>

"Fzf mappings
nnoremap <C-p> :Files<Cr>
nnoremap <C-g> :GFiles<Cr>
nnoremap <C-o> :Buffers<Cr>
"Which key should i map u?
"nnoremap <C-k> :Rg!  "COC remap:

"NERDTree remap:
nnoremap <leader>t :NERDTreeToggle<CR>

"Nerd Commenter remap
"nmap <C>cc :NERDCommenterComment<CR>

"remap parenthesis for automatically closing and add semicolon.
inoremap (; (<CR>);<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O

" Drag Line
vnoremap <C-j> :m'>+<CR>gv
vnoremap <C-k> :m-2<CR>gv
nnoremap <C-j> ddp
nnoremap <C-k> ddkP
inoremap <C-j> <esc>ddp
inoremap <C-k> <esc>ddkP

"Vimwiki remap
nmap <Leader>tl <Plug>VimwikiTableMoveColumnLeft
nmap <Leader>tr <Plug>VimwikiTableMoveColumnRight
