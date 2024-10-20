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

-- -- Tailwind setup to sort on save
-- local tailwind_filetypes = {
--   "javascriptreact",
--   "typescriptreact",
--   "javascript",
--   "typescript",
--   "html",
--   "css",
--   "scss",
--   "less",
--   "svelte",
--   "vue",
--   "astro",
-- }
--
-- -- Function to check if the tailwindcss LSP client is attached to the buffer
-- local function is_tailwindcss_lsp_attached(bufnr)
--   local clients = vim.lsp.get_clients({ bufnr = bufnr })
--   for _, client in pairs(clients) do
--     if client.name == "tailwindcss" then
--       return true
--     end
--   end
--   return false
-- end
--
-- -- Create an autocmd that triggers on buffer write
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*",
--   callback = function()
--     local bufnr = vim.api.nvim_get_current_buf()
--     -- Get the current buffer's filetype
--     local ft = vim.bo.filetype
--     -- Check if the filetype is in the list
--     local should_run = false
--     for _, v in ipairs(tailwind_filetypes) do
--       if ft == v then
--         should_run = true
--         break
--       end
--     end
--     -- Check if tailwindcss LSP is attached
--     if should_run and is_tailwindcss_lsp_attached(bufnr) then
--       vim.cmd("TailwindSort")
--     end
--   end,
-- })
