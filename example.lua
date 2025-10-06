-- Example Lua file to preview Alabaster colorscheme
-- This file demonstrates various syntax highlighting features

-- Comments are styled in a subtle way
local M = {}

-- String literals in green
local greeting = "Hello, Alabaster!"
local multiline = [[
  This is a multiline string
  with multiple lines
]]

-- Numbers and constants in cyan/magenta
local number = 42
local float = 3.14159
local hex = 0xFF
local CONSTANT = "VALUE"

-- Boolean values
local is_active = true
local is_disabled = false

-- Function definitions (bold white/red)
function M.setup(config)
  config = config or {}
  
  -- Keywords in blue
  if config.enable then
    print("Alabaster theme enabled")
  elseif config.disable then
    print("Theme disabled")
  else
    print("Default configuration")
  end
  
  -- Loop structures
  for i = 1, 10 do
    print("Iteration: " .. i)
  end
  
  while is_active do
    -- Break statement
    break
  end
  
  -- Repeat until
  repeat
    print("Repeat")
  until true
end

-- Table/array literals
local colors = {
  background = "#0e1415",
  foreground = "#cecece",
  red = "#d2322d",
  green = "#6abf40",
  blue = "#217EBC",
}

-- Object-oriented style
local ColorScheme = {}
ColorScheme.__index = ColorScheme

function ColorScheme:new(name)
  local instance = setmetatable({}, self)
  instance.name = name
  return instance
end

function ColorScheme:apply()
  vim.cmd("colorscheme " .. self.name)
end

-- Error handling with pcall
local success, result = pcall(function()
  return require("alabaster")
end)

if not success then
  error("Failed to load alabaster: " .. result)
end

-- Operators and special characters
local a = 10 + 20 - 5
local b = a * 2 / 4
local c = a % 3
local d = a ^ 2

-- Comparison operators
local compare = a == b or a ~= c and a > d

-- String operations
local concatenated = "Hello " .. "World"
local formatted = string.format("Number: %d", number)

-- Metatable operations
local mt = {
  __add = function(a, b)
    return a.value + b.value
  end,
  __tostring = function(self)
    return tostring(self.value)
  end
}

-- Return module
return M
