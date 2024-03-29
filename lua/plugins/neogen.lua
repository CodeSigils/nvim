local opts = { noremap = true, silent = true }

return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = true,
  -- Uncomment next line if you want to follow only stable versions
  -- version = "*"
  vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", opts),
}
