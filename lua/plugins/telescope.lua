return {
  "nvim-telescope/telescope.nvim",
  enabled = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    defaults = {
      initial_mode = "normal",
      layout_strategy = "vertical",
      file_ignore_patterns = {
        ".git",
        "node_modules",
        "assets",
        "dist",
      },
    },
  },
  keys = {
    { "<leader>f", "<cmd>Telescope find_files<cr>",     desc = "Find file" },
    { "<leader>o", "<cmd>Telescope oldfiles<cr>",       desc = "Recently opened" },
    { "<leader>R", "<cmd>Telescope resume<cr>",         desc = "Resume last search" },
    { "<leader>b", "<cmd>Telescope buffers<cr>",        desc = "List buffers" },
    { "<leader>j", "<cmd>Telescope jumplist<cr>",       desc = "Jumplist" },
    { "<leader>/", "<cmd>Telescope live_grep<cr>",      desc = "Grep string" },
    { "<leader>Y", "<cmd>Telescope search_history<cr>", desc = "Search history" },
    { "<leader>m", "<cmd>Telescope marks<cr>",          desc = "Marks" },
  },
}
