-- hhtps://github.com/stevearc/dressing.nvim
-- better vim.ui
--
local opts = {
  input = {
    trim_prompt = false,
    -- Set to `false` to disable
    mappings = {
      n = {
        ["<Esc>"] = "Close",
        ["<CR>"] = "Confirm",
      },
      i = {
        ["<C-c>"] = "Close",
        ["<CR>"] = "Confirm",
        ["<C-k>"] = "HistoryPrev",
        ["<C-j>"] = "HistoryNext",
      },
    },
    override = function(conf)
      -- This is the config that will be passed to nvim_open_win.
      -- Change values here to customize the layout
      return conf
    end,

    -- see :help dressing_get_config
    get_config = nil,
  },
  select = {
    nui = {
      position = "60%",
      size = nil,
    },
  },
}

return {
  "stevearc/dressing.nvim",
  config = function()
    require("dressing").setup(opts)
  end,
}
