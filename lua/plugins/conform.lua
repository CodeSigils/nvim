return {
  "stevearc/conform.nvim",
  -- :help conform-formatters
  opts = function(_, opts)
    opts.formatters_by_ft = {
      lua = { "stylua" },
      go = { "goimports" },
      python = { "black" },
      ---- Use a sub-list to run only the first available formatter
      javascript = { { "biome", "prettierd", "prettier" } },
    }
  end,
}
