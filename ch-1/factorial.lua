-- defines a factorial function
local function fact (n)
  if n == 0 then
    return 1
  elseif n > 0 then
    return n * fact(n-1)
  elseif n < 0 then
    return n * fact(n+1)
  end
end

print("enter a number:")
local a = io.read("*n") -- reads a number
print(fact(a))
