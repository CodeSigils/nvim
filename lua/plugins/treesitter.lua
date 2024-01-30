-- add more treesitter parsers
return {
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "astro",
      "bash",
      "css",
      "dockerfile",
      "gitignore",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "org",
      "python",
      "query",
      "regex",
      "tsx",
      "typescript",
      "yaml",
      "vim",
      "vue",
      "yaml",
    },
    -- Setting additional_vim_regex_highlighting to true will run
    -- `:h syntax` and tree-sitter at the same time with a preformance
    -- impact. instead of true it can also be a list of languages
    highlight = { enable = true, additional_vim_regex_highlighting = { "org" } },
    indent = { enable = true },
    incremental_selection = {
      enable = true,
      keys = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  },

  -- --- since `vim.tbl_deep_extend`, can only merge tables
  -- --- and not lists, the code above would overwrite `ensure_installed`
  -- --- with the new value.
  -- --- If you'd rather extend the default config, use the code
  -- --- below instead:

  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   build = ":TSUpdate",
  --   event = { "BufReadPre", "BufNewFile" },
  --   opts = function(_, opts)
  --     -- add tsx and treesitter
  --     vim.list_extend(opts.ensure_installed, {
  --       "css",
  --       "dockerfile",
  --       "html",
  --       "gitignore",
  --       "tsx",
  --       "typescript",
  --     })
  --   end,
  -- },
}
