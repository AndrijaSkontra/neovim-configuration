return {
  "matbme/JABS.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    sort_mru = true,
    split_filename = true,
    split_filename_path_width = 20,
    position = { "center", "top" },
    width = 55,
    height = 8,
    border = "rounded",
    symbols = {
      current = "C",
      split = "S",
      alternate = "A",
      hidden = "H",
      locked = "L",
      ro = "R",
      edited = "E",
      terminal_symbol = ">_",
    },
  },
  keys = {
    { "<leader>b", "<cmd>JABSOpen<CR>", desc = "Open JABS Buffer Switcher" },
  },
}
