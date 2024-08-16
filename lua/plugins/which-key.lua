return {
  "folke/which-key.nvim",
  opts = {
    icons = {
      mappings = false,
    },
    replace = {
      ["<leader>"] = "space",
      ["<space>"] = "space",
      ["<cr>"] = "enter",
    },
  },
  config = function()
    require("utils").set_options({
      timeout = true,
      timeoutlen = 500,
    })
  end,
}
