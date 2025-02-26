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

vim.api.nvim_create_augroup("DprintFormat", { clear = true })

vim.api.nvim_create_autocmd("BufWritePre", {
  group = "DprintFormat",
  pattern = "*.vto",
  callback = function()
    local bufnr = vim.api.nvim_get_current_buf()
    local filepath = vim.api.nvim_buf_get_name(bufnr)
    local result = vim.fn.system({ "dprint", "fmt", filepath })

    if vim.v.shell_error ~= 0 then
      vim.notify("dprint formatting failed: " .. result, vim.log.levels.ERROR)
    else
      -- Save current cursor position
      local cursor_pos = vim.api.nvim_win_get_cursor(0)
      -- Reload the buffer
      vim.cmd("edit!")
      -- Restore cursor position
      vim.api.nvim_win_set_cursor(0, cursor_pos)
    end
  end,
})
