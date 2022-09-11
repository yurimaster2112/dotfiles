" Options for conceal: a = accent, b = bold, d = delimiter, m = mathsymbols,
" g = Greek, s = superscripts/subscript. Include the characters to enable
" concealment.
set conceallevel=1
augroup FILETYPES
    " show conceal when cursor on that line
    autocmd FileType markdown let b:indentLine_enabled = 0
    autocmd filetype rmd nnoremap <F5> :RMarkdown!<Space>pdf<Space>latex_engine="pdflatex"<CR>
augroup END

augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

"Display conceal on cursor and conceal level when working with R markdown
"file.
au BufEnter *.Rmd setlocal concealcursor=
au BufEnter *.Rmd setlocal conceallevel=0

