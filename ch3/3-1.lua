[[
Write a TypedToString function that converts a value to a string and prefixes that string with the value's type. 
(You don't have to deal specially with the fact that a function converted to a string already has its type prefixed to it)
]]

function TypedToString(typed)
	return type(typed) .. ": " .. tostring(typed)
end

print(TypedToString("abc"))
print(TypedToString(42))
print(TypedToString(true))
print(TypedToString(function() end))