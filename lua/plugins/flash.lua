return {
  "folke/flash.nvim",
  opts = {},
  keys = {
    -- stylua: ignore
    { "s",     "<cmd>lua require('flash').jump()<cr>",              desc = "Flash",               mode = { "n", "x", "o" } },
    -- stylua: ignore
    { "S",     "<cmd>lua require('flash').treesitter()<cr>",        desc = "Flash Treesitter",    mode = { "n", "x", "o" } },
    -- stylua: ignore
    { "r",     "<cmd>lua require('flash').remote()<cr>",            desc = "Remote Flash",        mode = "o" },
    -- stylua: ignore
    { "R",     "<cmd>lua require('flash').treesitter_search()<cr>", desc = "Treesitter search",   mode = { "x", "o" } },
    -- stylua: ignore
    { "<c-s>", "<cmd>lua require('flash').toggle()<cr>",            desc = "Toggle Flash search", mode = "c" },
  },
}
