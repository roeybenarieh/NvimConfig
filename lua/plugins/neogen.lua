return {
    -- annotation generator
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
    version = "*", -- follow only stable versions
    keys = {
        { "<leader>cds", "<cmd>:Neogen<cr><cmd>:+1<cr>", desc = "Create Docstring" },
    },
    opts = {
        enabled = true,
        insert_after_comment = true,
        jump_map = "<C-x>", -- doesnt work, suppose to cycle threw all of the unfilled annotations
        languages = {
            python = {
                template = {
                    annotation_convention = "reST",
                },
            },
        },
    }
}
