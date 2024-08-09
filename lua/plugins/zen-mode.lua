return {
  "folke/zen-mode.nvim",
  config = function()
    require("utils").add_keymaps({
      { "<leader>z", "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
    })
  end,
}
