---@meta

-- Callin type overrides to accept BAR's routing extra args pattern.
-- BAR passes internal routing strings (e.g. "UnitFinished", "UnitGiven") as extra
-- args through callins. Lua silently ignores them, but LuaLS warns about arity.
-- Adding `...: any` makes these pass type checking.

---@class Callins
---@field UnitCreated? fun(self, unitID: integer, unitDefID: integer, unitTeam: integer, builderID: integer?, ...: any)
---@field UnitDestroyed? fun(self, unitID: integer, unitDefID: integer, unitTeam: integer, attackerID: integer?, attackerDefID: integer?, attackerTeam: integer?, weaponDefID: integer?, ...: any)
---@field UnitGiven? fun(self, unitID: integer, unitDefID: integer, newTeam: integer, oldTeam: integer, ...: any)
---@field UnitTaken? fun(self, unitID: integer, unitDefID: integer, newTeam: integer, oldTeam: integer, ...: any)
---@field GameFrame? fun(self, frame: integer, ...: any)
---@field PlayerChanged? fun(self, playerID: integer, ...: any)
---@field ViewResize? fun(self, viewSizeX: integer, viewSizeY: integer, ...: any)
---@field UnitFinished? fun(self, unitID: integer, unitDefID: integer, unitTeam: integer, ...: any)
---@field FeatureCreated? fun(self, featureID: integer, allyTeamID: integer, ...: any)
---@field FeatureDestroyed? fun(self, featureID: integer, allyTeamID: integer|boolean?, ...: any)
local Callins = {}

---@param utf8 string
---@param ... any
---@return boolean|?
function Callins:TextInput(utf8, ...) end

---@param x number
---@param y number
---@param dx number
---@param dy number
---@param button number
---@param ... any
---@return boolean|?
function Callins:MouseMove(x, y, dx, dy, button, ...) end

---@param x number
---@param y number
---@param button number
---@param ... any
---@return boolean|?
function Callins:MousePress(x, y, button, ...) end

---@param x number
---@param y number
---@param button number
---@param ... any
---@return boolean|integer
function Callins:MouseRelease(x, y, button, ...) end
