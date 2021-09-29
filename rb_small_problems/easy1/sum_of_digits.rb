=begin
input: positive integer
output: sum of digits of integer
1. get integer
2. separate digits
3. add digits together
4. return sum
=end

def sum (integer)
  integer.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
