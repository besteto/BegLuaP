--[[
The print function converts all its arguments to strings, separates them with tab characters, and outputs them, along with a trailing newline. 
Write a function that, instead of giving that as output, returns it as a string
]]--

function Sprint(...)
	local Args = {...}
	local ArgCount = select("#", ...)
	for i = 1, ArgCount do
		Args[i] = tostring(Args[i])
	end
	return table.concat(Args, "\t") .. "\n"
end

print(Sprint("Hi", {}, nil))