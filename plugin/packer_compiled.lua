-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/luanmillnitz/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/luanmillnitz/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/luanmillnitz/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/luanmillnitz/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/luanmillnitz/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ale = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/ale"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ["vim-better-whitespace"] = {
    config = { "\27LJ\2\nt\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\29<Cmd>StripWhitespace<CR>\14<Leader>w\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/vim-better-whitespace"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/vim-closetag"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-elixir"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/vim-elixir"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/luanmillnitz/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-better-whitespace
time([[Config for vim-better-whitespace]], true)
try_loadstring("\27LJ\2\nt\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\29<Cmd>StripWhitespace<CR>\14<Leader>w\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-better-whitespace")
time([[Config for vim-better-whitespace]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
