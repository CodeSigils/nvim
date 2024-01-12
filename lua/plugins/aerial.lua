return {
  "stevearc/aerial.nvim",
  event = "LazyFile",
  opts = {
    backends = {
      "treesitter",
      "bash",
      "c",
      "html",
      "javascript",
      "lsp",
      "json",
      "lua",
      "markdown",
      "man",
      "org",
      "tsx",
      "typescript",
      "vimdoc",
      "yaml",
    },
    default_direction = "prefer_right",

    -- Disable aerial on files with this many lines
    disable_max_lines = 10000,

    -- Disable aerial on files this size or larger (in bytes)
    disable_max_size = 2000000, -- Default 2MB

    -- A list of all symbols to display. Set to false to display all symbols.
    -- This can be a filetype map (see :help aerial-filetype-map)
    -- To see all available values, see :help SymbolKind
    filter_kind = {
      "Class",
      "Constructor",
      "Enum",
      "Function",
      "Interface",
      "Module",
      "Method",
      "Struct",
    },
  },
  keys = {
    { "<leader>j", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
  },
}
