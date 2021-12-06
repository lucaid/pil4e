-- final iteration of rounding function on pg 22 of Programing in Lua 4th ed.

function round (x)
  local f = math.floor(x)
  if (x == f) or (x % 2.0 == 0.5) then -- checks if x is already an integer, or x+.5 is an odd integer
    return f
  else
    return math.floor(x + 0.5) -- only works if x+.5 is even
  end
end
