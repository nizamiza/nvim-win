return {
  "tris203/precognition.nvim",
  keys = {
    { "<leader>c",  group = "precognition" },
    { "<leader>ct", "<cmd>lua require('precognition').toggle()<cr>", desc = "Toggle precognition" },
    { "<leader>cp", "<cmd>lua require('precognition').peek()<cr>",   desc = "Peek precognition" },
  },
}
