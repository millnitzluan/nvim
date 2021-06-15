-- load all plugins
require "pluginList"
require "misc-utils"

require "top-bufferline"
require "statusline"

require("colorizer").setup()
require("neoscroll").setup() -- smooth scroll

-- lsp stuff
require "nvim-lspconfig"
require "compe-completion"

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff
cmd "syntax on"

local base16 = require "base16"
base16(base16.themes["onedark"], true)

require "highlights"

-- misc global opts
SETTINGS = {
  'set cursorline',
  'set nobackup',
  'set nowritebackup',
  'set relativenumber',
  'colorscheme onedark',
  'set scrolloff=8'
}

for _, setting in ipairs(SETTINGS) do
  vim.cmd(setting)
end

vim.api.nvim_set_keymap('n', '<Leader>v', '<C-w>v', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Leader>h', '<C-w>s', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })

vim.api.nvim_set_keymap('n', 'gd', '[[<Cmd>lua vim.lsp.buf.definition()<CR>]]', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', 'gD', '[[<Cmd>lua vim.lsp.buf.declaration()<CR>]]', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', 'gr', '[[<Cmd>lua vim.lsp.buf.references()<CR>]]', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', 'gi', '[[<Cmd>lua vim.lsp.buf.implementation()<CR>]]', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-s>', '[[<Cmd>lua vim.lsp.buf.signature_help()<CR>]]', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-n>', '[[<Cmd>lua vim.lsp.diagnostic.goto_prev()<CR>]]', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-p>', '[[<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>]]', { noremap = true, silent = false })

vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})

g.indentLine_enabled = 1
g.indent_blankline_char = "▏"

g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
g.indent_blankline_buftype_exclude = {"terminal"}

g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

require "treesitter-nvim"
require "mappings"

require "telescope-nvim"
require "nvimTree" -- file tree stuff
require "file-icons"

-- git signs , lsp symbols etc
require "gitsigns-nvim"
require("nvim-autopairs").setup()
require("lspkind").init()

require "whichkey"
require "dashboard"
