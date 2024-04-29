return {
  -- annotation generator
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  version = "*", -- follow only stable versions
  keys = {
    {
      "<leader>cds",
      function()
        require("neogen").generate({})
      end,
      desc = "Create Docstring",
    },
  },
  opts = {
    enabled = true,
    snippet_engine = "luasnip", -- integration with snippet engine, help with cycling support.
    languages = {
      python = {
        template = {
          annotation_convention = "reST",
        },
      },
    },
  },
}
