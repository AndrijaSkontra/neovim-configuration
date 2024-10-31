return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- this is required to show the @recording... for macro
    routes = {
      {
        view = "notify",
        filter = { event = "msg_showmode" },
      },
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}
