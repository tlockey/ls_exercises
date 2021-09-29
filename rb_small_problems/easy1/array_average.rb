=begin
input: an array with integers
output: average of all integers
rules: array will never be empty
       integers will always be positive
=end

def average(array)
  array.sum.to_f / array.size
end

puts average([1, 6]) 
puts average([1, 5, 87, 45, 8, 8]) 
puts average([9, 47, 23, 95, 16, 52]) 
