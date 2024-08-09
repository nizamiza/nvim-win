return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = "vertical",
        file_ignore_patterns = {
          ".git",
          "node_modules",
          "assets",
          "dist",
        },
      },
    })

    require("utils").add_keymaps({
      { "<leader>f",  group = "file" },
      { "<leader>fp", "<cmd>Telescope find_files<cr>",                desc = "Find file" },
      { "<leader>fo", "<cmd>Telescope oldfiles<cr>",                  desc = "Recently opened" },
      { "<leader>fr", "<cmd>Telescope resume<cr>",                    desc = "Resume last search" },

      { "<leader>b",  group = "buffers" },
      { "<leader>bl", "<cmd>Telescope buffers<cr>",                   desc = "List buffers" },

      { "<leader>g",  group = "git" },
      { "<leader>gi", "<cmd>Telescope git_status<cr>",                desc = "Git status" },
      { "<leader>gc", "<cmd>Telescope git_commits<cr>",               desc = "Git commits" },
      { "<leader>gb", "<cmd>Telescope git_branches<cr>",              desc = "Git branches" },
      { "<leader>gs", "<cmd>Telescope git_stash<cr>",                 desc = "Git stash" },

      { "<leader>h",  group = "help" },
      { "<leader>ht", "<cmd>Telescope help_tags<cr>",                 desc = "Help tags" },
      { "<leader>hc", "<cmd>Telescope commands<cr>",                  desc = "Commands" },

      { "<leader>s",  group = "search" },
      { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search buffer" },
      { "<leader>sh", "<cmd>Telescope command_history<cr>",           desc = "Command history" },
      { "<leader>sm", "<cmd>Telescope marks<cr>",                     desc = "Marks" },
      { "<leader>sr", "<cmd>Telescope registers<cr>",                 desc = "Registers" },
      { "<leader>ss", "<cmd>Telescope search_history<cr>",            desc = "Search history" },
      { "<leader>sg", "<cmd>Telescope live_grep<cr>",                 desc = "Grep string" },
    })
  end,
}
