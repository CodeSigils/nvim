-- https://github.com/m4xshen/hardtime.nvim
-- Disable with :Hardtime disable
return {
  "m4xshen/hardtime.nvim",
  command = "Hardtime",
  event = "BufEnter",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
  },
  opts = {},
}
