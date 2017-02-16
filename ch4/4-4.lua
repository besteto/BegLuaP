[[
In ring.lua, the RotateL method only rotates its object one element to the left
Rewrite it to take an optional numeric argument (defaulting to 1) and rotate the object by that many elements. 
(This requires neither a loop nor recursion.)
]]

function Methods:RotateL(numb)
	numb = numb or 1
	if #self > 0 then
		self.Pos = OneMod(self.Pos + numb, #self)
	end
end
