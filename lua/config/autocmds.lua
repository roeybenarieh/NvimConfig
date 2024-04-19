-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- activate python venv when Nvim open
-- from issue: https://github.com/linux-cultist/venv-selector.nvim/issues/96#issuecomment-2010242590
local augroup = vim.api.nvim_create_augroup("VenvSelectorRetrieve", { clear = true })
vim.api.nvim_create_autocmd({ "LspAttach" }, {
  pattern = { "*.py" },
  group = augroup,
  callback = function(args)
    if vim.lsp.get_client_by_id(args["data"]["client_id"])["name"] == "pyright" then
      require("venv-selector").retrieve_from_cache()
      vim.api.nvim_del_augroup_by_id(augroup)
    end
  end,
})
