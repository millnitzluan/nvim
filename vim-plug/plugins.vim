" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -flo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " navigation
  Plug 'sheerun/vim-polyglot'
  Plug 'scrooloose/nerdtree'
  Plug 'jiangmiao/auto-pairs'

  "themes
  Plug 'ryanoasis/vim-devicons'
  Plug 'gruvbox-community/gruvbox'
  Plug 'Yggdroot/indentLine'

  " javascript plugins
  Plug 'w0rp/ale'

  " Syntax highlight
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

  " Language server
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'

  " Vim status
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Comment code
  Plug 'tpope/vim-commentary'

  " Search
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'mhinz/vim-startify'
  Plug 'mhinz/vim-signify'

  " Git with vim
  Plug 'tpope/vim-fugitive'

  Plug 'junegunn/gv.vim'

  " Help with keys
  Plug 'liuchengxu/vim-which-key'

  Plug 'unblevable/quick-scope'
  Plug 'vim-scripts/PreserveNoEOL'
call plug#end()
