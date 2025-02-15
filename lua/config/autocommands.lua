-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Don't show lazy window on nvim enter (of updates)
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("lazy").update({
      show = false,
    })
  end,
})

-- Makes sure that vim help file will take the whole screen
vim.api.nvim_create_autocmd("FileType", {
  pattern = "help",
  callback = function()
    vim.bo.readonly = true
    vim.cmd("only")
  end,
  group = vim.api.nvim_create_augroup("vimdoc_autocmd", { clear = true }),
})

-- to sort tailwind classes
-- vim.cmd("TailwindSort")
--
