local telescope_dap_key_maps = function()
  local wk = require("which-key")
  wk.register({
    d = {
      L = {
        name = "list dap statistics",
        C = {
          require("telescope").extensions.dap.commands,
          "list debug commands",
        },
        c = {
          require("telescope").extensions.dap.configurations,
          "list debug configurations",
        },
        b = {
          require("telescope").extensions.dap.list_breakpoints,
          "list debug breakpoints",
        },
        v = {
          require("telescope").extensions.dap.variables,
          "list debug variables",
        },
        f = {
          require("telescope").extensions.dap.frames,
          "list debug frames",
        },
      },
    },
  }, { prefix = "<leader>" })
end

return {
  "nvim-telescope/telescope-dap.nvim",
  dependencies = {
    "telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  -- config the plugin by creating the required key maps
  config = telescope_dap_key_maps,
}
