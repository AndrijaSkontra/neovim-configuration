return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = {
      "bash",
      "glimmer_javascript",
      "json",
      "css",
      "c",
      "diff",
      "html",
      "lua",
      "luadoc",
      "typescript",
      "toml",
      "elixir",
      "eex",
      "vim",
      "vimdoc",
      "regex",
      "markdown",
      "markdown_inline",
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "ruby" },
    },
    indent = { enable = true, disable = { "ruby" } },
  },
}
