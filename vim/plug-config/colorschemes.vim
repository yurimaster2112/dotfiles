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
