vim.keymap.set("n", "q", "<nop>", { noremap = true })

require("utils").add_keymaps({
  { "<esc>",      "<cmd>noh<cr>",                desc = "Cancel search highlighting" },
  { "<c-l>",      "<c-u>zz",                     desc = "Scroll half a page up" },
  { "<c-h>",      "<c-d>zz",                     desc = "Scroll half a page down" },

  { "<leader>O",  "<cmd>DeleteOtherBuffers<cr>", desc = "Delete other buffers" },

  { "<leader>t",  group = "toggle" },
  { "<leader>tw", "<cmd>set wrap!<cr>",          desc = "Toggle soft wrap" },

  { "<leader>l",  "<cmd>Lazy<cr>",               desc = "Open Lazy" },
})
