return {
  "f-person/git-blame.nvim",
  keys = {
    {
      "<leader>gr",
      "<cmd> :GitBlameOpenFileURL <CR>",
      desc = "open in browser remote repo (github/gitlab)",
    },
  },
  opts = {
    enabled = true, -- this plugin is enabled only for the 'GitBlameOpenFileURL' keymap
    message_template = "", -- show nothing in the git blame line
  },
}
