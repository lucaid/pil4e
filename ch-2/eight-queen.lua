-- Eight Queens example from Chapter 2 of Programming in Lua 4th ed

local N = 8   -- board size
local sol = 0 -- solution number

-- check whtether position (n,c) is free from attack
local function isplaceok (a, n, c)
  for i = 1, n - 1 do   -- for each queen already placed
    if (a[i] == c) or               -- same comumn?
      (a[i] - i == c - n) or        -- same diagonal?
      (a[i] + i == c + n) then      -- same diagonal?
      return false      -- piece can be attacked
    end
  end
  return true           -- no attacks, place is ok
end

-- print a board
local function printsolution (a)
  for i = 1, N do       -- for each row
    for j = 1, N do     -- and for each column
      -- write "x" or "-" plus a space
      io.write(a[i] == j and "Q" or "~", " ")
    end
    io.write("\n")
  end
  io.write("\n")
end

-- add to board 'a' all queens from 'n' to 'N'
local function addqueen (a, n)
  if n > N then     -- all queens placed?
    sol = sol + 1       -- begin my code
    io.write("Solution "..sol)
    io.write("\n")      -- end my code
    printsolution(a)
  else -- try to place nth queen
    for c = 1, N do
      if isplaceok(a, n, c) then
        a[n] = c -- place nth queen at column 'c'
        addqueen(a, n + 1)
      end
    end
  end
end

  -- run the program
addqueen({}, 1)
