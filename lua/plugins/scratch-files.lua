local attempt_key_maps = function()
  local wk = require("which-key")
  wk.register({
    f = {
      s = {
        name = "scratch files",
        N = {
          require("attempt").new_input_ext,
          "new named scratch file",
        },
        n = {
          require("attempt").new_select,
          "new scratch file",
        },
        r = {
          require("attempt").rename_buf,
          "rename scratch file",
        },
        d = {
          require("attempt").delete_buf,
          "delete scratch file",
        },
        o = {
          "<cmd> Telescope attempt <cr>",
          "open scratch file",
        },
      },
    },
  }, { prefix = "<leader>" })
end

return {
  "m-demare/attempt.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- for configuring debugpy to use the venv (via dap-python.lua)
    "nvim-telescope/telescope-ui-select.nvim",
    "telescope.nvim",
  },
  opts = {
    list_buffers = true, -- This will make them show on other pickers (like :Telescope buffers)
    ext_options = { "py", "lua", "js", "cpp", "c", "", "json", "json5", "yml", "yaml", "go", "txt" }, -- Options to choose from
  },
  config = function(_, opts)
    require("attempt").setup(opts)
    attempt_key_maps()
  end,
}
