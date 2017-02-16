--[[
Write a comparison function that allows table.sort to sort in “dictionary order.” 
Specifically, case distinctions and any characters other than letters or numbers should be ignored, 
unless they are the only ways in which two strings differ.
]]--

function DictCmp(A, B)
	local fA = string.lower(string.gsub(A, "%W+", ""))
	local fB = string.lower(string.gsub(B, "%W+", ""))
	if fA ~= fB then
		return fA < fB
	else
		return A < B
	end
end

Names = {"Defoe", "Deforest", "Degas", "de Forest"}
table.sort(Names,DictCmp)

for _, Name in ipairs(Names) do
	print(Name)
end