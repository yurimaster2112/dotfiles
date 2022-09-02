inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <C-j>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
let g:coc_confing_home = '~/vim/coc-settings.json'
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-python', 
                            \ 'coc-pyright', 'coc-clangd', 
                            \ 'coc-vimtex', 'coc-word']
                            "\ 'coc-snippets']
