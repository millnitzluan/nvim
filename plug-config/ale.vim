let b:ale_fixers = ['prettier', 'eslint']
" Fix files automatically on save
let g:ale_fix_on_save = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_set_highlights = 0
let b:ale_exclude_highlights = ['max-lines: *', '* lines *']
let g:ale_exclude_highlights = ['line too long', 'max-lines', '* lines *']
