local img_previewer = { "chafa", "{file}", "--format=symbols" }

return {
  "ibhagwan/fzf-lua",
  cmd = "FzfLua",
  opts = {
    winopts = {
      preview = {
        layout = "vertical",
      },
    },
    previewers = {
      builtin = {
        extensions = {
          ["png"] = img_previewer,
          ["jpg"] = img_previewer,
          ["jpeg"] = img_previewer,
          ["gif"] = img_previewer,
          ["svg"] = img_previewer,
          ["webp"] = img_previewer,
        },
      },
    },
  },
  keys = {
    { "<leader>f", "<cmd>FzfLua files<cr>", desc = "Find file" },
    { "<leader>o", "<cmd>FzfLua oldfiles<cr>", desc = "Recently opened" },
    { "<leader>R", "<cmd>FzfLua resume<cr>", desc = "Resume last search" },
    { "<leader>b", "<cmd>FzfLua buffers<cr>", desc = "List buffers" },
    { "<leader>j", "<cmd>FzfLua jumps<cr>", desc = "Jumplist" },
    { "<leader>/", "<cmd>FzfLua live_grep<cr>", desc = "Grep string" },
    { "<leader>Y", "<cmd>FzfLua search_history<cr>", desc = "Search history" },
    { "<leader>m", "<cmd>FzfLua marks<cr>", desc = "Marks" },
  },
}
