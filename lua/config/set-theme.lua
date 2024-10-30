vim.opt.termguicolors = true

-- Minimal config
require("themery").setup({
  themes = {
    "rose-pine-moon",
    "rose-pine-main",
    "github_light",
    "tokyonight",
    "melange",
    "github_dark",
    "kanagawa-wave",
    "kanagawa-dragon",
    "kanagawa-lotus",
    "tokyonight-night",
    "tokyonight-storm",
    "tokyonight-day",
    "tokyonight-moon",
  }, -- Your list of installed colorschemes.
  livePreview = true, -- Apply theme while picking. Default to true.
})
