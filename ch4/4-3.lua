function Sprint(...)
	local Args = {...}
	local ArgCount = select("#", ...)
	for i = 1, ArgCount do
		Args[i] = tostring(Args[i])
	end
	return table.concat(Args, "\t") .. "\n"
end

print(Sprint("Hi", {}, nil))