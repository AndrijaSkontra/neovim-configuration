-- these are just instructions what colorschemes should lazy install
-- check set-theme.lua
return {
  "Mofiqul/vscode.nvim",
  "rebelot/kanagawa.nvim",
  "savq/melange-nvim",
  "folke/tokyonight.nvim",
  "projekt0n/github-nvim-theme",
  "rose-pine/neovim",
  "ellisonleao/gruvbox.nvim",
  {
    "navarasu/onedark.nvim",
    lazy = false,
    opts = {
      style = "warm", -- Set the style to "warm"
    },
  },
}
