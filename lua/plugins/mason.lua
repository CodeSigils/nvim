-- add any tools you want to have installed below
return {
  "williamboman/mason.nvim",
  event = "BufReadPre",
  dependencies = "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "biome",
      "flake8",
      "goimports",
      "graphql-language-service-cli",
      "html-lsp",
      "htmlhint",
      "json-lsp",
      "marksman",
      "markdownlint",
      "stylua",
      "shellcheck",
      "shfmt",
      "tailwindcss-language-server",
      "typescript-language-server",
      "yaml-language-server",
      "yamlfix",
    },
    automatic_installation = true,
  },
}
