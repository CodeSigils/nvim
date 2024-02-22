return {
  "telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  config = function()
    local actions = require("telescope.actions")

    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            ["<C-x>"] = actions.delete_buffer,
          },
        },
        file_ignore_patterns = {
          "node_modules",
          "yarn.lock",
          ".git",
          ".sl",
          "_build",
          ".next",
        },
        hidden = true,
      },
      pickers = {
        find_files = {
          theme = "dropdown",
        },
        oldfiles = {
          theme = "dropdown",
          previewer = false,
        },
        git_files = {
          theme = "dropdown",
        },
        grep_string = {
          theme = "dropdown",
        },
        live_grep = {
          theme = "dropdown",
          previewer = false,
        },
        find_buffers = {
          theme = "dropdown",
          previewer = false,
        },
        keymaps = {
          theme = "dropdown",
        },
      },
    })

    -- Enable telescope fzf native, if installed
    pcall(require("telescope").load_extension, "fzf")
  end,

  opts = function()
    return {
      keys = {
        vim.keymap.set({ "n" }, "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Telescope keymaps" }),
      },
    }
  end,
}
