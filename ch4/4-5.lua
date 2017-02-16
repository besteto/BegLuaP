--[[
Write a stateful iterator generator, SortedPairs, that behaves just like pairs, except that it goes through key-value pairs in order by key. 
Use the CompAll function from exercise 2 to sort the keys.
]]--

function compareAll(A, B)
	if type(A) ~= type(B) then
		A, B = type(A), type(B)
	elseif type(A) ~= "number" and type(A) ~= "string" then
		A, B = tostring(A), tostring(B)
	end
	return A < B
end

function SortedPairs(tbl)
	local Sorted = {}
	for key in pairs(tbl) do
		Sorted[#Sorted + 1] = key
	end
	table.sort(Sorted, compareAll)
	local i = 0

	return function()
		i = i + 1
		local key = Sorted[i]
		return key, tbl[key]
	end
end

testTable = {{}, {}, {}, "", "a", "b", "c", 1, 2, 3, -100, 1.1, function() end, function() end, false, false, true}

for key, val in SortedPairs(testTable) do
    print(key.." : "..tostring(val))
end