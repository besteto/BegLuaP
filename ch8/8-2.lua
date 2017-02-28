--[[write a function that makes the table given to it read-only]]--

function Protect(Tbl)
	local origTable = {}
  	for Key, Val in pairs(Tbl) do
	    origTable[Key] = Val
	    Tbl[Key] = nil
  	end

  	local protectMeta = {
	    __newindex = function()
	      error("attempt to assign to a protected table")
	    end,
	    __index = origTable,
	    __metatable = true}
  	return setmetatable(Tbl, protectMeta)

end


Tbl = {"Hello"}
Protect(Tbl)
print(Tbl[1])

Tbl[2] = "GoodBye"