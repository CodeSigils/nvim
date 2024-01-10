-- add any tools you want to have installed below
return {
  "williamboman/mason.nvim",
  event = "BufReadPre",
  dependencies = "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "flake8",
      "graphql-language-service-cli",
      "html-lsp",
      "htmlhint",
      "json-lsp",
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
