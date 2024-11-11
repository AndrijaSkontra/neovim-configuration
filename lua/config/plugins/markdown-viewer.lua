return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {},
  keys = {
    {
      "<leader>md",
      "<CMD>RenderMarkdown toggle<CR>",
      desc = "Toggle between rendering markdown",
    },
  },
  ft = "markdown",
  lazy = false,
}
