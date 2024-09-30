-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
--
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "javascript",
--   callback = function()
--     vim.bo.shiftwidth = 2 -- Number of spaces for each indent
--     vim.bo.tabstop = 2 -- Number of spaces a tab counts for
--     vim.bo.softtabstop = 2 -- Number of spaces for editing (e.g., inserting a tab)
--     vim.bo.expandtab = true -- Use spaces instead of tabs
--   end,
-- })
