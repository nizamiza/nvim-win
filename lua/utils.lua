local M = {}

---@param key string
---@param value any
function M.set_option(key, value)
  vim.opt[key] = value
end

---@param options table<string, any>
function M.set_options(options)
  for key, value in pairs(options) do
    M.set_option(key, value)
  end
end

---@param key string
---@param value any
function M.set_global_option(key, value)
  vim.g[key] = value
end

---@param keymaps table<string, any>
function M.add_keymaps(keymaps)
  require("which-key").add(keymaps)
end

return M
