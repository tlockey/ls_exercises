=begin
input: an upper limit number (integer)
output: an integer that is the sum of the multiples of 3 and 5 from 1 to limit

- starting from 1, up to the upper limit, check if each number is either
  divisible by 3 or 5, and if so, put into a multiples array
- add all elements in array together
=end

def multisum(upper_limit)
  multiples = []
  1.upto(upper_limit) do |number|
    multiples << number if number % 5 == 0 || number % 3 == 0 
  end
  multiples.inject('+')
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
