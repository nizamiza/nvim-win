return {
  "kdheepak/lazygit.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  init = function()
    require("utils").register_keymaps({
      g = {
        name = "git",
        l = { "<cmd>LazyGit<cr>", "Open LazyGit" },
      },
    }, { prefix = "<leader>" })
  end
}
