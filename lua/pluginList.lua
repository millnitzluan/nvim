local packer = require('packer')
local use = packer.use

-- using { } for using different branch , loading plugin with certain commands etc
return packer.startup(
    function()
        use 'wbthomason/packer.nvim'
        use 'christoomey/vim-tmux-navigator'

        -- color related stuff
        use 'folke/tokyonight.nvim'
        -- use 'joshdick/onedark.vim'
        -- use 'arcticicestudio/nord-vim'
        use 'norcalli/nvim-colorizer.lua'
        use 'unblevable/quick-scope'

        -- lang stuff
        use 'nvim-treesitter/nvim-treesitter'
        use 'neovim/nvim-lspconfig'
        use 'hrsh7th/nvim-compe'
        use 'onsails/lspkind-nvim'
        use 'kabouzeid/nvim-lspinstall'
        use 'elixir-editors/vim-elixir'
        use 'w0rp/ale'
        -- use 'mxw/vim-jsx'

        use 'lewis6991/gitsigns.nvim'
        use 'akinsho/nvim-bufferline.lua'
        use 'glepnir/galaxyline.nvim'
        use 'windwp/nvim-autopairs'
        use 'alvan/vim-closetag'
        use 'ThePrimeagen/harpoon'
        use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

        use 'tpope/vim-commentary'

        -- file managing , picker etc
        use 'kyazdani42/nvim-tree.lua'
        use 'kyazdani42/nvim-web-devicons'
        use 'ryanoasis/vim-devicons'

        -- telescope
        --
        use 'nvim-telescope/telescope-fzy-native.nvim'
        use 'nvim-lua/plenary.nvim'
        use 'nvim-lua/popup.nvim'
        use 'nvim-telescope/telescope.nvim'

        -- misc
        use 'glepnir/dashboard-nvim'
        use 'folke/which-key.nvim'
        use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}

        use {
          'ntpeters/vim-better-whitespace',
          config = function()
            vim.api.nvim_set_keymap(
            'n', '<Leader>w', '<Cmd>StripWhitespace<CR>', {noremap = true}
            )
          end,
        }
      end,
      {
        display = {
            border = {'┌', '─', '┐', '│', '┘', '─', '└', '│'}
        }
    }
)
