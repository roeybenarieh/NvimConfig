return {
  "lewis6991/gitsigns.nvim",
  event = "LazyFile",
  opts = {
    signs = {
      add = { text = "+" },
      change = { text = "~" },
      delete = { text = "-" },
      topdelete = { text = "-" },
      changedelete = { text = "-" },
      untracked = { text = "U" },
    },
    current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_formatter_opts = {
      relative_time = true, -- show relative time of the commit
    },
    on_attach = function(buffer)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
      end

      -- stylua: ignore start
      local wk = require("which-key")
      wk.register({
        ga = {
          name = "+Action",
          s = { mode = { "n", "v" }, ":Gitsigns stage_hunk<CR>", "Stage Hunk" },
          r = { mode = { "n", "v" }, ":Gitsigns reset_hunk<CR>", "Reset Hunk" },
          S = { gs.stage_buffer, "Stage Buffer" },
          u = { gs.undo_stage_hunk, "Undo Stage Buffer" },
          R = { gs.reset_buffer, "Reset Buffer" },
          p = { gs.preview_hunk, "Preview Hunk" },
          b = { function() gs.blame_line({ full = true }) end, "Blame Line" },
          d = { gs.diffthis, "Diff This" },
          D = { function() gs.diffthis("~") end, "Diff this ~" },
        },
      }, { prefix = "<leader>" })

      map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "GitSigns Select Hunk")
      map("n", "]h", gs.next_hunk, "Next Hunk")
      map("n", "[h", gs.prev_hunk, "Prev Hunk")
    end,
  },
}
