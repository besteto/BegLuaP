[[
By default, table.sort uses < to compare array elements, so it can only sort arrays of numbers or arrays of strings. 
Write a comparison function that allows table.sort to sort arrays of mixed types. 
In the sorted array, all values of a given type should be grouped together. 
Within each such group, numbers and strings should be sorted as usual, and other types should be sorted in some arbitrary but consistent way
]]

compareAll = function(A, B)
	if type(A) ~= type(B) then
		A, B = type(A), type(B)
	elseif type(A) ~= "number" and type(A) ~= "string" then
		A, B = tostring(A), tostring(B)
	end
	return A < B
end

testTable = {{}, {}, {}, "", "a", "b", "c", 1, 2, 3, -100, 1.1, function() end, function() end, false, false, true}
table.sort( testTable, compareAll )

for key, val in pairs(testTable) do
    print(key.." : "..tostring(val))
end