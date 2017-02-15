function TypedToString(typed)
	return type(typed) .. ": " .. tostring(typed)
end

print(TypedToString("abc"))
print(TypedToString(42))
print(TypedToString(true))
print(TypedToString(function() end))