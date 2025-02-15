-- Navigation between panes/windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.api.nvim_set_keymap("n", "<A-j>", "12jzz", {})
vim.api.nvim_set_keymap("n", "<A-k>", "12kzz", {})
vim.api.nvim_set_keymap("v", "<A-j>", "<C-d>zz", {})
vim.api.nvim_set_keymap("v", "<A-k>", "<C-u>zz", {})
vim.api.nvim_set_keymap("n", "<A-h>", "_", {})
vim.api.nvim_set_keymap("n", "<A-l>", "$", {})
vim.api.nvim_set_keymap("v", "<A-h>", "_", {})
vim.api.nvim_set_keymap("v", "<A-l>", "$", {})
-- Navigation between panes/windows

-- COPY PASTE
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', {})
vim.api.nvim_set_keymap("n", "d", '"ad', { noremap = true })
vim.api.nvim_set_keymap("v", "d", '"ad', { noremap = true })
vim.api.nvim_set_keymap("n", "dd", '"add', { noremap = true })
vim.api.nvim_set_keymap("n", "x", '"bx', { noremap = true })
vim.api.nvim_set_keymap("n", "c", '"_c', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>p", '"ap', { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>p", '"ap', { noremap = true })
-- COPY PASTE

-- Diagnostics
vim.keymap.set(
  "n",
  "<leader>n",
  '<cmd>lua vim.diagnostic.goto_next({ float =  { border = "single" }})<cr>'
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>q",
  '<cmd>lua vim.lsp.buf.code_action({ float = { border = "single" } })<CR>',
  {}
)
-- Diagnostics

-- clear highlight after pressing esc
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- center on % jump, this blocks the default tag pair match, but we can still use that is visual mode
vim.api.nvim_set_keymap("n", "%", "%zz", { noremap = true, silent = true })

-- comment jsx or tsx
vim.keymap.set(
  "n",
  "<leader>cc",
  "_i{/*<Space><Esc>$a<Space>*/}<Esc>",
  { desc = "Comment JSX" }
)
vim.keymap.set("n", "<leader>dc", "_xxxx$xxxx", { desc = "Comment JSX" })

-- copy whole file
vim.api.nvim_set_keymap("n", "<leader>cf", "ggVGy", { noremap = true })

vim.api.nvim_set_keymap("n", "ss", "<cmd>w<CR>", { noremap = true })

function Git_log_visual_selection()
  print("hello")
  local start_line = vim.fn.line("'<")
  local end_line = vim.fn.line("'>")
  local file_name = vim.fn.expand("%")
  local git_command =
    string.format(":term git log -L%d,%d:%s", start_line, end_line, file_name)
  vim.cmd(git_command)
end

-- Map the function to <leader>l in visual mode
vim.api.nvim_set_keymap(
  "v",
  "<leader>l",
  ":lua Git_log_visual_selection()<CR>",
  { noremap = true, silent = true }
)
