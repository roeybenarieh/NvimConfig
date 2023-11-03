return {
    -- add more treesitter parsers
    "nvim-treesitter/nvim-treesitter",
    opts = {
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
            "query",
            "sql",
            "promql",
            "regex",
            "html",
            "css",
            "json",
            "yaml"
        },
    },
}
