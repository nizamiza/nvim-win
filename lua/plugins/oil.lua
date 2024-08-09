return {
  "stevearc/oil.nvim",
  config = function()
    require("utils").register_keymaps({
      e = { "<cmd>Oil<cr>", "Open Oil in parent directory" },
    }, { prefix = "<leader>" })
  end
}
