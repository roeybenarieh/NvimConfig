-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local write_err_to_user = vim.api.nvim_err_writeln

-- increase/decrease text font size
map("n", "<C-S-=>", function()
  write_err_to_user("Increase text size by pressing Ctrl + Shift + =")
end, { desc = "increase text/font size" })

map("n", "<C-->", function()
  write_err_to_user("decrease text size by pressing Ctrl + -")
end, { desc = "decrease text/font size" })

-- usually Ctrl+h is defaulty interpreted as a back space, overriding it with movement in insert mode
-- noremap is used to prevent recursive mapping
map("i", "<C-h>", "<Left>", { noremap = true, desc = "move left" })
-- keymap for moving to the right in insert mode
vim.api.nvim_set_keymap("i", "<C-h>", "<Right>", { noremap = true })
