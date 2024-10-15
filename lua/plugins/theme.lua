return {
  {
    "junegunn/seoul256.vim",
  },

  {
    "projekt0n/github-nvim-theme",
    config = function()
      require("github-theme").setup({
        options = {
          transparent = true,
        },
      })
    end,
  },

  -- add tokyonight
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
      contrast = "soft",
      styles = {
        sidebars = "transparent",
        float = "transparent",
      },
    },
  },

  {
    "AlexvZyl/nordic.nvim",
    name = "nordic",
    opts = {
      transparent = true,
    },
  },

  {
    "sainnhe/gruvbox-material",
    name = "gruvbox-material",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        float = "transparent",
      },
    },
  },

  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin-mocha",
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
      })
    end,
  },

  {
    "sainnhe/sonokai",
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
  },

  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    opts = {
      undercurl = true,
      transparent = true,
      overrides = function(colors)
        local theme = colors.theme
        return {
          -- More uniform popup menu
          -- Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
          -- PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          -- PmenuSbar = { bg = theme.ui.bg_m1 },
          -- PmenuThumb = { bg = theme.ui.bg_p2 },
          -- Borderless Telescope
          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
        }
      end,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      background = {
        dark = "wave",
      },
    },
  },

  { "rose-pine/neovim", name = "rose-pine" },

  {
    "tiagovla/tokyodark.nvim",
    name = "tokyodark",
    opts = {
      transparent_background = true,
    },
  },

  {
    "dotsilas/darcubox-nvim",
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
      -- colorscheme = "kanagawa",
      -- colorscheme = "kanagawa-wave",
      -- colorscheme = "rose-pine",
      -- colorscheme = "github_dark_dimmed",
      -- colorscheme = "rose-pine-moon",
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "github_dark",
      -- colorscheme = "tokyonight",
      -- colorscheme = "nordic",
    },
  },
}
