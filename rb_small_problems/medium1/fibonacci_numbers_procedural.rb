=begin
write a procedural solution for the fibonacci method

i think i can use loops
n = 5
loop do
sum = (n-1) + ()
n = 1
1 n = 2
return 2
if n 3
  return 3
  if n 4
    return 5 n-1
0 + 1 = 1 
1 + 1 = 2 
2 + 1 = 3 
3 + 2 = 5
5 + 3 = 8
8 + 5 = 12

=end

def fibonacci(n)
  first, last = [1, 1]
  3.upto(n) do
    first, last = [last, first + last]
  end
  last
end

p fibonacci(2)
p fibonacci(3)
p fibonacci(4)
p fibonacci(5) 
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) #=> 4202692702.....8285979669707537501
