local keymap = vim.api.nvim_set_keymap
return {
  "Weissle/persistent-breakpoints.nvim",
  config = function()
    require("persistent-breakpoints").setup({
      load_breakpoints_event = { "BufReadPost" },
    })

    keymap(
      "n",
      "<leader>db",
      "<cmd>lua require('persistent-breakpoints.api').toggle_breakpoint()<cr>",
      { noremap = true, silent = true, desc = "Toggle Breakpoint" }
    )
    keymap(
      "n",
      "<leader>dB",
      [[:lua require("persistent-breakpoints.api").set_conditional_breakpoint()<CR>]],
      { noremap = true, silent = true, desc = "Breakpoint Condition" }
    )
    keymap(
      "n",
      "<leader>dbc",
      [[:lua require("persistent-breakpoints.api").clear_all_breakpoints()<CR>]],
      { noremap = true, silent = true, desc = "Clear Breakpoints" }
    )
  end,
  -- neither the normal 'keys = ...' works
  -- keys = function()
  --   return {
  --     {
  --       "<leader>db",
  --       function()
  --         require("persistent-breakpoints.api").toggle_breakpoint()
  --       end,
  --       "TToggle Breakpoint",
  --     },
  --     {
  --       "<leader>dB",
  --       function()
  --         require("persistent-breakpoints.api").set_conditional_breakpoint()
  --       end,
  --       "BBreakpoint Condition",
  --     },
  --     {
  --       "<leader>dbc",
  --       function()
  --         require("persistent-breakpoints.api").clear_all_breakpoints()
  --       end,
  --       "CClear BreakPoints",
  --     },
  --   }
  -- end,
}
