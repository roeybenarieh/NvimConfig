local attempt_key_maps = function()
  local wk = require("which-key")
  wk.register({
    f = {
      s = {
        name = "scratch files",
        N = {
          function()
            require("attempt").new_input_ext()
          end,
          "new named scratch file",
        },
        n = {
          function()
            require("attempt").new_select()
          end,
          "new scratch file",
        },
        r = {
          function()
            require("attempt").rename_buf()
          end,
          "rename scratch file",
        },
        d = {
          function()
            require("attempt").delete_buf()
          end,
          "delete scratch file",
        },
        o = {
          -- Telescope automaticly setup attempt in this case
          "<cmd> Telescope attempt <cr>",
          "open scratch file",
        },
      },
    },
  }, { prefix = "<leader>" })
end
attempt_key_maps()

return {
  "m-demare/attempt.nvim",
  lazy = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "telescope.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  opts = {
    list_buffers = true, -- This will make them show on other pickers (like :Telescope buffers)
    ext_options = { "py", "lua", "js", "cpp", "c", "", "json", "json5", "yaml", "go", "txt" }, -- Options to choose from
  },
  config = function(_, opts)
    require("attempt").setup(opts)
    require("telescope").load_extension("attempt")
  end,
}
