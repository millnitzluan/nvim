source $HOME/.config/nvim/vim-plug/plugins.vim

set encoding=UTF-8

syntax on
" colorscheme onedark
:silent! colorscheme dracula

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/general/paths.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/ale.vim
luafile $HOME/.config/nvim/general/compe-config.lua
luafile $HOME/.config/nvim/general/javascript-ls.lua

let g:indentLine_enabled = 1

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
