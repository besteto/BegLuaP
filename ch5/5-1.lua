--[[
Write a function that takes an n-character string and returns an n-element array whose elements are the string’s characters (in order).
]]--

function strToArr(str)
  local arrOfStr = {}
  for i = 1, #str do
    arrOfStr[i] = string.sub(str, i, i)
  end
  return arrOfStr
end

testString = "r u my mummy?"

for key, val in pairs(strToArr(testString)) do
    print(key.." : "..tostring(val))
end