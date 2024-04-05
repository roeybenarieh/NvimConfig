return {
  { "ellisonleao/gruvbox.nvim" },
  -- vscode like theme
  { "Mofiqul/vscode.nvim" },
  -- IntelliJ like theme
  { "briones-gabriel/darcula-solid.nvim", dependencies = "rktjmp/lush.nvim" },
  -- catppuccino theme
  { "catppuccin/nvim" },
  -- github theme
  { "projekt0n/github-nvim-theme" },
  -- onedark theme
  { "navarasu/onedark.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
