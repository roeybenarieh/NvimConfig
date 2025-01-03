return {
  'nvim-telescope/telescope.nvim',
  opts = {
    pickers = {
      live_grep = { -- live grep settings
        additional_args = function()
          return { '--hidden' }  -- includes hidden files in the search (uses 'rg' cli)
        end,
      },
    }
  }
}
