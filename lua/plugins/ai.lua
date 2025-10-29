-- Required for `opts.auto_reload`.
vim.o.autoread = true
return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    "folke/snacks.nvim",
  },
  keys = {
    {
      mode = { "n", "x" },
      "<C-a>",
      function()
        require("opencode").ask("@this: ", { submit = true })
      end,
      desc = "Ask opencode",
    },
    {
      mode = { "n", "x" },
      "<C-x>",
      function()
        require("opencode").select()
      end,
      desc = "Execute opencode action…",
    },
    {
      mode = { "n", "x" },
      "ga",
      function()
        require("opencode").prompt("@this")
      end,
      desc = "Add to opencode",
    },
    {
      mode = "n",
      "<C-.>",
      function()
        require("opencode").toggle()
      end,
      desc = "Toggle opencode",
    },
    {
      mode = "n",
      "<S-C-u>",
      function()
        require("opencode").command("messages_half_page_up")
      end,
      desc = "opencode half page up",
    },
    {
      mode = "n",
      "<S-C-d>",
      function()
        require("opencode").command("messages_half_page_down")
      end,
      desc = "opencode half page down",
    },
    {
      mode = "n",
      "+",
      "<C-a>",
      desc = "Increment",
      noremap = true,
    },
    {
      mode = "n",
      "-",
      "<C-x>",
      desc = "Decrement",
      noremap = true,
    },
  },
}
