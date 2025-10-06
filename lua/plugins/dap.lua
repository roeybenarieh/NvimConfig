return {
  "mfussenegger/nvim-dap",
  config = function()
    require("dap.ext.vscode").getconfigs() -- find .vscode/launch.json automatically
  end,
}
