-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- last yank stays in the register
map("x", "p", [["_dP]])

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- windows
map("n", "<leader>ww", "<C-W>p", { desc = "Other window", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
map("n", "<leader>wo", "<C-W>o", { desc = "Delete other windows", remap = true })
map("n", "<leader>w-", "<C-W>s", { desc = "Split window below", remap = true })
map("n", "<leader>w|", "<C-W>v", { desc = "Split window right", remap = true })
map("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
map("n", "<leader>|", "<C-W>v", { desc = "Split window right", remap = true })

-- tailwind utils
map({ "n", "x" }, "j", "gj")
map({ "n", "x" }, "k", "gk")

map({ "n", "x" }, "g.", "<cmd>Browse<cr>", { desc = "Browse URL", remap = true })

-- Markdown preview
map({ "n", "x" }, "mp", "<cmd>MarkdownPreview<cr>", { desc = "Markdown preview" })
map({ "n", "x" }, "mp", "<cmd>MarkdownPreviewStop<cr>", { desc = "Markdown preview" })
map({ "n", "x" }, "mt", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Markdown preview" })

-- zen mode: true-zen plugin
-- map({ "n" }, "<leader>zn", "<cmd>TZNarrow<cr>", { desc = "Zen narrow" })
-- map({ "v" }, "<leader>zn", "<cmd>'<,'>TZNarrow<cr>", { desc = "Zen narrow left-right" })
-- map({ "n" }, "<leader>zf", "<cmd>TZFocus<cr>", { desc = "Zen focus" })
-- map({ "n" }, "<leader>zm", "<cmd>TZMinimalist<cr>", { desc = "Zen minimalist" })
-- map({ "n" }, "<leader>za", "<cmd>TZAtaraxis<cr>", { desc = "Zen ataraxis" })
