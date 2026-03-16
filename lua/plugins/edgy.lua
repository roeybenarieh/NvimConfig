return {
  "folke/edgy.nvim",
  opts = function(_, opts)
    -- Remove filesystem neo-tree from left sidebar
    opts.left = vim.tbl_filter(function(item)
      return not (type(item) == "table" and item.ft == "neo-tree" and item.title == "Neo-Tree Filesystem")
    end, opts.left or {})

    -- Add filesystem neo-tree to right sidebar
    table.insert(opts.right, 1, {
      title = "Neo-Tree Filesystem",
      ft = "neo-tree",
      filter = function(buf)
        return vim.b[buf].neo_tree_source == "filesystem"
      end,
      pinned = true,
      open = function()
        vim.cmd(("Neotree show position=right filesystem dir=%s"):format(LazyVim.root()))
      end,
    })
  end,
}
