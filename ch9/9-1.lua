local function F()
	local J, K = 0, 1
	coroutine.yield(J)
	coroutine.yield(K)
	while true do
		J, K = K, J + K
		coroutine.yield(K)
	end
end

F = coroutine.wrap(F)

for J = 1, 8 do
	print(F())
end