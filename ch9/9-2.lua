local function JoinPairs(arrA, arrB)
	local function Iter()
		  local i = 1
		  local AName, BNumber = arrA[i], arrB[i]
		  while AName ~= nil and BNumber ~= nil do
		    coroutine.yield(AName, BNumber)
		    i = i + 1
		    AName, BNumber = arrA[i], arrB[i]
		  end
  	end
  	return coroutine.wrap(Iter)
end

for  Name, Number in JoinPairs({"Sally", "Mary", "James"}, {12, 32, 7}) do
  print(Name, Number)
end
