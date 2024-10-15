local function hide_in_width()
  return vim.fn.winwidth(0) > 120
end

local project_root = {
  function()
    return vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
  end,
  icon = "",
  cond = hide_in_width,
  left_padding = 2,
  right_padding = 2,
  separator = { right = "" },
}

return {
  {
    "shortcuts/no-neck-pain.nvim",
    version = "*",
    keys = {
      { "<leader>nn", "<cmd>NoNeckPain<CR>", desc = "Toggle NeckPain" },
    },
    opts = {
      width = 170,
      mappings = {
        enabled = true,
      },
    },
  },

  {
    "akinsho/bufferline.nvim",
    enabled = true,
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        -- theme = "kanagawa",
        -- theme = "gruvbox-material",
        theme = "catppuccin-mocha",
        component_separators = "|",
        section_separators = { left = "", right = "" },
        icon_enabled = true,
      },
      sections = {
        lualine_a = {
          { "mode", icon = "", separator = { left = "" }, right_padding = 2 },
        },
        lualine_b = { project_root },
        lualine_c = { "fileformat" },
        lualine_y = { "filetype", "progress" },
        lualine_z = {
          { "location", separator = { right = "" }, left_padding = 2 },
        },
      },

      winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
          { "filename", path = 1, left_padding = 2, right_padding = 2, separator = { left = "", right = "" } },
        },
      },

      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },

      inactive_winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { { "filename", path = 1 } },
      },

      tabline = {},
      extensions = {},
    },
  },

  {
    "stevearc/dressing.nvim",
    enabled = true,
  },
}
