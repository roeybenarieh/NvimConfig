return {
  "f-person/git-blame.nvim",
  keys = {
    {
      "<leader>go",
      "<cmd> :GitBlameOpenFileURL <CR>",
      desc = "open in browser remote repo (github/gitlab)",
    },
  },
  opts = {
    enabled = true, -- this plugin is enabled only for the 'GitBlameOpenFileURL' keymap
    message_template = nil, -- show nothing in the git blame line
  },
}
