---@meta

---@class BarLuaShader
---@field [string] any
local BarLuaShader = {}

function BarLuaShader:Activate() end

function BarLuaShader:Deactivate() end

---@param name string
---@param ... number|boolean
function BarLuaShader:SetUniform(name, ...) end

---@param name string
---@param ... integer
function BarLuaShader:SetUniformInt(name, ...) end

---@return boolean
function BarLuaShader:Initialize() end

function BarLuaShader:Finalize() end
