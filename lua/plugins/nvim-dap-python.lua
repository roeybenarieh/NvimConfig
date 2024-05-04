local function get_python_interpreter_path()
  -- the VIRTUAL_ENV variable is set by the venv-selector plugin, but I couldn't make it work(cant get the env variable although exists in terminal)
  -- in case of nil, the default debugpy interpreter will be used
  return require("venv-selector").get_active_path() or nil
end

return {
  "mfussenegger/nvim-dap-python",
  dependencies = { "linux-cultist/venv-selector.nvim" },
  config = function()
    -- code from lazyvim
    local path = require("mason-registry").get_package("debugpy"):get_install_path()
    require("dap-python").setup(path .. "/venv/bin/python", {
      include_configs = true,
      -- ignore the lsp warning, nvim-dap-python expect a string, but I want that every time the
      -- configuration is called, the function get_python_interpreter_path is called(just like the configuration below)
      pythonPath = get_python_interpreter_path,
    })

    -- for more information about nvim-dap python configurations:
    -- https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
    -- add python debug configurations
    local dap = require("dap")
    table.insert(dap.configurations.python, {
      type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
      request = "launch",
      name = "Launch main.py",
      program = "main.py", -- This configuration will launch the current file if used.
      pythonPath = get_python_interpreter_path,
    })
  end,
}
