-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- add hook to automatically select the venv when Nvim open
local function on_attach(client)
  -- select venv from cache via venv-selector.nvim
  require("venv-selector").retrieve_from_cache()
end
-- since lazyvim doesnt settup pyright, its fine to re-setup it.
local lspconfig = require("lspconfig")
lspconfig.pyright.setup({
  on_attach = on_attach,
})
