return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "kyazdani42/nvim-web-devicons" },
    config = function()
      require("neo-tree").setup({
        filesystem = { hijack_netrw = true },
        buffers = {
          show_unloaded = true, -- Show all buffers
          follow_current_file = true, -- Keep the current file in focus
        },
        window = {
          position = "left", -- Set the sidebar to the left
          width = 30, -- Set the width of the sidebar
        },
      })
    end,
  },
}
