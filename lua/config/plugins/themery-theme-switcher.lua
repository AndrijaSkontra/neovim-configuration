return {
  "zaldih/themery.nvim",
  lazy = false,
  opts = {
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
    },
  },
  keys = {
    { "<leader>tt", "<CMD>Themery<CR>", desc = "Change theme" },
  },
}
