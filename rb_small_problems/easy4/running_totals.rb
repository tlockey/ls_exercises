=begin
input: an array of integers
output: array same number of elements, with running total from original

- iterate over each integer in array, 
- adding to the sum and returning the sum on each iteration
=end

def running_total(array)
  sum = 0
  array.map do |number|
    sum += number
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
