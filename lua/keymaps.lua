require("utils").add_keymaps({
  { "<esc>",            "<cmd>noh<cr>",                desc = "Cancel search highlighting" },
  { "<c-l>",            "<c-u>zz",                     desc = "Scroll half a page up" },
  { "<c-h>",            "<c-d>zz",                     desc = "Scroll half a page down" },

  { "<leader>f",        group = "file" },
  { "<leader>fn",       "<cmd>enew<cr>",               desc = "New file" },
  { "<leader>fs",       "<cmd>w<cr>",                  desc = "Save file" },
  { "<leader>fq",       "<cmd>q<cr>",                  desc = "Quit" },

  { "<leader>b",        group = "buffer" },
  { "<leader>bd",       "<cmd>bd<cr>",                 desc = "Delete buffer" },
  { "<leader>bp",       "<cmd>bp<cr>",                 desc = "Previous buffer" },
  { "<leader>bn",       "<cmd>bn<cr>",                 desc = "Next buffer" },
  { "<leader>bo",       "<cmd>DeleteOtherBuffers<cr>", desc = "Delete other buffers" },

  { "<leader>t",        group = "toggle" },
  { "<leader>tw",       "<cmd>set wrap!<cr>",          desc = "Toggle soft wrap" },

  { "<leader>w",        group = "window" },
  { "<leader>ws",       "<cmd>split<cr>",              desc = "Split window" },
  { "<leader>wv",       "<cmd>vsplit<cr>",             desc = "Vsplit window" },
  { "<leader>wc",       "<cmd>close<cr>",              desc = "Close window" },
  { "<leader>w<up>",    "<c-w><up>",                   desc = "Move to the top window" },
  { "<leader>w<right>", "<c-w><right>",                desc = "Move to the right window" },
  { "<leader>w<down>",  "<c-w><down>",                 desc = "Move to the bottom window" },
  { "<leader>w<left>",  "<c-w><left>",                 desc = "Move to the left window" },
})
