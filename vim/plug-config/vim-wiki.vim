" automatically run this function on the terminal.
autocmd BufWritePost *note-*.md silent !buildNote %:p

"Vimwiki section:
let vimwiki = {}
let vimwiki.path = '~/vimwiki/'
let vimwiki.name = 'main'
let vimwiki.ext = '.md'
let vimwiki.syntax = 'markdown' "Avaiable options: default, markdonw, mediawiki, media
let vimwiki.auto_toc = 1

let CSE3100 = {}
let CSE3100.path = '~/vimwiki/School/CSE3100'
let CSE3100.name = 'CSE3100'
let CSE3100.auto_toc = 1
let CSE3100.ext = '.md'
let CSE3100.syntax = 'markdown' "Avaiable options: default, markdonw, mediawiki, media
let CSE3100.nested_syntaxes = {'c': 'cpp', 'markdown': 'md'}

let CSE3500 = {}
let CSE3500.path = '~/vimwiki/School/CSE3500'
let CSE3500.name = 'CSE3500'
let CSE3500.auto_toc = 1
let CSE3500.ext = '.md'
let CSE3500.syntax = 'markdown'

let CSE3666 = {}
let CSE3666.path = '~/vimwiki/School/CSE3666'
let CSE3666.name = 'CSE3666'
let CSE3666.auto_toc = 1
let CSE3666.ext = '.md'
let CSE3666.syntax = 'markdown'

let SOCI= {}
let SOCI.path = '~/vimwiki/School/SOCI'
let SOCI.name = 'SOCI'
let SOCI.auto_toc = 1
let SOCI.ext = '.md'
let SOCI.syntax = 'markdown'

let Linux = {}
let Linux.path = '~/vimwiki/Linux/'
let Linux.name = 'Linux'
let Linux.auto_toc = 1
let Linux.ext = '.md'
let Linux.syntax = 'markdown'

let Programming= {}
let Programming.path = '~/vimwiki/Programming/'
let Programming.name = 'Programming'
let Programming.auto_toc = 1
let Programming.ext = '.md'
let Programming.syntax = 'markdown'

let g:vimwiki_list = [vimwiki, CSE3100, CSE3500, CSE3666, SOCI, Linux, Programming]
