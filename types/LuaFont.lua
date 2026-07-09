---@meta

--- Engine font object from `gl.LoadFont` (subset for LuaUI/LuaRules).

---@class LuaFont
---@field [string] any
local LuaFont = {}

---@param userDefinedBlending? boolean
function LuaFont:Begin(userDefinedBlending) end

function LuaFont:End() end

---@param text string
---@param x number
---@param y number
---@param size? number
---@param options? string
function LuaFont:Print(text, x, y, size, options) end

---@param text string
---@param x number
---@param y number
---@param z number
---@param size? number
---@param options? string
function LuaFont:PrintWorld(text, x, y, z, size, options) end

---@param color table|number
---@param g? number
---@param b? number
---@param a? number
function LuaFont:SetTextColor(color, g, b, a) end

---@param color table|number
---@param g? number
---@param b? number
---@param a? number
function LuaFont:SetOutlineColor(color, g, b, a) end

---@param text string
---@return number
function LuaFont:GetTextWidth(text) end

---@param text string
---@return number
---@return number
---@return number
function LuaFont:GetTextHeight(text) end

---@param text string
---@param maxwidth number
---@param maxHeight? number
---@param size? number
---@return string
---@return number
function LuaFont:WrapText(text, maxWidth, maxHeight, size) end
