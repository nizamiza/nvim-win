local utils = require("utils")

local leader = " "

utils.set_global_option("mapleader", leader)
utils.set_global_option("maplocalleader", leader)

local textwidth = 128

utils.set_options({
  clipboard = "unnamedplus",
  number = true,
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  colorcolumn = tostring(textwidth),
  textwidth = textwidth,
  cursorline = true,
  wrap = false,
  mouse = "a",
  undofile = true,
  undodir = vim.fn.stdpath("data") .. "/undo",
  swapfile = false,
  hlsearch = true,
  incsearch = true,
  ignorecase = true,
  smartcase = true,
  updatetime = 50,
  timeoutlen = 100,
  scrolloff = 10,
  spell = true,
  spelllang = "en_us",
})
