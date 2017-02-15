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