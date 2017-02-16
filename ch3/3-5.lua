--[[
The following MakeDotter function is intended to return a function that appends N dots to its argument (and returns the result). 
It almost works, but every time it’s used to make a new dotter function, the old ones stop working right. 
Why does this happen, and what one-line change can be made to make it work right?
]]--

function MakeDotter(N)
	local Dots = ""
	for I = 1, N do
		Dots = Dots .. "."
	end
	return function(Str)
		return Str .. Dots
	end
end

OneDotter = MakeDotter(1)
print(OneDotter("A"))

print(OneDotter("B"))

ThreeDotter = MakeDotter(3)
print(ThreeDotter("C"))

print(ThreeDotter("D"))

print(ThreeDotter("E"))