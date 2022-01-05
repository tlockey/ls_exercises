=begin
- input: an integer 'n', which will be the last number in a fibonacci sequence
- output: the fibonnaci number in the sequence, but through a recursive method

what fibonacci numbers are
sum of the previous two numbers in the series beginning with 1

so if n is 1, it's 1, if n is 2, it's 1 + 1
if n is 3, its 2 + 1

=end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n-1) + fibonacci(n-2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
