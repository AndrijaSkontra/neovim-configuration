local lualine = require("lualine")
lualine.setup({
  options = { theme = "gruvbox" }, --  INFO: SET THEME HERE
  sections = {
    lualine_x = {
      {
        require("noice").api.statusline.mode.get,
        cond = require("noice").api.statusline.mode.has,
        color = { fg = "#ff9e64" },
      },
    },
  },
})

vim.opt.cmdheight = 0 --  WARN: NEED THIS SO THE LINE IS ON THE BOTTOM OF SCREEN
