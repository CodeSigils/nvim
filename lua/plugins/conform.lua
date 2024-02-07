return {
  "stevearc/conform.nvim",
  -- :help conform-formatters
  opts = function(_, opts)
    opts.formatters_by_ft = {
      ["lua"] = { "stylua" },
      ["go"] = { "goimports" },
      ["python"] = { "black" },
      ---- Use a sub-list to run only the first available formatter
      ["javascript"] = { { "biome", "prettierd", "prettier" } },
      ["javascriptreact"] = { { "biome", "prettierd", "prettier" } },
      ["typescript"] = { { "biome", "prettier", "prettierd" } },
      ["typescriptreact"] = { { "biome", "prettier", "prettierd" } },
      ["css"] = { { "biome", "prettierd", "prettier" } },
      ["scss"] = { { "biome", "prettierd", "prettier" } },
      ["html"] = { { "biome", "prettierd", "prettier" } },
      ["json"] = { { "biome", "prettierd", "prettier" } },
      ["jsonc"] = { { "biome", "prettierd", "prettier" } },
      ["svelte"] = { { "biome", "prettier", "prettierd" } },
      ["vue"] = { { "biome", "prettier", "prettierd" } },
      ["markdown"] = { { "biome", "prettier", "prettierd" } },
      ["markdown.mdx"] = { { "biome", "prettier", "prettierd" } },
      ["graphql"] = { { "biome", "prettier", "prettierd" } },
    }
  end,
}
