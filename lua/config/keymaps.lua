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
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", { noremap = true })

-- keymap for moving the line below the cursor to the end of the current line
map("n", "<S-j>", "J", { desc = "move line below to end of current line" })
-- keymap for moving the current line to the end of the line above
map("n", "<S-u>", "kJ", { desc = "move current line to end of line above" })

-- opening git repo in browser
map("n", "<leader>gBB", "<leader>gB", { desc = "open git repository in browser(gitlab/github)", remap = true })

-- functionalities only for neovide
if vim.g.neovide then
  function ScaleFont(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + delta
  end

  -- Ctrl+Shift+c and Ctrl+Shift+v
  vim.api.nvim_set_keymap("v", "<sc-c>", '"+y', { noremap = true })
  vim.api.nvim_set_keymap("n", "<sc-v>", 'l"+P', { noremap = true })
  vim.api.nvim_set_keymap("v", "<sc-v>", '"+P', { noremap = true })
  vim.api.nvim_set_keymap("c", "<sc-v>", "<C-R>0", { noremap = true })
  vim.api.nvim_set_keymap("i", "<sc-v>", '<ESC>l"+Pli', { noremap = true })
  vim.api.nvim_set_keymap("t", "<sc-v>", '<C-\\><C-n>"+Pi', { noremap = true })

  -- Ctrl++ Ctrl+-
  vim.keymap.set({ "n", "v" }, "<C-=>", function()
    ScaleFont(0.1)
  end, { desc = "increase font size" })
  vim.keymap.set({ "n", "v" }, "<C-->", function()
    ScaleFont(-0.1)
  end, { desc = "decrease font size" })
end
