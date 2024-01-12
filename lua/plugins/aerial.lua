return {
  "stevearc/aerial.nvim",
  event = "LazyFile",
  opts = {
    backends = { "treesitter", "lsp", "markdown", "man", "lua" },
    default_direction = "prefer_right",
  },
  keys = {
    { "<leader>j", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
  },
}