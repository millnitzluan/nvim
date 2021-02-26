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
  Plug 'ayu-theme/ayu-vim' " or other package manager

  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " javascript plugins
  Plug 'leafgarland/typescript-vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'pangloss/vim-javascript'
  Plug 'w0rp/ale'

  " Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  Plug 'tpope/vim-commentary'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'mhinz/vim-startify'
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'
  Plug 'liuchengxu/vim-which-key'
  Plug 'unblevable/quick-scope'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'vim-scripts/PreserveNoEOL'
  Plug 'junegunn/goyo.vim'

call plug#end()
