local colorscheme = require("plugins.colorscheme")

-- the opts function can also be used to change the default opts:
--
-- return {
--   "nvim-lualine/lualine.nvim",
--   event = "VeryLazy",
--   opts = function(_, opts)
--     table.insert(opts.sections.lualine_x, "😄")
--   end,
-- },

-- or you can return new options to override all the defaults
return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  -- lazy = false,
  -- --[[add your custom lualine config here]]
  opts = function(_, opts)
    opts.options = {
      icons_enabled = true,
      theme = colorscheme.name,
      component_separators = { left = "|", right = "|" },
      section_separators = { left = "", right = "" },
    }
  end,
  -- opts = {
  --   options = {
  --     icons_enabled = true,
  --     theme = "auto",
  --     component_separators = { left = "|", right = "|" },
  --     section_separators = { left = "", right = "" },
  --   },
  -- },
}
