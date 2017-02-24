--[[The pcall function accepts arguments, and the xcall function accepts an error handler.
How can you write a protected function caller that accepts both arguments and en error handler? 
]]--

local function pxcall(printing, Err, ...)
  local Args = {...}
  local function Relay()
    return printing(unpack(Args))
  end
  return xpcall(Relay, Err)
end

-- Test

local function printing(A, B, C)
  print("Here in printing.", A, B, C)
  print(A + B + C)
end

print(pxcall(printing, debug.traceback, 1, nil, 3))
