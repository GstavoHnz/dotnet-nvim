-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.cursorline = true

vim.opt.ignorecase = false
vim.o.conceallevel = 0
vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- Util.toggle.diagnostics({})

-- vim.g.minipairs_disable = true

-- Gruvbox Material
vim.g.gruvbox_material_transparent_background = 2
vim.g.gruvbox_material_float_style = "dim"
-- vim.g.gruvbox_material_background = "hard"
-- Disable default mappings
vim.g.vrc_set_default_mappings = 0

vim.g.db_ui_use_nerd_fonts = 1

vim.g.rooter_manual_only = 1
