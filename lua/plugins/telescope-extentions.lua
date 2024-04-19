return {
  "telescope.nvim",
  config = function(_, opts)
    -- takes the opts from lazyvim and setup telescope with it
    -- than loads all telescope extentions (must happend directly after setup)
    require("telescope").setup(opts)
    require("telescope").load_extension("dap")
    require("telescope").load_extension("attempt")
  end,
}
