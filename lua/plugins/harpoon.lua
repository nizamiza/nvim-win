return {
  "ThePrimeagen/harpoon",
  config = function()
    local keymaps = {
      { "<leader>h",  group = "harpoon" },
      {
        "<leader>hl",
        "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
        desc = "Toggle Harpoon menu",
      },
      { "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Harpoon the current file" },
      {
        "<ledaer>hp",
        "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
        desc = "Navigate to previous Harpoon mark",
      },
      {
        "<leader>hn",
        "<cmd>lua require('harpoon.ui').nav_next()<cr>",
        desc = "Navigate to next Harpoon mark",
      },
    }

    for index = 1, 9 do
      table.insert(keymaps, {
        {
          "<leader>h" .. index,
          "<cmd>lua require('harpoon.ui').nav_file(" .. index .. ")<cr>",
          desc = "Navigate to Harpoon mark " .. index,
        },
      })
    end

    require("utils").add_keymaps(keymaps)
  end,
}
