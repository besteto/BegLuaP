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