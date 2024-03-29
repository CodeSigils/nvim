# Nvim setup

Personal Neovim setup based and extends on 💤 [LazyVim](https://github.com/LazyVim/LazyVim).

- Refer to the [documentation](https://lazyvim.github.io/installation) to learn more.

## Pre-installation

Remove or make a backup current Neovim directories:

```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

## Markdown and mdx

Markdown with `marksman`, `markdownlint` and `markdown_inline`

- Start preview with `<leader>mp`
- Stop preview with `<leader>ms`
- Toggle preview with `<leader>mt`

## TODO

`mdx` syntax setup in tree-sitter in `./lua/plugins/treesitter.lua`
passing opts to configuration is only working on a basic level.
Investigate:

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
        filename = {
        },
        pattern = {
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
```
