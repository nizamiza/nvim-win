return {
  "folke/which-key.nvim",
  config = function()
    require("utils").set_options({
      timeout = true,
      timeoutlen = 500,
    })

    require("which-key").setup({
      key_labels = {
        ["<leader>"] = "SPC",
        ["<space>"] = "SPC",
        ["<cr>"] = "RET"
      }
    })
  end
}
