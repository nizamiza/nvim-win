return {
  "stevearc/oil.nvim",
  config = function()
    require("utils").add_keymaps({
      { "<leader>e", "<cmd>Oil<cr>", desc = "Open Oil in parent directory" },
    })
  end,
}
