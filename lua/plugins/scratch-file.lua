return {
  "LintaoAmons/scratch.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>fsn", "<cmd>Scratch<cr>", desc = "new scratch file" },
    { "<leader>fsN", "<cmd>ScratchWithName<cr>", desc = "new named scratch file" },
    { "<leader>fsp", "<cmd>ScratchPad<cr>", desc = "new pad scratch file" },

    { "<leader>fso", "<cmd>ScratchOpen<cr>", desc = "open scratch file" },
    { "<leader>fsO", "<cmd>ScratchOpenFzf<cr>", desc = "fzf open scratch file" },

    { "<leader>fsI", "<cmd> :ScratchInitConfig<cr>", desc = "init scratch config" },
    { "<leader>fsE", "<cmd> :ScratchEditConfig<cr>", desc = "edit scratch config" },
  },
}
