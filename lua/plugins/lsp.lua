return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      astro = {},
      bashls = {},
      cssls = {},
      marksman = {},
      emmet_ls = {
        filetypes = {
          "html",
          "typescriptreact",
          "javascriptreact",
          "css",
          "sass",
          "scss",
          "svelte",
          "less",
          "javascript",
          "typescript",
          "markdown",
          "ejs",
        },
      },
      init_options = {
        html = {
          options = {
            -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L26
            ["bem.enabled"] = true,
          },
        },
      },
    },
  },
}
