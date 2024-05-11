return {
  {
    "rcarriga/nvim-dap-ui",
    -- override lavyvim's config
    -- for more information on the events dap has, see:
    -- the possible events: https://microsoft.github.io/debug-adapter-protocol/specification#Events_Exited
    -- the way to use them: https://github.com/mfussenegger/nvim-dap/blob/master/doc/dap.txt#L1182
    config = function(_, opts)
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup(opts)
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open({})
      end
      -- lazy.nvim code I commented:
      -- dap.listeners.before.event_terminated["dapui_config"] = function()
      --   dapui.close({})
      -- end
      -- dap.listeners.before.event_exited["dapui_config"] = function()
      --   dapui.close({})
      -- end
    end,
  },
}
