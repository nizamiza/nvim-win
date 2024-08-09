return {
  "stevearc/oil.nvim",
  config = function()
    local oil = require("oil")

    oil.setup({
      float = {
        override = function(conf)
          conf.row = 0
          conf.col = 9999
          conf.width = 48
          conf.height = 16

          return conf
        end,
      },
    })

    require("utils").add_keymaps({
      { "<leader>e", "<cmd>Oil<cr>", desc = "Open Oil in parent directory" },
      { "<leader>i", oil.open_float, desc = "Open Oil in float" },
    })
  end,
}
