return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local tb = require("telescope.builtin")
    vim.api.nvim_set_keymap("n", "<leader>tt", "<CMD>Themery<CR>", { desc = "Change theme" })
    vim.api.nvim_set_keymap("n", "<leader>ff", "<CMD>Telescope smart_open<CR>", { desc = "Find file" })
    vim.api.nvim_set_keymap("n", "<leader>sg", "<CMD>Telescope live_grep<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>sk", "<CMD>Telescope keymaps<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>s.", "<CMD>Telescope oldfiles<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader><leader>", "<CMD>Telescope buffers<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>sr", "<CMD>Telescope resume<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>sw", "<CMD>Telescope grep_string<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>sh", "<CMD>Telescope help_tags<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>sd", "<CMD>Telescope diagnostics<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>sn", "", {
      callback = function()
        tb.find_files({ cwd = vim.fn.stdpath("config") })
      end,
      desc = "Search in config",
    })
    vim.api.nvim_set_keymap("n", "<leader>/", "", {
      callback = function()
        tb.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
          winblend = 10,
          previewer = false,
        }))
      end,
      desc = "Fuzzy find in buffer",
    })
  end,
}
