return {
  {
    -- https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
    "nvim-treesitter/nvim-treesitter",
    opts = {
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<c-y>", -- set to `false` to disable one of the mappings
          node_incremental = "<c-y>",
          scope_incremental = "<c-y>",
          node_decremental = "<BS>",
        },
      },
      ensure_installed = {
        "vim",
        "markdown_inline",
        "lua",
        "python",
        "bash",
        "go",
        "markdown",
        "rust",
        "cpp",
        "c_sharp",
        "javascript",
        "typescript",
        "query", -- for tree-sitter queries
        "sql",
        "promql",
        "helm",
        "regex",
        "html",
        "css",
        "json",
        "json5",
        "yaml",
        "ini",
        "toml",
        "requirements", -- python pip requirements
        "nix",
        "just",
        "dockerfile",
        "git_config", -- .git/config file
        "git_rebase", -- git interactive rebase file
        "gitattributes", -- .gitattributes file, resource: https://git-scm.com/book/en/v2/Customizing-Git-Git-Attributes
        "gitcommit", -- git commit message using the "conventional commits" specifications
        "gitignore", -- .gitignore file
        "comment", -- comments in any language
      },
    },
  },
  -- since treesitter doesnt support incremental selection, use flash.nvim instead
  {
    "folke/flash.nvim",
    enabled = true,
  },
}
