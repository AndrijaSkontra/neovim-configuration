-- Just a reminder 📝:
-- This will execute/require /lua/config/options.lua file
-- Then /lua/config/autocommands.lua file and so on...
require("config.options")
require("config.autocommands")
require("config.lazy")
require("config.basic-keymaps")
require("config.harpoon-config")
require("config.lualine-config")

local capabilities = {
  textDocument = {
    foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    },
  },
}

capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

vim.lsp.config("*", {
  capabilities = capabilities,
  root_markers = { ".git" },
})
