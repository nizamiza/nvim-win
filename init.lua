require("options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = { { import = "plugins" } },
  checker = {
    enabled = false,
    notify = true,
    frequency = 86400,
  },
  change_detection = {
    enabled = true,
    notify = false,
  },
})

-- Load the rest of the configuration
require("colorscheme")
require("keymaps")
require("statusline")
require("user_commands")
