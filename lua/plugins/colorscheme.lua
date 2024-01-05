local schemes = {
  gruvbox = {
    repo = "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    opts = {},
  },
  tokyonight = {
    repo = "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = require("plugins.colorschemes.tokyonight"),
  },
  kanagawa = {
    repo = "rebelot/kanagawa.nvim",
    name = "kanagawa",
    opts = require("plugins.colorschemes.kanagawa"),
  },
  catppuccin = {
    repo = "catppuccin/nvim",
    name = "catppuccin",
    opts = require("plugins.colorschemes.catppuccin"),
  },
}

-- Change theme here
---@options 'gruvbox' | 'tokyonight' | 'kanagawa' | 'catppuccin'
local theme = schemes.catppuccin

return {
  {
    theme.repo,
    lazy = true,
    priority = 1000,
    name = theme.name,
    opts = theme.opts,
  },
  -- Configure LazyVim to load the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = theme.name,
      theme.opts,
    },
  },
}
