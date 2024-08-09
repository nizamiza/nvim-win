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
    require("utils").add_keymaps({
      { "<leader>g",  group = "git" },
      { "<leader>gl", "<cmd>LazyGit<cr>", desc = "Open LazyGit" },
    })
  end,
}
