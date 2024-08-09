return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true
      }
    })
    vim.cmd("colorscheme duskfox")
  end
}
