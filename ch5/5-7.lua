--[[
Write an Interpolate function that replaces dollar signs followed by identifiers with the value
of the named global variable.
]]--

function Interpolate(str)
	return (string.gsub(str, "%$([%a_][%w_]*)",
	function(ident)
		return tostring(getfenv()[ident])
	end))
end


Where, Who, What = "in xanadu", "kubla khan", "a stately pleasure-dome"
print(Interpolate("$Where did $Who\n$What decree"))