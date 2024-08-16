return {
  "ThePrimeagen/harpoon",
  opts = {},
  keys = {
    {
      "<leader>h",
      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
      desc = "Toggle Harpoon menu",
    },
    { "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Harpoon the current file" },
    {
      "<leader>1",
      "<cmd>lua require('harpoon.ui').nav_file(1)<cr>",
      desc = "Navigate to Harpoon mark 1",
    },
    {
      "<leader>2",
      "<cmd>lua require('harpoon.ui').nav_file(2)<cr>",
      desc = "Navigate to Harpoon mark 2",
    },
    {
      "<leader>3",
      "<cmd>lua require('harpoon.ui').nav_file(3)<cr>",
      desc = "Navigate to Harpoon mark 3",
    },
    {
      "<leader>4",
      "<cmd>lua require('harpoon.ui').nav_file(4)<cr>",
      desc = "Navigate to Harpoon mark 4",
    },
    {
      "<leader>5",
      "<cmd>lua require('harpoon.ui').nav_file(5)<cr>",
      desc = "Navigate to Harpoon mark 5",
    },
    {
      "<leader>6",
      "<cmd>lua require('harpoon.ui').nav_file(6)<cr>",
      desc = "Navigate to Harpoon mark 6",
    },
    {
      "<leader>7",
      "<cmd>lua require('harpoon.ui').nav_file(7)<cr>",
      desc = "Navigate to Harpoon mark 7",
    },
    {
      "<leader>8",
      "<cmd>lua require('harpoon.ui').nav_file(8)<cr>",
      desc = "Navigate to Harpoon mark 8",
    },
    {
      "<leader>9",
      "<cmd>lua require('harpoon.ui').nav_file(9)<cr>",
      desc = "Navigate to Harpoon mark 9",
    },
  },
}
