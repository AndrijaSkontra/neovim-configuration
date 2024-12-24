return {
  "tpope/vim-dadbod",
  dependencies = {
    {
      "kristijanhusak/vim-dadbod-ui",
      keys = {
        { "<leader>du", "<CMD>DBUIToggle<CR>", desc = "Toggle [D]ata[B]ase" },
      },
    },
  },
  init = function()
    vim.g.db_ui_use_nerd_fonts = 1
  end,
}
