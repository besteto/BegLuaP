--[[write a metamethod that makes the unary minus operator give a reversed copy of array]]--
Meta = {
	__unm = function(array)
		local reverseArr = {}
		for i = #array, 1, -1 do
			reverseArr[#reverseArr + 1] = array[i]
		end
		return reverseArr
	end
}


Arr = setmetatable({"one", "two", "three"}, Meta)
for i, Val in ipairs(-Arr) do
	print(i, Val)
end