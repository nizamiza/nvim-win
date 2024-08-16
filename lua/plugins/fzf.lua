return {
  "ibhagwan/fzf-lua",
  config = true,
  opts = {
    winopts = {
      preview = {
        layout = "vertical",
      },
    },
  },
  keys = {
    { "<leader>f", "<cmd>FzfLua files<cr>",          desc = "Find file" },
    { "<leader>o", "<cmd>FzfLua oldfiles<cr>",       desc = "Recently opened" },
    { "<leader>R", "<cmd>FzfLua resume<cr>",         desc = "Resume last search" },
    { "<leader>b", "<cmd>FzfLua buffers<cr>",        desc = "List buffers" },
    { "<leader>j", "<cmd>FzfLua jumps<cr>",          desc = "Jumplist" },
    { "<leader>/", "<cmd>FzfLua live_grep<cr>",      desc = "Grep string" },
    { "<leader>Y", "<cmd>FzfLua search_history<cr>", desc = "Search history" },
    { "<leader>m", "<cmd>FzfLua marks<cr>",          desc = "Marks" },
  },
}
