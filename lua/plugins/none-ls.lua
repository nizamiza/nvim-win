return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local null_ls = require("null-ls")
    local prettier = require("utils").is_windows() and "prettier" or "prettierd"

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting[prettier],
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
      },
    })
  end,
}
