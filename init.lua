require("config")

require("mason").setup({})
require("mason-lspconfig").setup({})
require("lspconfig").lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})
require("lspconfig").jsonls.setup({})
require("lspconfig").ts_ls.setup({})

vim.opt.termguicolors = true
vim.cmd.colorscheme("melange")
