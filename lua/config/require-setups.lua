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

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<A-u>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

-- require("nvim-tree").setup({
--   sort = {
--     sorter = "case_sensitive",
--   },
--   view = {
--     width = 30,
--   },
--   renderer = {
--     group_empty = true,
--   },
--   filters = {
--     dotfiles = true,
--   },
-- })

require("oil").setup()

require("tailwind-tools").setup({})
