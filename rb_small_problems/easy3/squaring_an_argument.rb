=begin
write a method that computes the square of its argument using the multiply
method from multiplying_two_numbers.rb
=end

def multiply(n1, n2)
  n1 * n2
end

def square(n)
  multiply(n, n)
end

p square(5) == 25
p square(-8) == 64
