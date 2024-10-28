return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "echasnovski/mini.icons", opts = {} },
  opts = {
    options = {
      numbers = "none", -- You can set this to "both" or "ordinal" for buffer numbers if needed
      close_command = "bdelete! %d", -- Command to close a buffer
      right_mouse_command = "bdelete! %d", -- Command for right-click close
      left_mouse_command = "buffer %d", -- Command to switch to a buffer
      middle_mouse_command = nil, -- No action for middle click
      indicator_icon = "▎", -- Indicator for current buffer
      buffer_close_icon = "x", -- Icon for closing a buffer
      modified_icon = "●", -- Icon for modified buffers
      close_icon = "", -- Icon for closed buffers
      offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "center", separator = true } }, -- Adjust offset for other plugins like NvimTree
      max_length = 10, -- Maximum number of buffers displayed
      sort_by = "insert_after_current", -- Order buffers as specified
    },
  },
}
