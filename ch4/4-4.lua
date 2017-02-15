
function Methods:RotateL(numb)
	numb = numb or 1
	if #self > 0 then
		self.Pos = OneMod(self.Pos + numb, #self)
	end
end
