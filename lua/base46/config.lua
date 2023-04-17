local M = {}

local defaults = {
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme = "onedark", -- default theme
  transparency = false,
}

M.options = {}

M.setup = function(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

M.setup()

return M
