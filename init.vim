let mapleader = " "
let maplocalleader = " " " Optional, for local leader key

call plug#begin()

Plug 'nvim-orgmode/orgmode'

call plug#end()

" init.vim
lua << EOF

require('orgmode').setup({
  org_agenda_files = {'C:/Users/David/org/*'},
  org_default_notes_file = 'C:/Users/David/org/refile.org',
})

EOF