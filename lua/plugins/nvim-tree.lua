local M = {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
}

-- return {

-- config = function()
--   local nvimtree = require("nvim-tree")
--   nvimtree.setup({
--     view = {
--       width = 20,
--       relativenumber = true,
--     },
--     filters = {
--       custom = { ".DS_Store" },
--       dotfiles = true,
--     },
--     git = {
--       ignore = false,
--     },
--   })
-- set keymaps
-- vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
-- vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
-- vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
-- vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
-- end,
-- }

-- function M.config()
--   require("nvim-tree").setup({
--     view = {
--       width = 30,
--       relativenumber = true,
--     },
--     filters = {
--       custom = { ".DS_Store" },
--       dotfiles = true,
--     },
--   })
-- end

return M
