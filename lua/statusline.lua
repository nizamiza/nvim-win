local utils = require("utils")

-- Source:
-- https://www.reddit.com/r/neovim/comments/uz3ofs/heres_a_function_to_grab_the_name_of_the_current/
-- Credit goes to the user: HarmonicAscendant

local statusline_augroup = vim.api.nvim_create_augroup("statusline", {})

vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "FocusGained" }, {
  desc = "Get current Git branch",
  callback = function()
    if vim.fn.isdirectory(".git") ~= 0 then
      local branch = vim.fn.system("git branch --show-current"):gsub("\n", "")

      if branch ~= nil then
        utils.set_global_option("git_branch_name", " " .. branch .. " ")
      end
    else
      utils.set_global_option("git_branch_name", " ")
    end
  end,
  group = statusline_augroup,
})

function GetStatusLine()
  local branch = vim.g.git_branch_name or ""
  return branch .. "%f %r %m %= %y %l/%L %p%% %c "
end

-- Set the statusline
utils.set_option("statusline", "%{%v:lua.GetStatusLine()%}")
