local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    require("config.plugins.zenmode"),
    require("config.plugins.telescope"),
    require("config.plugins.treesitter"),
    require("config.plugins.lspconfig"),
    -- require("config.plugins.neo-tree"),
    require("config.plugins.oil"),
    require("config.plugins.colorscheme"),
    require("config.plugins.autocomplete"),
    require("config.plugins.autoformat"),
    require("config.plugins.dashboard"),
    "tpope/vim-sleuth", -- INFO: auto tab space
    require("config.plugins.mini"),
    require("config.plugins.markdown-viewer"),
    require("config.plugins.todo-comments"),
    require("config.plugins.harpoon"),
    require("config.plugins.lualine"),
    require("config.plugins.tailwind"),
    require("config.plugins.autoclose-tags"),
    require("config.plugins.autoclose-brackets"),
    require("config.plugins.multicursor"),
    -- plugin below is used for notifications, but has a lot of problems
    -- require("config.plugins.noice"),
    require("config.plugins.telescope-undo"),
  },
  install = { colorscheme = { "habamax" } },
  checker = { enabled = true },
})
