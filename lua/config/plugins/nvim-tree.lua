return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 40,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    },
    keys = {
      {
        "<leader>?",
        "<cmd>NvimTreeOpen<cr>",
        desc = "Open nvim tree",
      },
    },
  },
}
