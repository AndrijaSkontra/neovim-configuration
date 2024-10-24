local lualine = require("lualine")
lualine.setup({
  options = { theme = "horizon" }, --  INFO: SET THEME HERE
})

vim.opt.cmdheight = 0 --  WARN: NEED THIS SO THE LINE IS ON THE BOTTOM OF SCREEN
