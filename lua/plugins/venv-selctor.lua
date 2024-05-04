return {
  {
    "linux-cultist/venv-selector.nvim",
    opts = {
      parent = 0,
    },
    -- hook, when venv is selected: create dap debug configurations
    keys = {
      -- Keymap to retrieve the venv from a cache
      { "<leader>cc", "<cmd>:VenvSelectCached<cr>", desc = "venv fom cache" },
    },
  },
}
