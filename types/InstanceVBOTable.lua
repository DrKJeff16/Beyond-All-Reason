---@meta

--- Instance VBO table from `gl.InstanceVBOTable` / `InstanceVBOTable.makeInstanceVBOTable`.
--- Single merged definition (see `modules/graphics/instancevbotable.lua` implementation).

---@class InstanceVBOTable
---@field instanceVBO VBO|any
---@field instanceData number[]
---@field instanceStep integer
---@field usedElements integer
---@field maxElements integer
---@field myName string
---@field instanceIDtoIndex table<any, integer>
---@field indextoInstanceID table<integer, any>
---@field indextoUnitID? table<integer, integer>
---@field unitIDattribID? integer
---@field layout table
---@field dirty boolean
---@field numVertices integer
---@field primitiveType integer
---@field VAO? VAO
---@field vertexVBO? VBO|any
---@field indexVBO? VBO|any
---@field debug? boolean
---@field [string] any
local InstanceVBOTable = {}

---@param vertexVBO? any
---@param instanceVBO? any
---@param indexVBO? any
---@return any
function InstanceVBOTable:makeVAOandAttach(vertexVBO, instanceVBO, indexVBO) end

function InstanceVBOTable:compact() end

function InstanceVBOTable:clearInstanceTable() end

function InstanceVBOTable:Draw() end

---@param primitiveType? integer
function InstanceVBOTable:draw(primitiveType) end

function InstanceVBOTable:Delete() end
