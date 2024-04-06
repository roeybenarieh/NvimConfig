-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- activate python venv when Nvim open
vim.api.nvim_create_autocmd("BufEnter", {
  desc = "Auto select virtualenv Nvim open",
  pattern = "*",
  callback = function()
    require("venv-selector").retrieve_from_cache()
  end,
  once = true,
})
