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
local package_path_str = "/Users/matianhe/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/matianhe/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/matianhe/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/matianhe/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/matianhe/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  LuaSnip = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["filetype.nvim"] = {
    config = { "\27LJ\2\n]\0\0\3\0\6\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0006\1\0\0009\1\1\0019\1\4\1'\2\5\0&\1\2\1=\1\4\0K\0\1\0\aL0\15cinoptions\bcpp\rfiletype\abo\bvimà\1\0\0\a\0\n\0\0186\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0006\4\0\0009\4\4\0049\4\b\4'\6\t\0B\4\2\2'\5\a\0&\2\5\2B\0\2\1K\0\1\0\6%\vexpand\6\"\18open -a skim \rjobstart\afn\bpdf\rfiletype\abo\bvim.\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\15syntax off\bcmd\bvim0\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\17iabbrev $ $$\bcmd\bvim¯\2\1\0\6\0\28\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\26\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\v\0003\5\n\0=\5\f\0043\5\r\0=\5\14\4=\4\15\0035\4\17\0003\5\16\0=\5\18\4=\4\19\0035\4\21\0003\5\20\0=\5\22\4=\4\23\0035\4\24\0=\4\25\3=\3\27\2B\0\2\1K\0\1\0\14overrides\1\0\0\fshebang\1\0\1\tdash\ash\21function_complex\21*.math_notes/%w+\1\0\0\0\21function_literal\rBrewfile\1\0\0\0\24function_extensions\bpdf\0\bcpp\1\0\0\0\fcomplex\1\0\1\17.*git/config\14gitconfig\fliteral\1\0\1\17MyBackupFile\blua\15extensions\1\0\0\1\0\1\apn\vpotion\nsetup\rfiletype\frequire\0" },
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nµ\2\0\0\n\0\17\1\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\a\0B\1\2\0029\2\b\1\18\4\2\0009\2\t\2'\5\n\0009\6\v\0005\b\r\0005\t\f\0=\t\14\bB\6\2\0A\2\2\0019\2\15\0009\3\15\0\21\3\3\0\22\3\0\3'\4\16\0<\4\3\2K\0\1\0\vracket\tlisp\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\2\0" },
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n“\t\0\2\t\1!\0}6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0'\a\b\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\t\0'\a\n\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\v\0'\a\f\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\r\0'\a\14\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\15\0'\a\16\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\17\0'\a\18\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\19\0'\a\20\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\21\0'\a\22\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\23\0'\a\24\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\25\0'\a\26\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\27\0'\a\28\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\29\0'\a\30\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\31\0'\a \0-\b\0\0B\2\6\1K\0\1\0\0¿*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimù\5\1\0\r\0\29\0@5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\a\0'\5\b\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\t\0'\5\n\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0013\1\r\0005\2\14\0006\3\15\0'\5\16\0B\3\2\0029\3\17\0036\5\1\0009\5\18\0059\5\19\0059\5\20\5B\5\1\0A\3\0\0026\4\21\0\18\6\2\0B\4\2\4H\a\vÄ6\t\15\0'\v\22\0B\t\2\0028\t\b\t9\t\23\t5\v\24\0=\3\25\v=\1\26\v5\f\27\0=\f\28\vB\t\2\1F\a\3\3R\aÛ2\0\0ÄK\0\1\0\nflags\1\0\1\26debounce_text_changes\3ñ\1\14on_attach\17capabilities\1\0\0\nsetup\14lspconfig\npairs\29make_client_capabilities\rprotocol\blsp\24update_capabilities\17cmp_nvim_lsp\frequire\1\2\0\0\fpyright\0-<cmd>lua vim.diagnostic.setloclist()<CR>\r<space>q,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\r<space>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0" },
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nµ\t\0\0\b\0001\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0025\3\a\0005\4\b\0=\4\t\3=\3\n\0025\3\v\0004\4\0\0=\4\f\3=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\0025\3\17\0004\4\0\0=\4\18\3=\3\19\0025\3\20\0=\3\21\0025\3\22\0006\4\23\0=\4\24\0035\4\25\0004\5\0\0=\5\26\4=\4\27\3=\3\28\0025\3\29\0=\3\30\0025\3 \0005\4\31\0=\4!\0035\4\"\0005\5#\0005\6%\0005\a$\0=\a&\0065\a'\0=\a(\6=\6)\5=\5*\4=\4+\3=\3,\0025\3-\0005\4.\0=\4/\3=\0030\2B\0\2\1K\0\1\0\blog\ntypes\1\0\3\vconfig\1\bgit\1\ball\1\1\0\2\venable\1\rtruncate\1\factions\14open_file\18window_picker\fexclude\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\18resize_window\1\17quit_on_open\1\15change_dir\1\0\0\1\0\2\venable\2\vglobal\1\ntrash\1\0\2\20require_confirm\2\bcmd\ntrash\tview\rmappings\tlist\1\0\1\16custom_only\1 preserve_window_proportions\talse\1\0\a\tside\tleft\21hide_root_folder\1\vnumber\1\15signcolumn\byes\19relativenumber\1\vheight\3\30\nwidth\3\30\bgit\1\0\3\venable\2\ftimeout\3Ù\3\vignore\2\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\1\16diagnostics\nicons\1\0\4\nerror\bÔÅó\tinfo\bÔÅö\thint\bÔÅ™\fwarning\bÔÅ±\1\0\1\venable\2\23hijack_directories\1\0\2\venable\2\14auto_open\2\23ignore_ft_on_setup\1\0\n'hijack_unnamed_buffer_when_opening\1\15update_cwd\1\18hijack_cursor\1\16open_on_tab\2\25auto_reload_on_write\2\15auto_close\2\27ignore_buffer_on_setup\1\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n¢\b\0\0\a\0-\0Q6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\31\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\t\0036\4\0\0'\6\n\0B\4\2\0029\4\v\0049\4\f\4=\4\r\0036\4\0\0'\6\n\0B\4\2\0029\4\14\0049\4\f\4=\4\15\0036\4\0\0'\6\n\0B\4\2\0029\4\16\0049\4\f\4=\4\17\0036\4\0\0'\6\18\0B\4\2\0029\4\19\4=\4\20\0034\4\0\0=\4\21\0036\4\0\0'\6\18\0B\4\2\0029\4\22\4=\4\23\0035\4\24\0=\4\25\0034\4\0\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\3=\3 \0025\3\"\0005\4!\0=\4#\3=\3$\0024\3\0\0=\3%\0025\3'\0005\4&\0=\4(\3=\3)\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0*\0'\2(\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0*\0'\2+\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0*\0'\2,\0B\0\2\1K\0\1\0\rfrecency\fproject\19load_extension\15extensions\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\1\fpickers\rmappings\6i\1\0\0\1\0\1\n<C-h>\14which_key\rdefaults\1\0\0\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\vborder\17path_display\1\2\0\0\rabsolute\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fuzzy_file\22telescope.sorters\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\0\1\0\2\20prompt_position\vbottom\18results_width\4≥ÊÃô\3≥Êåˇ\3\1\0\5\20selection_caret\t‚Üí \ruse_less\2\18prompt_prefix\nüî≠ \19color_devicons\2\rwinblend\3\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/matianhe/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nµ\t\0\0\b\0001\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0025\3\a\0005\4\b\0=\4\t\3=\3\n\0025\3\v\0004\4\0\0=\4\f\3=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\0025\3\17\0004\4\0\0=\4\18\3=\3\19\0025\3\20\0=\3\21\0025\3\22\0006\4\23\0=\4\24\0035\4\25\0004\5\0\0=\5\26\4=\4\27\3=\3\28\0025\3\29\0=\3\30\0025\3 \0005\4\31\0=\4!\0035\4\"\0005\5#\0005\6%\0005\a$\0=\a&\0065\a'\0=\a(\6=\6)\5=\5*\4=\4+\3=\3,\0025\3-\0005\4.\0=\4/\3=\0030\2B\0\2\1K\0\1\0\blog\ntypes\1\0\3\vconfig\1\bgit\1\ball\1\1\0\2\venable\1\rtruncate\1\factions\14open_file\18window_picker\fexclude\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\18resize_window\1\17quit_on_open\1\15change_dir\1\0\0\1\0\2\venable\2\vglobal\1\ntrash\1\0\2\20require_confirm\2\bcmd\ntrash\tview\rmappings\tlist\1\0\1\16custom_only\1 preserve_window_proportions\talse\1\0\a\tside\tleft\21hide_root_folder\1\vnumber\1\15signcolumn\byes\19relativenumber\1\vheight\3\30\nwidth\3\30\bgit\1\0\3\venable\2\ftimeout\3Ù\3\vignore\2\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\1\16diagnostics\nicons\1\0\4\nerror\bÔÅó\tinfo\bÔÅö\thint\bÔÅ™\fwarning\bÔÅ±\1\0\1\venable\2\23hijack_directories\1\0\2\venable\2\14auto_open\2\23ignore_ft_on_setup\1\0\n'hijack_unnamed_buffer_when_opening\1\15update_cwd\1\18hijack_cursor\1\16open_on_tab\2\25auto_reload_on_write\2\15auto_close\2\27ignore_buffer_on_setup\1\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n¢\b\0\0\a\0-\0Q6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\31\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\t\0036\4\0\0'\6\n\0B\4\2\0029\4\v\0049\4\f\4=\4\r\0036\4\0\0'\6\n\0B\4\2\0029\4\14\0049\4\f\4=\4\15\0036\4\0\0'\6\n\0B\4\2\0029\4\16\0049\4\f\4=\4\17\0036\4\0\0'\6\18\0B\4\2\0029\4\19\4=\4\20\0034\4\0\0=\4\21\0036\4\0\0'\6\18\0B\4\2\0029\4\22\4=\4\23\0035\4\24\0=\4\25\0034\4\0\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\3=\3 \0025\3\"\0005\4!\0=\4#\3=\3$\0024\3\0\0=\3%\0025\3'\0005\4&\0=\4(\3=\3)\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0*\0'\2(\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0*\0'\2+\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0*\0'\2,\0B\0\2\1K\0\1\0\rfrecency\fproject\19load_extension\15extensions\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\1\fpickers\rmappings\6i\1\0\0\1\0\1\n<C-h>\14which_key\rdefaults\1\0\0\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\vborder\17path_display\1\2\0\0\rabsolute\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fuzzy_file\22telescope.sorters\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\0\1\0\2\20prompt_position\vbottom\18results_width\4≥ÊÃô\3≥Êåˇ\3\1\0\5\20selection_caret\t‚Üí \ruse_less\2\18prompt_prefix\nüî≠ \19color_devicons\2\rwinblend\3\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n“\t\0\2\t\1!\0}6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0'\a\b\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\t\0'\a\n\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\v\0'\a\f\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\r\0'\a\14\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\15\0'\a\16\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\17\0'\a\18\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\19\0'\a\20\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\21\0'\a\22\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\23\0'\a\24\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\25\0'\a\26\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\27\0'\a\28\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\29\0'\a\30\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\5\2\18\4\1\0'\5\6\0'\6\31\0'\a \0-\b\0\0B\2\6\1K\0\1\0\0¿*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimù\5\1\0\r\0\29\0@5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\a\0'\5\b\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\t\0'\5\n\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0013\1\r\0005\2\14\0006\3\15\0'\5\16\0B\3\2\0029\3\17\0036\5\1\0009\5\18\0059\5\19\0059\5\20\5B\5\1\0A\3\0\0026\4\21\0\18\6\2\0B\4\2\4H\a\vÄ6\t\15\0'\v\22\0B\t\2\0028\t\b\t9\t\23\t5\v\24\0=\3\25\v=\1\26\v5\f\27\0=\f\28\vB\t\2\1F\a\3\3R\aÛ2\0\0ÄK\0\1\0\nflags\1\0\1\26debounce_text_changes\3ñ\1\14on_attach\17capabilities\1\0\0\nsetup\14lspconfig\npairs\29make_client_capabilities\rprotocol\blsp\24update_capabilities\17cmp_nvim_lsp\frequire\1\2\0\0\fpyright\0-<cmd>lua vim.diagnostic.setloclist()<CR>\r<space>q,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\r<space>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
try_loadstring("\27LJ\2\n]\0\0\3\0\6\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0006\1\0\0009\1\1\0019\1\4\1'\2\5\0&\1\2\1=\1\4\0K\0\1\0\aL0\15cinoptions\bcpp\rfiletype\abo\bvimà\1\0\0\a\0\n\0\0186\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0006\4\0\0009\4\4\0049\4\b\4'\6\t\0B\4\2\2'\5\a\0&\2\5\2B\0\2\1K\0\1\0\6%\vexpand\6\"\18open -a skim \rjobstart\afn\bpdf\rfiletype\abo\bvim.\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\15syntax off\bcmd\bvim0\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\17iabbrev $ $$\bcmd\bvim¯\2\1\0\6\0\28\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\26\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\v\0003\5\n\0=\5\f\0043\5\r\0=\5\14\4=\4\15\0035\4\17\0003\5\16\0=\5\18\4=\4\19\0035\4\21\0003\5\20\0=\5\22\4=\4\23\0035\4\24\0=\4\25\3=\3\27\2B\0\2\1K\0\1\0\14overrides\1\0\0\fshebang\1\0\1\tdash\ash\21function_complex\21*.math_notes/%w+\1\0\0\0\21function_literal\rBrewfile\1\0\0\0\24function_extensions\bpdf\0\bcpp\1\0\0\0\fcomplex\1\0\1\17.*git/config\14gitconfig\fliteral\1\0\1\17MyBackupFile\blua\15extensions\1\0\0\1\0\1\apn\vpotion\nsetup\rfiletype\frequire\0", "config", "filetype.nvim")
time([[Config for filetype.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nµ\2\0\0\n\0\17\1\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\a\0B\1\2\0029\2\b\1\18\4\2\0009\2\t\2'\5\n\0009\6\v\0005\b\r\0005\t\f\0=\t\14\bB\6\2\0A\2\2\0019\2\15\0009\3\15\0\21\3\3\0\22\3\0\3'\4\16\0<\4\3\2K\0\1\0\vracket\tlisp\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\2\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
