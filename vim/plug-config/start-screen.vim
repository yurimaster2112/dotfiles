let g:startify_session_dir = '~/vim/session'
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
           \ { 'type': 'bookmarks', 'header': ['  Configs']                   },
          \ { 'type': 'files',     'header': ['   Recent']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
            \]

let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.vimrc' },
            \ { 'z': '~/.zshrc' },
            \ { 't': '~/.tmux.conf' },
            \ { 'kit': '~/.config/kitty/kitty.conf' },
            \ { 'p': '~/.config/picom/picom.conf' },
            \ ]
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
