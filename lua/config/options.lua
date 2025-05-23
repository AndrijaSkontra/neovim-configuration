vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus"
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
-- vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 12

-- Set highlight on search
vim.opt.hlsearch = true

vim.opt.autowriteall = true

vim.diagnostic.config({
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,

  -- virtual_lines = {
  --   current_line = true,
  -- },
})

vim.opt.termguicolors = true

vim.opt.colorcolumn = "95"
vim.opt.swapfile = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

vim.o.winborder = "single"
