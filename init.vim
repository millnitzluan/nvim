source $HOME/.config/nvim/vim-plug/plugins.vim

let g:gruvbox_contrast_dark="soft"
colorscheme gruvbox

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/general/paths.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/vimspector.vim
luafile $HOME/.config/nvim/general/compe-config.lua
luafile $HOME/.config/nvim/general/javascript-ls.lua

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set encoding=UTF-8

let b:ale_fixers = ['prettier', 'eslint']
" Fix files automatically on save
let g:ale_fix_on_save = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_set_highlights = 0
let b:ale_exclude_highlights = ['max-lines: *', '* lines *']
let g:ale_exclude_highlights = ['line too long', 'max-lines', '* lines *']

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
