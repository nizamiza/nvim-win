return {
  "ThePrimeagen/harpoon",
  config = function()
    local nav_keymaps = {}

    for index, key in ipairs({ "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" }) do
      table.insert(nav_keymaps, {
        {
          "<leader>h" .. key,
          "<cmd>lua require('harpoon.ui').nav_file(" .. index .. ")<cr>",
          desc = "Navigate to Harpoon mark " .. index,
        },
      })
    end

    require("utils").add_keymaps({
      vim.tbl_extend("force", {
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
      }, nav_keymaps),
    })
  end,
}
