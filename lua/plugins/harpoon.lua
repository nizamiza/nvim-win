local keys = {
  {
    "<leader>h",
    "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
    desc = "Toggle Harpoon menu",
  },
  { "<leader>p", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Harpoon the current file" },
}

for index = 1, 9 do
  table.insert(keys, {
    "<leader>" .. index,
    "<cmd>lua require('harpoon.ui').nav_file(" .. index .. ")<cr>",
    desc = "Navigate to Harpoon mark " .. index,
  })
end

return {
  "ThePrimeagen/harpoon",
  opts = {},
  keys = keys,
}
