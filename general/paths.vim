let g:loaded_python_provider = 0
"let g:python2_host_prog = expand("/usr/bin/python2.7") " <- example
let g:python3_host_prog = expand("/usr/bin/python3.8") " <- example
let g:startify_session_dir = '~/.config/nvim/session'

" let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")
let g:startify_session_persistence = 1
let g:startify_change_to_vcs_root = 1
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim' },
            \ { 'z': '~/.zshrc' },
            \ { 'p': '~/project' },
            \ ]
let g:startify_session_autoload = 1
" Must be global so that it can be read by syntax/startify.vim.
"
let g:startify_header = exists('g:startify_custom_header')
      \ ? s:set_custom_section(startify#pad(g:startify_custom_header))
      \ : (exists('*strwidth') ? startify#pad(startify#fortune#cowsay()) : [])
