return {
  "folke/flash.nvim",
  config = function()
    local function flash(cmd)
      return function()
        require("flash")[cmd]()
      end
    end

    require("utils").add_keymaps({
      { "s",     flash("jump"),              desc = "Flash",               mode = { "n", "x", "o" } },
      { "S",     flash("treesitter"),        desc = "Flash Treesitter",    mode = { "n", "x", "o" } },
      { "r",     flash("remote"),            desc = "Remote Flash",        mode = "o" },
      { "R",     flash("treesitter_search"), desc = "Treesitter search",   mode = { "x", "o" } },
      { "<c-s>", flash("toggle"),            desc = "Toggle Flash search", mode = "c" },
    })
  end,
}
