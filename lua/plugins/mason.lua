-- add any tools you want to have installed below
return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "flake8",
      "graphql-language-service-cli",
      "html-lsp",
      "json-lsp",
      "stylua",
      "shellcheck",
      "shfmt",
      "tailwindcss-language-server",
      "typescript-language-server",
    },
  },
}
