local telescope_dap_key_maps = function()
  local wk = require("which-key")
  wk.register({
    d = {
      L = {
        name = "list dap statistics",
        -- in all of those mappings Telescope will automatically load telescope-dap plugin (without needing to require it)
        C = {
          "<cmd> Telescope dap commands <CR>",
          "list debug commands",
        },
        c = {
          "<cmd> Telescope dap configurations<CR>",
          "list debug configurations",
        },
        b = {
          "<cmd> Telescope dap list_breakpoints<CR>",
          "list debug breakpoints",
        },
        v = {
          "<cmd> Telescope dap variables<CR>",
          "list debug variables",
        },
        f = {
          "<cmd> Telescope dap frames<CR>",
          "list debug frames",
        },
      },
    },
  }, { prefix = "<leader>" })
end
telescope_dap_key_maps()

return {
  "nvim-telescope/telescope-dap.nvim",
  lazy = true,
  dependencies = {
    "telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}
