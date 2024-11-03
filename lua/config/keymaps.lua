-- Navigation between panes/windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.api.nvim_set_keymap("n", "<A-j>", "<C-d>zz", {})
vim.api.nvim_set_keymap("n", "<A-k>", "<C-u>zz", {})
vim.api.nvim_set_keymap("v", "<A-j>", "<C-d>zz", {})
vim.api.nvim_set_keymap("v", "<A-k>", "<C-u>zz", {})
vim.api.nvim_set_keymap("n", "<A-h>", "_", {})
vim.api.nvim_set_keymap("n", "<A-l>", "$", {})
vim.api.nvim_set_keymap("v", "<A-h>", "_", {})
vim.api.nvim_set_keymap("v", "<A-l>", "$", {})
-- Navigation end

-- COPY PASTE start
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', {})
vim.api.nvim_set_keymap("n", "d", '"ad', { noremap = true })
vim.api.nvim_set_keymap("v", "d", '"ad', { noremap = true })
vim.api.nvim_set_keymap("n", "dd", '"add', { noremap = true })
vim.api.nvim_set_keymap("n", "x", '"bx', { noremap = true })
vim.api.nvim_set_keymap("n", "c", '"_c', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>p", '"ap', { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>p", '"ap', { noremap = true })
-- COPY PASTE end
--
-- Diagnostics start
vim.keymap.set("n", "<leader>n", '<cmd>lua vim.diagnostic.goto_next({ float =  { border = "single" }})<CR>')
-- vim.keymap.set("n", "<leader>q", "<cmd>lua vim.lsp.buf.code_action<cr>", { desc = "Code Action aka quickfix" })

-- Diagnostics end

-- clear highlight after pressing esc
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- center on % jump
-- this blocks the default tag pair match, but we can still use that is visual mode
vim.api.nvim_set_keymap("n", "%", "%zz", { noremap = true, silent = true })

-- oil
vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- jump to previous buffer
vim.keymap.set("n", "<C-p>", "<CMD>bp<CR>", { desc = "Jump to previous buffer" })

-- jump to next buffer
vim.keymap.set("n", "<C-n>", "<CMD>bn<CR>", { desc = "Jump to next buffer" })

-- theme switcher
-- vim.keymap.set("n", "<leader>tt", "<CMD>Themery<CR>", { desc = "Switch theme" })
vim.keymap.set("n", "<leader>cc", "_i{/*<Space><Esc>$a<Space>*/}<Esc>", { desc = "Comment JSX" })
