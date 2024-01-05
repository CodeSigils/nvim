return {
  "stevearc/oil.nvim",
  lazy = false,
  opts = {
    -- -- Buffer-local options to use for oil buffers
    buf_options = {
      buflisted = false,
      bufhidden = "hide",
    },
    default_file_explorer = false,
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
  },
}
