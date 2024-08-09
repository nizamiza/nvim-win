return {
  "folke/zen-mode.nvim",
  config = function()
    require("utils").register_keymaps({
      z = { "<cmd>ZenMode<cr>", "Toggle Zen Mode" },
    }, { prefix = "<leader>" })
  end
}
