--[[
Write a function that starts up a subinterpreter that prints a prompt, reads a line, 
and prints the result(s) of evaluating the expression(s) typed onto that line. 
Typing a line with nothing but the word “quit” should exit the subinterpreter.
]]--

function ExprInterp()
	io.write("expression> ")
	local Line = io.read()
	while Line and Line ~= "quit" do
		Line = "return " .. Line
		local Fnc = loadstring(Line)
		print(Fnc())
		io.write("expression> ")
		Line = io.read()
	end
end
