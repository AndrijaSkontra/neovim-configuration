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

vim.api.nvim_set_keymap(
  "v",
  "<leader>l",
  ":lua Git_log_visual_selection()<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>rc", -- Leader key + rc (for remove comments)
  ":%s/\\/\\/.*$//g<CR>", -- Execute the substitution command
  { noremap = true, silent = true, desc = "Remove // comments" }
)

-- Variable to track the command pane
local command_pane_bufnr = nil
local command_pane_winid = nil

local function run_project_command()
  -- Check if .command file exists
  local command_file = ".command"
  if vim.fn.filereadable(command_file) == 0 then
    print("No .command file found in current directory")
    return
  end

  -- Read the command from .command file
  local file = io.open(command_file, "r")
  if not file then
    print("Could not open .command file")
    return
  end

  local command = file:read("*line") -- Read first line
  file:close()

  -- Trim whitespace
  command = command:match("^%s*(.-)%s*$")

  if command == "" then
    print(".command file is empty")
    return
  end

  -- Check if command pane exists and is valid
  if command_pane_winid and vim.api.nvim_win_is_valid(command_pane_winid) then
    -- Close the existing pane
    vim.api.nvim_win_close(command_pane_winid, false)
    command_pane_winid = nil
    command_pane_bufnr = nil
  end

  -- Create a vertical split
  vim.cmd("vsplit")

  -- Move to the new split (right window)
  vim.cmd("wincmd l")

  -- Store the window ID before opening terminal
  command_pane_winid = vim.api.nvim_get_current_win()

  -- Open a terminal and run the command
  vim.cmd("terminal " .. command)

  -- Store the buffer number
  command_pane_bufnr = vim.api.nvim_get_current_buf()

  -- Set up an autocmd to clear our tracking variables when the window is closed
  vim.api.nvim_create_autocmd("WinClosed", {
    pattern = tostring(command_pane_winid),
    callback = function()
      if command_pane_winid == tonumber(vim.fn.expand("<amatch>")) then
        command_pane_winid = nil
        command_pane_bufnr = nil
      end
    end,
    once = true,
  })
end

-- Create the keymap
vim.keymap.set("n", "<leader>!", run_project_command, {
  desc = "Toggle command pane from .command file in vertical split",
  silent = true,
})
