return {
  "stevearc/oil.nvim",
  lazy = false,
  opts = {
    float = {
      override = function(conf)
        conf.row = 0
        conf.col = 9999
        conf.width = 48
        conf.height = 16

        return conf
      end,
    },
  },
  keys = {
    { "<leader>e", "<cmd>lua require('oil').open_float()<cr>", desc = "Open Oil in float" },
    { "<leader>E", "<cmd>Oil<cr>",                             desc = "Open Oil in parent directory" },
  },
}
