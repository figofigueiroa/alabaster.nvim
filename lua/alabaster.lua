-- Alabaster colorscheme for Neovim
-- A minimal dark colorscheme

local M = {}

-- Setup function for Neovim configuration
function M.setup(opts)
  opts = opts or {}
  
  -- You can add configuration options here in the future
  -- For now, we just apply the colorscheme
  vim.cmd('colorscheme alabaster')
end

-- Load the colorscheme
function M.load()
  vim.cmd('colorscheme alabaster')
end

return M
