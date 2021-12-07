=begin
input: array of numbers
output: sum of the sums of each element with the preceding elements
=end

def sum_of_sums(array)
  sum = 0
  1.upto(array.size) do |idx|
    sum += array[0..idx-1].inject(:+)
  end
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
