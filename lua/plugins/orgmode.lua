local org_path = function(path)
  local org_directory = "~/notes/org"
  return ("%s/%s"):format(org_directory, path)
end

local orgmode_config = {
  org_agenda_files = org_path("**/*"),
  org_default_notes_file = org_path("refile.org"),
  org_agenda_text_search_extra_files = { "agenda-archives" },
  org_todo_keywords = { "TODO(t)", "PROGRESS(p)", "|", "DONE(d)", "REJECTED(r)" },
}

return {
  "nvim-orgmode/orgmode",
  dependencies = {
    { "nvim-treesitter/nvim-treesitter", lazy = true },
    -- { "akinsho/org-bullets.nvim", lazy = true },
    -- { "dhruvasagar/vim-table-mode", lazy = true }
  },
  event = "VeryLazy",
  config = function()
    -- Load treesitter grammar for org
    require("orgmode").setup_ts_grammar()

    -- Setup treesitter - better setup in ./treesitter.lua
    -- require("nvim-treesitter.configs").setup({
    --   highlight = {
    --     enable = true,
    --     additional_vim_regex_highlighting = { "org" },
    --   },
    --   ensure_installed = { "org" },
    -- })

    -- Setup orgmode
    require("orgmode").setup(orgmode_config)

    -- require("org-bullets").setup({
    --   concealcursor = true,
    --   symbols = {
    --     checkboxes = {
    --       half = { "", "OrgTSCheckboxHalfChecked" },
    --       done = { "✓", "OrgDone" },
    --       todo = { " ", "OrgTODO" },
    --     },
    --   },
    -- })
  end,
}
