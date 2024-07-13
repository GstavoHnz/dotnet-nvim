return {
  {
    "airblade/vim-rooter",
  },
  {
    "telescope.nvim",
    keys = {
      {
        "<leader><space>",
        ":lua require('telescope.builtin').find_files({ hidden=true, file_ignore_patterns = { 'node_modules[^@exodus]*', '.git', '.venv' } })<CR>",
        silent = true,
      },
    },
    opts = function(_, opts)
      opts.defaults = vim.tbl_extend("force", opts.defaults, {
        mappings = vim.tbl_extend("force", opts.defaults.mappings, {
          i = vim.tbl_extend("force", opts.defaults.mappings.i, {
            ["<C-l>"] = "select_vertical",
            ["<C-j>"] = "select_horizontal",
          }),
          n = vim.tbl_extend("force", opts.defaults.mappings.n, {
            ["<C-l>"] = "select_vertical",
            ["<C-j>"] = "select_horizontal",
          }),
        }),
        layout_config = { prompt_position = "top" },
        prompt_prefix = " 󰭎  ",
        sorting_strategy = "ascending",
        selection_caret = "  ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        path_display = { "truncate" },
        inblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        use_less = true,
        set_env = { ["COLORTERM"] = "truecolor" },
      })

      opts.extensions = {
        file_browser = {
          -- theme = "ivy",
          -- disables netrw and use telescope-file-browser in its place
          -- hijack_netrw = true,
        },
      }
    end,
  },

  {
    "elianiva/telescope-npm.nvim",
    keys = {
      { "<leader>fs", ":Telescope npm scripts<CR>", desc = "Search npm packages" },
    },
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>r",
        ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
        desc = "Browse files in current path",
      },
      -- {
      --   "<leader>E",
      --   ":Telescope file_browser<CR>",
      --   desc = "Browse files",
      -- },
    },
  },
}
