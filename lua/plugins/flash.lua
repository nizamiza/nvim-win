return {
  "folke/flash.nvim",
  opts = {},
  keys = {
    {
      "s",
      "<cmd>lua require('flash').jump()<cr>",
      desc = "Flash",
      mode = { "n", "x", "o" },
    },
    {
      "S",
      "<cmd>lua require('flash').treesitter()<cr>",
      desc = "Flash Treesitter",
      mode = { "n", "x", "o" },
    },
    { "r", "<cmd>lua require('flash').remote()<cr>", desc = "Remote Flash", mode = "o" },
    { "R", "<cmd>lua require('flash').treesitter_search()<cr>", desc = "Treesitter search", mode = { "x", "o" } },
    { "<c-s>", "<cmd>lua require('flash').toggle()<cr>", desc = "Toggle Flash search", mode = "c" },
  },
}
