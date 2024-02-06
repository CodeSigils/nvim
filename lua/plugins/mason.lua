-- add any tools you want to have installed below
return {
  "williamboman/mason.nvim",
  event = { "BufReadPre" },
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "biome",
      "css-lsp",
      "flake8",
      "goimports",
      "html-lsp",
      "prettier",
      "prettierd",
      "graphql-language-service-cli",
      "luacheck",
      "marksman",
      "markdownlint",
      "stylua",
      "shellcheck",
      "shfmt",
      "tailwindcss-language-server",
      "typescript-language-server",
      "yaml-language-server",
      "yamlfmt",
    })
  end,
}
