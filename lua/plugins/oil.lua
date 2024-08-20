return {
  "stevearc/oil.nvim",
  lazy = false,
  keys = {
    { "<leader>e", "<cmd>lua require('oil').toggle_float()<cr>", desc = "Open Oil in float" },
    { "<leader>E", "<cmd>Oil<cr>",                               desc = "Open Oil in parent directory" },
  },
  config = function()
    require("oil").setup({
      float = {
        override = function(config)
          config.row = 0
          config.col = 9999
          config.width = 48
          config.height = 16

          return config
        end,
      },
    })

    vim.cmd([[
      augroup oil_escape
        autocmd FileType oil nnoremap <buffer> <esc> <cmd>lua require('oil').close()<cr>
      augroup END
    ]])
  end,
}
