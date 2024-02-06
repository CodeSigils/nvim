local ensure_installed = {
  "astro",
  "bash",
  "c",
  "css",
  "dockerfile",
  "gitignore",
  "graphql",
  "html",
  "http",
  "javascript",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "org",
  "python",
  "query",
  "regex",
  "svelte",
  "scss",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "vue",
  "yaml",
}

local options = {
  -- add more treesitter parsers
  ensure_installed = ensure_installed,
  sync_install = false,
  auto_install = true,
  -- Setting additional_vim_regex_highlighting to true will run
  -- `:h syntax` and tree-sitter at the same time with a preformance
  -- impact. instead of true it can also be a list og languages
  highlight = {
    enable = true,
    disable = { "markdown" },
    additional_vim_regex_highlighting = { "org" },
  },

  indent = { enable = true },

  matchup = {
    enable = { "astro" },
    disable = { "lua" },
  },

  autotag = { enable = true },

  -- require('ts_context_commentstring').setup {} and set
  -- vim.g.skip_ts_context_commentstring_module = true to
  -- speed up loading instead.
  ts_context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },

  autopairs = { enable = true },

  incremental_selection = {
    enable = true,
    keys = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      scope_incremental = false,
      node_decremental = "<bs>",
    },
  },
  -- textobjects
  --https://www.lazyvim.org/plugins/treesitter#nvim-treesitter-textobjects
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["]f"] = "@function.outer",
        ["]c"] = "@class.outer",
        ["[f"] = "@function.inner",
        ["[c"] = "@class.inner",
        ["<leader>ic"] = { query = "@class.inner", desc = "Select body of a class" },
        ["<leader>is"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
      },
      selection_modes = {
        ["@parameter.outer"] = "v", --charwise
        ["@function.outer"] = "V", --linewise
        ["@class.outer"] = "<c-v>", --blockwise
      },
    },
    move = {
      enable = true,
      lookahead = true,
      goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer" },
      goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
      goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer" },
      goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" },
    },
  },
}

local M = {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      {
        "nvim-treesitter/nvim-treesitter-textobjects",
        event = "VeryLazy",
      },
      {
        "JoosepAlviste/nvim-ts-context-commentstring",
        event = "VeryLazy",
      },
      {
        "windwp/nvim-ts-autotag",
        event = "VeryLazy",
      },
      {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
      },
    },
    opts = options,
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "markdown.mdx",
        },
        filename = {},
        pattern = {},
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}

return M
