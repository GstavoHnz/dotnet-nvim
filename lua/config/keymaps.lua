-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function set(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, opts)
end

-- Insert and Append in correct identation
local function IndentWithI()
  if #vim.fn.getline(".") == 0 then
    return '"_cc'
  else
    return "i"
  end
end

local function IndentWithA()
  if #vim.fn.getline(".") == 0 then
    return '"_cc'
  else
    return "a"
  end
end

set("n", "i", IndentWithI, { expr = true, noremap = true })
set("n", "a", IndentWithA, { expr = true, noremap = true })

set("n", "<leader>cq", ":ClearQuickfixList<cr>", { noremap = true, silent = true })

set("n", "gl", "$", { silent = true, desc = "Go to the end of the line", noremap = true })
set("n", "gh", "0", { silent = true, desc = "Go to the start of the line", noremap = true })

set("n", "<leader>fN", "<cmd>:Telescope notify<cr>", { silent = true, desc = "Search notifications" })

-- Save all
set("n", "<C-S-s>", ":wa<cr>", { remap = true, desc = "Save all" })

-- Window navigation
set("n", "<leader>wl", "<leader>wv", { remap = true, desc = "Split window right" })
set("n", "<leader>wj", "<leader>ws", { remap = true, desc = "Split window below" })
-- set({ "n", "i", "v" }, "<C-k>", "<leader>fF", { remap = true, desc = "Find files (current directory)" })
