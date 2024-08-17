return {
  "lewis6991/gitsigns.nvim",
  event = { "BufRead", "BufNewFile" },
  opts = {
    current_line_blame = true,
    current_line_blame_opts = {
      delay = 750,
    },
  },
}
