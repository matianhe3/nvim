local function telescope()
  require('telescope').setup({
    defaults = {
      prompt_prefix = "🔭 ",
      selection_caret = "→ ",
      layout_config = {
        horizontal = { prompt_position = "bottom", results_width = 0.6 },
        vertical = { mirror = false },
      },
      file_previewer = require("telescope.previewers").vim_buffer_cat.new,
      grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
      qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
      file_sorter = require("telescope.sorters").get_fuzzy_file,
      file_ignore_patterns = {},
      generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
      path_display = { "absolute" },
      winblend = 0,
      border = {},
      borderchars = {
        "─",
        "│",
        "─",
        "│",
        "╭",
        "╮",
        "╯",
        "╰",
      },
      color_devicons = true,
      use_less = true,
      set_env = { ["COLORTERM"] = "truecolor" },
    },
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    },
    pickers = {
    },
    extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = true,  -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                         -- the default case_mode is "smart_case"
      }
    }
  })
  require("telescope").load_extension("fzf")
  require("telescope").load_extension("project")
  require("telescope").load_extension("frecency")
end

return telescope
