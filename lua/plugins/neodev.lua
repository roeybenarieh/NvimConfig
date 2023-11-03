return {
    -- signature help, docs and completion for the nvim lua API
    "folke/neodev.nvim",
    opts = {
        library = {
            plugins = { "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
        },
    }
}
