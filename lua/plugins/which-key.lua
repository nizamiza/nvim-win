return {
  "folke/which-key.nvim",
  config = function()
    require("utils").set_options({
      timeout = true,
      timeoutlen = 500,
    })

    require("which-key").setup({
      icons = {
        mappings = false,
      },
      replace = {
        ["<leader>"] = "space",
        ["<space>"] = "space",
        ["<cr>"] = "enter",
      },
    })
  end,
}
