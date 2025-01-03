return {
  "willthbill/opener.nvim",
  dependencies = "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>P",
      function()
        require('telescope').extensions.opener.opener {
            hidden=true,
            respect_gitignore=false,
            root_dir="~",
        }
      end,
      desc = "open nvim in a new directory",
    },
  },
}
