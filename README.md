# Nvim setup

Personal Neovim setup based and extends on 💤 [LazyVim](https://github.com/LazyVim/LazyVim).

- Refer to the [documentation](https://lazyvim.github.io/installation) to learn more.

## Markdown

Markdown with `marksman`, `markdownlint` and `markdown_inline`

- Start preview with `<leader>mp`
- Stop preview with `<leader>ms`
- Toggle preview with `<leader>mt`

```bash
apt update
```

## TODO

`mdx` syntax setup in tree-sitter in `./lua/plugins/treesitter.lua`
passing opts to configuration:

```lua
return {
  {
    opts = {},
    ...
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
```
