--[[
The TrimRight function given in this chapter trims off trailing whitespace. 
Write its counterpart: TrimLeft, a function that trims leading whitespace.
]]--

function TrimLeft(str)
  return (string.gsub(str, "^%s+", ""))
end